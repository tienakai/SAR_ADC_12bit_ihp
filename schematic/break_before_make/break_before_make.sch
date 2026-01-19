v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 240 -250 280 -250 {
lab=EN_VSS_I[10:0]}
N 240 -10 280 -10 {
lab=EN_VREF_Z_I[10:0]}
N 400 -230 420 -230 {
lab=EN_VSS_O[10:0]}
N 400 -30 420 -30 {
lab=EN_VREF_Z_O[10:0]}
N 420 -30 440 -30 {
lab=EN_VREF_Z_O[10:0]}
N 240 -210 280 -210 {
lab=EN_VREF_Z_O[10:0]}
N 420 -230 440 -230 {
lab=EN_VSS_O[10:0]}
N 240 -50 280 -50 {
lab=EN_VSS_O[10:0]}
N 420 -90 420 -30 {
lab=EN_VREF_Z_O[10:0]}
N 240 -90 240 -50 {
lab=EN_VSS_O[10:0]}
N 240 -210 240 -170 {
lab=EN_VREF_Z_O[10:0]}
N 420 -230 420 -170 {
lab=EN_VSS_O[10:0]}
N 240 -170 420 -90 {
lab=EN_VREF_Z_O[10:0]}
N 240 -90 420 -170 {
lab=EN_VSS_O[10:0]}
C {devices/ipin.sym} 240 -250 0 0 {name=p1 lab=EN_VSS_I[10:0]}
C {devices/ipin.sym} 240 -10 0 0 {name=p2 lab=EN_VREF_Z_I[10:0]}
C {devices/ipin.sym} 0 -250 0 0 {name=p3 lab=VDD}
C {devices/ipin.sym} 0 -230 0 0 {name=p4 lab=VSS}
C {devices/opin.sym} 440 -230 0 0 {name=p5 lab=EN_VSS_O[10:0]}
C {devices/opin.sym} 440 -30 0 0 {name=p6 lab=EN_VREF_Z_O[10:0]}
C {sg13g2_stdcells/sg13g2_and2_2.sym} 340 -230 0 0 {name=x1[10:0] VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_or2_2.sym} 340 -30 0 0 {name=x2[10:0] VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_decap_4.sym} -20 -150 0 0 {name=x1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_decap_8.sym} -20 -100 0 0 {name=x2 VDD=VDD VSS=VSS prefix=sg13g2_ }
