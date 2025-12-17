v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -50 -60 10 -60 {lab=EN}
N 90 -60 150 -60 {lab=#net1}
N -50 -60 -50 20 {lab=EN}
N -50 80 -50 130 {lab=VSS}
C {sg13g2_stdcells/sg13g2_inv_1.sym} 50 -60 0 0 {name=x1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/vsource.sym} -50 50 0 0 {name=V9 value="pulse(0 1.8 0 0.1n 0.1n 50n 100n)"}
C {devices/lab_wire.sym} -50 130 2 1 {name=p1 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -40 -60 0 0 {name=p31 sig_type=std_logic lab=EN}
C {devices/code_shown.sym} -480 -400 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.include /home/tien/conda-gf180mcu-env/share/pdk/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {devices/vsource.sym} -240 0 0 0 {name=V1 value=1.8 savecurrent=true}
C {devices/lab_wire.sym} -240 30 2 1 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -240 -30 0 0 {name=p12 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -160 0 0 0 {name=V4 value=0 savecurrent=false}
C {devices/lab_wire.sym} -160 30 2 1 {name=p17 sig_type=std_logic lab=GND}
C {devices/lab_wire.sym} -160 -30 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {code.sym} -280 -280 0 0 {name=NGSPICE only_toplevel=false value=
"

.option temp = 27
.save all

.option GMIN=1e-12 reltol=1e-6

.tran 10n 100u
"}
C {devices/lab_wire.sym} 150 -60 0 1 {name=p2 sig_type=std_logic lab=EN_Z}
