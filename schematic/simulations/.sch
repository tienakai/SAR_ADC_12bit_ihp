v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -110 -280 120 -280 {lab=#net1}
N -110 -280 -110 -200 {lab=#net1}
N -110 -140 -110 -90 {lab=VSS}
N 40 -240 120 -240 {lab=#net2}
N 40 -240 40 -100 {lab=#net2}
N 200 -180 200 -150 {lab=VSS}
N 200 -340 200 -320 {lab=VDD}
N 280 -230 490 -230 {lab=#net3}
N 490 -230 490 -180 {lab=#net3}
C {bootstrap/bootstrap.sym} 100 -80 0 0 {name=x1}
C {devices/code_shown.sym} -280 -470 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
"}
C {devices/vsource.sym} -110 -170 0 0 {name=Vds value="pulse(0 1.8 0 0.1n 0.1n 50n 100n)"}
C {devices/vsource.sym} 40 -70 0 0 {name=Vds1 value="sin(0.6 0.6 100k 0 0 0)"}
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
