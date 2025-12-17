v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -110 -240 -110 -200 {lab=EN}
N -110 -140 -110 -90 {lab=VSS}
N 40 -120 40 -100 {lab=VIN}
N 200 -180 200 -150 {lab=VSS}
N 200 -340 200 -320 {lab=VDD}
N 280 -230 490 -230 {lab=VGATE}
N 490 -230 490 -180 {lab=VGATE}
N 40 -120 440 -120 {lab=VIN}
N 440 -140 440 -120 {lab=VIN}
N 440 -140 460 -140 {lab=VIN}
N 520 -140 600 -140 {lab=VIN_SMPL}
N 600 -140 600 -120 {lab=VIN_SMPL}
N 600 -60 600 -40 {lab=VSS}
N 40 -280 120 -280 {lab=VIN}
N 40 -280 40 -120 {lab=VIN}
N -110 -240 120 -240 {lab=EN}
C {bootstrap/bootstrap.sym} 100 -80 0 0 {name=x1}
C {devices/code_shown.sym} -390 -650 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.include /home/tien/conda-gf180mcu-env/share/pdk/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {devices/vsource.sym} -110 -170 0 0 {name=V9 value="pulse(0 1.8 0 0.1n 0.1n 50n 100n)"}
C {devices/vsource.sym} 40 -70 0 0 {name=V13 value="sin(0.6 0.6 100k 0 0 0)"}
C {devices/vsource.sym} -350 -120 0 0 {name=V1 value=1.8 savecurrent=true}
C {devices/lab_wire.sym} -350 -90 2 1 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -350 -150 0 0 {name=p12 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -270 -120 0 0 {name=V4 value=0 savecurrent=false}
C {devices/lab_wire.sym} -270 -90 2 1 {name=p17 sig_type=std_logic lab=GND}
C {devices/lab_wire.sym} -270 -150 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -110 -90 2 1 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 40 -40 2 1 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 200 -340 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 200 -150 2 1 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 280 -280 0 1 {name=p33 sig_type=std_logic lab=SW_ON}
C {code.sym} 50 -510 0 0 {name=NGSPICE only_toplevel=false value=
"

.option temp = 27
.save all

.option GMIN=1e-12 reltol=1e-6

.tran 10n 100u
"}
C {devices/lab_wire.sym} 490 -140 2 1 {name=p5 sig_type=std_logic lab=VSS}
C {capa.sym} 600 -90 0 0 {name=C1
m=1
value=2p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 600 -40 2 1 {name=p6 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -110 -220 0 0 {name=p31 sig_type=std_logic lab=EN}
C {devices/lab_wire.sym} 250 -120 0 1 {name=p28 sig_type=std_logic lab=VIN}
C {devices/lab_wire.sym} 390 -230 0 0 {name=p8 sig_type=std_logic lab=VGATE}
C {devices/lab_wire.sym} 550 -140 0 1 {name=p9 sig_type=std_logic lab=VIN_SMPL}
C {sg13g2_pr/sg13_lv_nmos.sym} 490 -160 1 0 {name=M1
l=0.13u
w=17u
ng=4
m=1
model=sg13_lv_nmos
spiceprefix=X
}
