v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 360 -230 360 -190 {
lab=P}
N 360 -130 360 -70 {lab=#net1}
N 360 -10 360 10 {lab=#net2}
C {devices/lab_pin.sym} 360 -230 2 0 {name=p1 sig_type=std_logic lab=P}
C {devices/code_shown.sym} -490 -250 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerRES.lib res_typ_stat
"}
C {devices/ammeter.sym} 360 -160 0 0 {name=Vrh}
C {devices/code_shown.sym} -150 -130 0 0 {name=NGSPICE1 only_toplevel=true 
value="
vp P 0 1.8
vm M 0 0 
.options savecurrents
.control
save all 
dc vp 0 3 0.01
*dc temp -40 140 1
*plot v(p,m) / vrh#branch
write dc_res_temp.raw

.endc
"}
C {devices/lab_pin.sym} 360 70 2 0 {name=p2 sig_type=std_logic lab=M}
C {sg13g2_pr/rhigh.sym} 360 -40 0 0 {name=R3
w=0.5e-6
l=2.75e-6
model=rhigh
body=gnd
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/rhigh.sym} 360 40 0 0 {name=R1
w=0.5e-6
l=2.75e-6
model=rhigh
body=gnd
spiceprefix=X
b=0
m=1
}
