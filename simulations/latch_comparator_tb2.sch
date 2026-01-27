v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -920 -30 -920 0 {
lab=VDD}
N -80 -70 -80 -20 {lab=VDD}
N -80 120 -80 170 {lab=GND}
N -210 10 -150 10 {lab=vinp}
N -220 50 -150 50 {lab=clk}
N 30 30 120 30 {lab=outp}
N 30 70 120 70 {lab=outm}
N -220 90 -150 90 {lab=Vbias}
N -850 -20 -850 0 {
lab=Vbias}
N -920 60 -920 80 {
lab=GND}
N -880 80 -850 80 {
lab=GND}
N -730 -20 -730 0 {
lab=clk}
N -730 60 -730 90 {
lab=GND}
N -880 80 -880 90 {
lab=GND}
N -730 90 -520 90 {
lab=GND}
N -520 60 -520 90 {
lab=GND}
N -520 -20 -520 0 {
lab=vinp}
N -920 80 -880 80 {
lab=GND}
N -850 60 -850 80 {
lab=GND}
N -190 150 -190 170 {
lab=GND}
N 60 -40 60 -30 {
lab=GND}
N -180 -70 -180 -50 {
lab=GND}
N 60 130 60 140 {
lab=GND}
C {latched_comparator/latched_comparator.sym} -440 240 0 0 {name=x1}
C {devices/vsource.sym} -920 30 0 0 {name=V1 value=1.2}
C {devices/vdd.sym} -920 -30 0 0 {name=l15 lab=VDD}
C {devices/lab_wire.sym} -730 -20 0 1 {name=p33 sig_type=std_logic lab=clk}
C {devices/vdd.sym} -80 -70 0 0 {name=l1 lab=VDD}
C {devices/lab_wire.sym} -210 50 0 0 {name=p1 sig_type=std_logic lab=clk}
C {devices/gnd.sym} -80 170 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} 90 30 0 1 {name=p2 sig_type=std_logic lab=outp}
C {devices/lab_wire.sym} 90 70 0 1 {name=p3 sig_type=std_logic lab=outm}
C {devices/code_shown.sym} -1070 -510 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.include $PDK_ROOT/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {vsource.sym} -850 30 0 0 {name=V5 value="DC 1"}
C {gnd.sym} -620 90 0 0 {name=l6 lab=GND}
C {vsource.sym} -730 30 0 0 {name=V6 value="PULSE(0 1.2 0 1n 1n 5n 100n)"}
C {gnd.sym} -880 90 0 0 {name=l7 lab=GND}
C {vsource.sym} -520 30 0 0 {name=V8 value="DC 1.05"}
C {lab_pin.sym} -520 -20 2 0 {name=p7 sig_type=std_logic lab=vinp}
C {lab_pin.sym} -210 10 2 1 {name=p4 sig_type=std_logic lab=vinp}
C {devices/lab_wire.sym} -220 90 0 0 {name=p5 sig_type=std_logic lab=Vbias}
C {capa.sym} -190 120 0 0 {name=C1
m=1
value=6.4p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -190 170 0 0 {name=l2 lab=GND}
C {capa.sym} 60 0 2 0 {name=C4
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 60 -40 2 0 {name=l3 lab=GND}
C {capa.sym} -180 -20 2 0 {name=C2
m=1
value=6.4p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -180 -70 2 0 {name=l5 lab=GND}
C {capa.sym} 60 100 0 0 {name=C3
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 60 140 0 0 {name=l8 lab=GND}
C {devices/code_shown.sym} 345 -670 0 0 {name=NGSPICE1 only_toplevel=false 
value="
.param temp=27
.param clock = 100e6       ; 100 MHz clock
.param period = \{1/clock\}
.param num_cycles = 100
.param tr = \{num_cycles * period\}

.control
save all
* Operating point simulation
op

set appendwrite

* Transient analysis
.options meas_step_max=1e-10
tran 500p 1u
let vindiff = v(vinp) - v(vbias)
let clk = v(clk)
let vout = v(outp) - v(outm)

meas TRAN rise_time TRIG v(outp) VAL=0.12  TD=9n RISE=4 TARG v(outp) VAL=1.08 TD=9n RISE=4
meas TRAN fall_time TRIG v(outp) VAL=1.08  TD=9n RISE=4 TARG v(outp) VAL=0.12 TD=9n RISE=4


.endc
"}
C {devices/lab_wire.sym} -850 -20 0 1 {name=p6 sig_type=std_logic lab=Vbias}
