`timescale 1ns/1ps
// ============================================================
// Testbench for state_machine
// IHP Analog Academy style
// Purpose: verify SAR FSM behavior (digital-only)
// ============================================================

module state_machine_tb;

  // ----------------------------------------------------------
  // Inputs to DUT
  // ----------------------------------------------------------
  reg clk;
  reg rst_z;
  reg start;
  reg single_ended;
  reg en_offset_cal;
  reg comp_p;
  reg vin_p_sw_on;
  reg vin_n_sw_on;

  // ----------------------------------------------------------
  // Outputs from DUT
  // ----------------------------------------------------------
  wire [5:0] data;
  wire       clk_data;
  wire       sample_o;

  wire [10:0] vcm;
  wire [10:0] vref_z_p;
  wire [10:0] vref_z_n;
  wire [10:0] vss_p;
  wire [10:0] vss_n;

  wire vcm_dummy;
  wire en_vcm_sw;
  wire en_comp;
  wire offset_cal_cycle;
  wire en_offset_cal_o;

  // ----------------------------------------------------------
  // Internal feedback (as in real SAR)
  // ----------------------------------------------------------
  wire        en_vcm_sw_i;
  wire [10:0] vcm_i;

  assign en_vcm_sw_i = en_vcm_sw;
  assign vcm_i       = vcm;

  // ----------------------------------------------------------
  // DUT instantiation
  // ----------------------------------------------------------
  state_machine dut (
    .clk(clk),
    .rst_z(rst_z),
    .start(start),
    .single_ended(single_ended),
    .en_offset_cal(en_offset_cal),
    .comp_p(comp_p),
    .vin_p_sw_on(vin_p_sw_on),
    .vin_n_sw_on(vin_n_sw_on),
    .en_vcm_sw_o_i(en_vcm_sw_i),
    .vcm_o_i(vcm_i),
    .data(data),
    .clk_data(clk_data),
    .sample_o(sample_o),
    .vcm_o(vcm),
    .vref_z_p_o(vref_z_p),
    .vref_z_n_o(vref_z_n),
    .vss_p_o(vss_p),
    .vss_n_o(vss_n),
    .vcm_dummy_o(vcm_dummy),
    .en_vcm_sw_o(en_vcm_sw),
    .en_comp(en_comp),
    .offset_cal_cycle(offset_cal_cycle),
    .en_offset_cal_o(en_offset_cal_o)
  );

  // ----------------------------------------------------------
  // Clock generation (50 MHz)
  // ----------------------------------------------------------
  initial clk = 1'b0;
  always #10 clk = ~clk;

  // ----------------------------------------------------------
  // Fake comparator model (VERY IMPORTANT)
  // ----------------------------------------------------------
  // This emulates an analog comparator decision
  // so that SAR FSM actually progresses.
  always @(posedge clk or negedge rst_z) begin
    if (!rst_z)
      comp_p <= 1'b0;
    else if (en_comp)
      comp_p <= ~comp_p;   // toggle decision
  end

  // ----------------------------------------------------------
  // Test sequence
  // ----------------------------------------------------------
  initial begin
    // Dump waves
    $dumpfile("state_machine.vcd");
    $dumpvars(0, state_machine_tb);

    // ----------------------
    // Initial conditions
    // ----------------------
    rst_z          = 1'b0;
    start          = 1'b0;
    single_ended   = 1'b0;
    en_offset_cal  = 1'b1;
    vin_p_sw_on    = 1'b0;
    vin_n_sw_on    = 1'b0;
    comp_p         = 1'b0;

    // ----------------------
    // Release reset
    // ----------------------
    #100;
    rst_z = 1'b1;

    // ----------------------
    // Differential conversion
    // ----------------------
    #100;
    start = 1'b1;
    #40;
    start = 1'b0;

    // Wait for conversion
    #1500;

    // ----------------------
    // Single-ended conversion
    // ----------------------
    single_ended = 1'b1;

    #100;
    start = 1'b1;
    #40;
    start = 1'b0;

    // Wait
    #1500;

    // ----------------------
    // End simulation
    // ----------------------
    $finish;
  end

endmodule

