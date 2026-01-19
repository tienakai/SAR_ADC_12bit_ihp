v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 100 -670 100 -640 {
lab=VDD}
N 100 -580 100 -540 {
lab=GND}
N 490 -590 490 -550 {
lab=GND}
N 490 -680 490 -650 {
lab=inp}
N 820 -580 820 -540 {
lab=GND}
N 820 -670 820 -640 {
lab=inn}
N 400 -380 400 -330 {lab=VDD}
N 400 -190 400 -140 {lab=GND}
N 270 -300 330 -300 {lab=inp}
N 260 -260 330 -260 {lab=EN_COMP}
N 510 -280 600 -280 {lab=OUT_P}
N 510 -240 600 -240 {lab=OUT_N}
N 260 -220 330 -220 {lab=inn}
C {latched_comparator/latched_comparator.sym} 40 -70 0 0 {name=x1}
C {devices/vsource.sym} 100 -610 0 0 {name=V1 value=1.8}
C {devices/gnd.sym} 100 -540 0 0 {name=l14 lab=GND}
C {devices/vdd.sym} 100 -670 0 0 {name=l15 lab=VDD}
C {devices/vsource.sym} 490 -620 0 0 {name=V3 value="0 PULSE(1.25 1.3 0 0.1n 0.1n 80n 200n)"}
C {devices/gnd.sym} 490 -550 0 0 {name=l21 lab=GND}
C {devices/lab_wire.sym} 490 -680 0 0 {name=l22 sig_type=std_logic lab=inp}
C {devices/vsource.sym} 820 -610 0 0 {name=V2 value="0 PULSE(1.3 1.25 0 0.1n 0.1n 80n 200n)"}
C {devices/gnd.sym} 820 -540 0 0 {name=l23 lab=GND}
C {devices/lab_wire.sym} 820 -670 0 0 {name=l24 sig_type=std_logic lab=inn}
C {devices/vsource.sym} 240 -610 0 0 {name=V7 value="0 PULSE(0 1.8 0 0.1n 0.1n 50n 100n)" savecurrent=true}
C {devices/lab_wire.sym} 240 -640 0 0 {name=p33 sig_type=std_logic lab=EN_COMP}
C {devices/gnd.sym} 240 -580 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} 400 -380 0 0 {name=l1 lab=VDD}
C {devices/lab_wire.sym} 280 -300 0 0 {name=l3 sig_type=std_logic lab=inp}
C {devices/lab_wire.sym} 270 -260 0 0 {name=p1 sig_type=std_logic lab=EN_COMP}
C {devices/gnd.sym} 400 -140 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} 260 -220 0 0 {name=l5 sig_type=std_logic lab=inn}
C {devices/lab_wire.sym} 570 -280 0 1 {name=p2 sig_type=std_logic lab=OUT_P}
C {devices/lab_wire.sym} 570 -240 0 1 {name=p3 sig_type=std_logic lab=OUT_N}
C {devices/code_shown.sym} -590 -820 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.include /home/tien/conda-gf180mcu-env/share/pdk/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {code.sym} -150 -680 0 0 {name=NGSPICE only_toplevel=false value=
"

.option temp = 27
.save all

.option GMIN=1e-12 reltol=1e-6

.tran 10n 100u
"}
