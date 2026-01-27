v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 370 -310 470 -310 {lab=#net1}
N 470 -320 470 -310 {lab=#net1}
N 470 -320 530 -320 {lab=#net1}
N 370 -270 470 -270 {lab=#net2}
N 470 -270 470 -240 {lab=#net2}
N 470 -240 530 -240 {lab=#net2}
N 110 -760 110 -740 {
lab=#net3}
N 290 -760 290 -740 {
lab=#net4}
N 520 -930 520 -910 {
lab=GND}
N 520 -1010 520 -990 {
lab=CAL_P}
N 620 -690 620 -670 {
lab=GND}
N 620 -770 620 -750 {
lab=CAL_N}
N 120 -330 190 -330 {lab=VIN_P}
N 120 -250 190 -250 {lab=VIN_N}
N 120 -290 190 -290 {lab=RST_Z}
N 230 -480 230 -390 {lab=VDD}
N 270 -460 270 -390 {lab=CAL_P}
N 310 -440 310 -390 {lab=CAL_N}
N 270 -190 270 -160 {lab=VSS}
N 600 -210 600 -170 {lab=VSS}
N 600 -400 600 -350 {lab=VDD}
N 710 -300 800 -300 {lab=OUT_P}
N 710 -260 800 -260 {lab=OUT_N}
C {preamplifier/preamplifier.sym} -40 -40 0 0 {name=x1}
C {latched_comparator/latched_comparator.sym} 240 -90 0 0 {name=x2}
C {devices/code_shown.sym} -380 -1230 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib $::SG13G2_MODELS/cornerRES.lib res_typ_stat
.include $PDK_ROOT/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {code.sym} -250 -920 0 0 {name=NGSPICE only_toplevel=false value=
"

.option temp = 27
.save all

.option GMIN=1e-12 reltol=1e-6

.tran 10n 10u
"}
C {devices/vsource.sym} 170 -940 0 0 {name=V8 value="pwl(0 0 10n 0 10.1n 1.2)" savecurrent=false}
C {devices/lab_wire.sym} 170 -910 2 1 {name=p25 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 170 -970 0 0 {name=p26 sig_type=std_logic lab=RST_Z}
C {devices/vsource.sym} 370 -960 0 0 {name=V1 value=1.2 savecurrent=true}
C {devices/lab_wire.sym} 370 -930 2 1 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 370 -990 0 0 {name=p12 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 70 -960 0 0 {name=V4 value=0 savecurrent=false}
C {devices/lab_wire.sym} 70 -930 2 1 {name=p17 sig_type=std_logic lab=GND}
C {devices/lab_wire.sym} 70 -990 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 110 -680 2 1 {name=p19 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 110 -820 0 0 {name=p20 sig_type=std_logic lab=VIN_P}
C {devices/lab_wire.sym} 290 -680 2 1 {name=p21 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 290 -820 0 0 {name=p22 sig_type=std_logic lab=VIN_N}
C {devices/vsource.sym} 110 -710 0 0 {name=V5 value="pwl(0.000u 0.6 1u 0.6
+ 1.000u 0.4000 2u 0.4000
+ 2.001u 0.8000 3u 0.8000
+ 3.001u 0.9599 4u 0.9599
+ 4.001u 0.2401 5u 0.2401
+ 5.001u 0.0186 6u 0.0186
+ 6.001u 1.1814 7u 1.1814)" savecurrent=false}
C {devices/vsource.sym} 290 -710 0 0 {name=V6 value="pwl(0.000u 0.6 1u 0.6
+ 1.000u 0.8000 2u 0.8000
+ 2.001u 0.4000 3u 0.4000
+ 3.001u 0.2401 4u 0.2401
+ 4.001u 0.9599 5u 0.9599
+ 5.001u 1.1814 6u 1.1814
+ 6.001u 0.0186 7u 0.0186)" savecurrent=false}
C {devices/res.sym} 110 -790 2 0 {name=R8
value=500
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 290 -790 2 0 {name=R9
value=500
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} 520 -960 0 0 {name=V2 value="PULSE(0 1.2 0n 1n 1n 40n 100n)" savecurrent=false}
C {devices/gnd.sym} 520 -910 0 0 {name=l3 lab=GND}
C {devices/vsource.sym} 620 -720 0 0 {name=V3 value="PULSE(1.2 0 0n 1n 1n 40n 100n)" savecurrent=false}
C {devices/gnd.sym} 620 -670 0 0 {name=l5 lab=GND
value="PULSE(3.3 0 0n 1n 1n 40n 100n)"}
C {devices/lab_wire.sym} 520 -1010 0 0 {name=p10 sig_type=std_logic lab=CAL_P}
C {devices/lab_wire.sym} 620 -770 0 0 {name=p13 sig_type=std_logic lab=CAL_N}
C {devices/vsource.sym} 880 -720 0 0 {name=V7 value="0 PULSE(0 1.2 0 0.1n 0.1n 50n 100n)" savecurrent=true}
C {devices/lab_wire.sym} 880 -750 0 0 {name=p33 sig_type=std_logic lab=EN_COMP}
C {devices/gnd.sym} 880 -690 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 530 -280 0 0 {name=p1 sig_type=std_logic lab=EN_COMP}
C {devices/lab_wire.sym} 130 -330 0 0 {name=p2 sig_type=std_logic lab=VIN_P}
C {devices/lab_wire.sym} 130 -250 0 0 {name=p3 sig_type=std_logic lab=VIN_N}
C {devices/lab_wire.sym} 130 -290 0 0 {name=p4 sig_type=std_logic lab=RST_Z}
C {devices/lab_wire.sym} 230 -480 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 270 -460 0 0 {name=p6 sig_type=std_logic lab=CAL_P}
C {devices/lab_wire.sym} 310 -440 0 0 {name=p7 sig_type=std_logic lab=CAL_N}
C {devices/lab_wire.sym} 270 -160 2 1 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 600 -170 2 1 {name=p9 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 600 -400 0 0 {name=p14 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 800 -300 0 1 {name=p15 sig_type=std_logic lab=OUT_P}
C {devices/lab_wire.sym} 800 -260 0 1 {name=p16 sig_type=std_logic lab=OUT_N}
