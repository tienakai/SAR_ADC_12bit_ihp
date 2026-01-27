module state_machine(
    input clk,
    input rst_z,
    input start,
    input single_ended,
    input en_offset_cal,
    input comp_p,
    input vin_p_sw_on,
    input vin_n_sw_on,
    input en_vcm_sw_o_i,
    input [10:0] vcm_o_i,

    output [5:0] data,
    output clk_data,
    output sample_o,
    output reg [10:0] vcm_o,
    output reg [10:0] vref_z_p_o,
    output reg [10:0] vref_z_n_o,
    output reg [10:0] vss_p_o,
    output reg [10:0] vss_n_o,
    output reg vcm_dummy_o,
    output reg en_vcm_sw_o,
    output reg en_comp,
    output reg offset_cal_cycle,
    output reg en_offset_cal_o
);

    // =====================================================
    // INTERNAL DECLARATIONS (REQUIRED FOR IVERILOG)
    // =====================================================

    reg [1:0] state;
    parameter idle = 2'd0, sample = 2'd1, convert = 2'd2;

    reg counter_sample;
    reg single_ended_reg;
    reg [11:0] counter;
    reg [11:0] result;

    reg allow_vcm_sw;
    reg [10:0] allow_vref_sw;

    integer i;
    wire [11:0] en_dac_out;

    // =====================================================
    // FSM
    // =====================================================

    always @(posedge clk or negedge rst_z) begin
        if (!rst_z)
            state <= idle;
        else case (state)
            idle:    state <= start ? sample : idle;
            sample:  state <= counter_sample ? convert : sample;
            convert: state <= ((counter == 12'hFFF && ~single_ended_reg) ||
                               (counter == 12'hFFE &&  single_ended_reg)) ? idle : convert;
            default: state <= idle;
        endcase
    end

    // =====================================================
    // SAMPLE COUNTER
    // =====================================================

    always @(posedge clk or negedge rst_z) begin
        if (!rst_z)
            counter_sample <= 1'b0;
        else if (state != sample)
            counter_sample <= 1'b0;
        else
            counter_sample <= ~counter_sample;
    end

    // =====================================================
    // LATCH SINGLE ENDED
    // =====================================================

    always @(posedge clk or negedge rst_z) begin
        if (!rst_z)
            single_ended_reg <= 1'b0;
        else if (state == idle)
            single_ended_reg <= single_ended;
    end

    // =====================================================
    // SAR COUNTER
    // =====================================================

    always @(posedge clk or negedge rst_z) begin
        if (!rst_z)
            counter <= 12'b0;
        else if (state == idle || state == sample)
            counter <= 12'b0;
        else if (state == convert) begin
            counter <= counter >> 1;
            counter[11] <= 1'b1;
        end
    end

    assign en_dac_out = (~counter) & (12'h800 + (counter >> 1));

    // =====================================================
    // SAR RESULT
    // =====================================================

    always @(posedge clk or negedge rst_z) begin
        if (!rst_z)
            result <= 12'd0;
        else if (state == sample)
            result <= 12'd0;
        else if (state == convert) begin
            if (single_ended_reg) begin
                for (i = 0; i < 11; i = i + 1)
                    result[i] <= en_dac_out[i+1] ? comp_p : result[i];
                result[11] <= 1'b0;
            end else begin
                for (i = 0; i < 12; i = i + 1)
                    result[i] <= en_dac_out[i] ? comp_p : result[i];
            end
        end
    end

    // =====================================================
    // OUTPUT LOGIC
    // =====================================================

    assign sample_o = ((state == sample) | en_vcm_sw_o_i) & ~counter[11] & (state != idle);
    assign clk_data = counter[5] & (state == convert);
    assign data     = counter[4] ? ~result[5:0]
                                 : {~(result[11] | single_ended_reg), ~result[10:6]};

    always @(*) begin
        en_offset_cal_o = rst_z & en_offset_cal;
        allow_vcm_sw    = ~(vin_p_sw_on | vin_n_sw_on);
        vcm_dummy_o     = (state == convert) & allow_vcm_sw;

        if (single_ended_reg) begin
            en_comp          = ~clk & (state == convert) & ~(~en_offset_cal & counter[1]);
            offset_cal_cycle = counter[1] & en_offset_cal;
            vcm_o            = 11'd0;
            vref_z_p_o       = result[10:0] | (~allow_vref_sw);
            vref_z_n_o       = 11'h7FF;
            vss_p_o          = (result[10:0] | (~allow_vref_sw)) & {11{(state==convert)&allow_vcm_sw}};
            vss_n_o          = {11{(state==convert)&allow_vcm_sw}};
            en_vcm_sw_o      = (counter[1] & (state==convert)) | (state==sample);
            allow_vref_sw    = {11{(state==convert)&allow_vcm_sw}} & {1'b1,counter[11:2]};
        end else begin
            en_comp          = ~clk & (state == convert) & ~(~en_offset_cal & counter[0]);
            offset_cal_cycle = counter[0] & en_offset_cal;
            vcm_o            = ~(counter[11:1] | {11{~((state==convert)&allow_vcm_sw)}});
            vref_z_p_o       = result[11:1] | (~allow_vref_sw);
            vref_z_n_o       = (~result[11:1]) | (~allow_vref_sw);
            vss_p_o          = result[11:1] & allow_vref_sw;
            vss_n_o          = (~result[11:1]) & allow_vref_sw;
            en_vcm_sw_o      = (counter[0] & (state==convert)) | (state==sample);
            allow_vref_sw    = (~vcm_o_i) & counter[11:1];
        end
    end

endmodule

