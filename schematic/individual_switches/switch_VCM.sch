v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 240 -200 260 -200 {
lab=VCM}
N 260 -200 260 -150 {
lab=VCM}
N 260 -30 280 -30 {
lab=Cbtm}
N 160 -120 220 -120 {
lab=EN_VCM}
N 260 -90 260 -30 {
lab=Cbtm}
C {devices/ipin.sym} 240 -200 0 0 {name=p6 lab=VCM}
C {devices/ipin.sym} 160 -120 0 0 {name=p11 lab=EN_VCM}
C {devices/lab_pin.sym} 260 -120 0 1 {name=p13 sig_type=std_logic lab=VSS}
C {devices/opin.sym} 280 -30 0 0 {name=p9 lab=Cbtm}
C {sg13g2_pr/sg13_lv_nmos.sym} 240 -120 0 0 {name=M3
l=0.13u
w=34u
ng=4
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {iopin.sym} -90 -170 0 0 {name=p1 lab=VSS}
C {iopin.sym} -90 -140 0 0 {name=p14 lab=VDD}
