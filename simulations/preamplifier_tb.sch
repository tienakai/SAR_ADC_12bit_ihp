v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 960 -550 1040 -550 {
lab=RST_Z}
N 1120 -450 1120 -410 {
lab=VSS}
N 1080 -720 1080 -650 {
lab=VDD}
N 1120 -760 1120 -650 {
lab=CAL_P}
N 1160 -730 1160 -650 {
lab=CAL_N}
N 1220 -570 1320 -570 {
lab=OUT_P}
N 1220 -530 1320 -530 {
lab=OUT_N}
N 860 -590 1040 -590 {
lab=VIN_P}
N 860 -510 1040 -510 {
lab=VIN_N}
N 440 -530 440 -510 {
lab=#net1}
N 620 -530 620 -510 {
lab=#net2}
N 1310 -960 1310 -940 {
lab=GND}
N 1310 -1040 1310 -1020 {
lab=CAL_P}
N 1320 -780 1320 -760 {
lab=GND}
N 1320 -860 1320 -840 {
lab=CAL_N}
C {devices/code_shown.sym} -50 -1000 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib $::SG13G2_MODELS/cornerRES.lib res_typ_stat
.include $PDK_ROOT/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {code.sym} 80 -690 0 0 {name=NGSPICE only_toplevel=false value=
"

.option temp = 27
.save all

.option GMIN=1e-12 reltol=1e-6

.tran 10n 10u
"}
C {devices/vsource.sym} 500 -710 0 0 {name=V8 value="pwl(0 0 10n 0 10.1n 1.2)" savecurrent=false}
C {devices/lab_wire.sym} 500 -680 2 1 {name=p25 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 500 -740 0 0 {name=p26 sig_type=std_logic lab=RST_Z}
C {devices/lab_wire.sym} 960 -550 0 0 {name=p1 sig_type=std_logic lab=RST_Z}
C {devices/lab_wire.sym} 1120 -410 2 1 {name=p2 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} 700 -730 0 0 {name=V1 value=1.2 savecurrent=true}
C {devices/lab_wire.sym} 700 -700 2 1 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 700 -760 0 0 {name=p12 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 1080 -720 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 400 -730 0 0 {name=V4 value=0 savecurrent=false}
C {devices/lab_wire.sym} 400 -700 2 1 {name=p17 sig_type=std_logic lab=GND}
C {devices/lab_wire.sym} 400 -760 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1120 -740 0 0 {name=p4 sig_type=std_logic lab=CAL_P}
C {devices/lab_wire.sym} 1160 -720 0 0 {name=p5 sig_type=std_logic lab=CAL_N}
C {devices/lab_wire.sym} 1310 -570 0 0 {name=p6 sig_type=std_logic lab=OUT_P}
C {devices/lab_wire.sym} 440 -450 2 1 {name=p19 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 440 -590 0 0 {name=p20 sig_type=std_logic lab=VIN_P}
C {devices/lab_wire.sym} 620 -450 2 1 {name=p21 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 620 -590 0 0 {name=p22 sig_type=std_logic lab=VIN_N}
C {devices/vsource.sym} 440 -480 0 0 {name=V5 value="pwl(0.000u 0.6 1u 0.6
+ 1.000u 0.4000 2u 0.4000
+ 2.001u 0.8000 3u 0.8000
+ 3.001u 0.9599 4u 0.9599
+ 4.001u 0.2401 5u 0.2401
+ 5.001u 0.0186 6u 0.0186
+ 6.001u 1.1814 7u 1.1814)" savecurrent=false}
C {devices/vsource.sym} 620 -480 0 0 {name=V6 value="pwl(0.000u 0.6 1u 0.6
+ 1.000u 0.8000 2u 0.8000
+ 2.001u 0.4000 3u 0.4000
+ 3.001u 0.2401 4u 0.2401
+ 4.001u 0.9599 5u 0.9599
+ 5.001u 1.1814 6u 1.1814
+ 6.001u 0.0186 7u 0.0186)" savecurrent=false}
C {devices/res.sym} 440 -560 2 0 {name=R8
value=500
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 620 -560 2 0 {name=R9
value=500
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 890 -590 0 0 {name=p8 sig_type=std_logic lab=VIN_P}
C {devices/lab_wire.sym} 880 -510 0 0 {name=p9 sig_type=std_logic lab=VIN_N}
C {devices/vsource.sym} 1310 -990 0 0 {name=V2 value="PULSE(0 1.2 0n 1n 1n 40n 100n)" savecurrent=false}
C {devices/gnd.sym} 1310 -940 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 1320 -810 0 0 {name=V3 value="PULSE(1.2 0 0n 1n 1n 40n 100n)" savecurrent=false}
C {devices/gnd.sym} 1320 -760 0 0 {name=l5 lab=GND
value="PULSE(3.3 0 0n 1n 1n 40n 100n)"}
C {devices/lab_wire.sym} 1310 -1040 0 0 {name=p10 sig_type=std_logic lab=CAL_P}
C {devices/lab_wire.sym} 1320 -860 0 0 {name=p13 sig_type=std_logic lab=CAL_N}
C {devices/lab_wire.sym} 1310 -530 0 0 {name=p7 sig_type=std_logic lab=OUT_N}
C {preamplifier/preamplifier.sym} 810 -300 0 0 {name=x1}
