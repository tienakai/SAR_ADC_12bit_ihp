v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 340 -320 340 -280 {lab=VIN}
N 300 -320 340 -320 {lab=VIN}
N 260 -250 300 -250 {lab=EN_VIN}
N 340 -220 340 -140 {lab=Cbtm}
N 500 -140 600 -140 {lab=Cbtm}
N 600 -220 600 -140 {lab=Cbtm}
N 500 -140 500 -100 {lab=Cbtm}
N 340 -140 500 -140 {lab=Cbtm}
N 500 -100 520 -100 {lab=Cbtm}
N 600 -320 600 -280 {lab=VCM}
N 600 -320 640 -320 {lab=VCM}
C {sg13g2_pr/sg13_lv_nmos.sym} 320 -250 0 0 {name=M7
l=0.13u
w=0.55u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 580 -250 0 0 {name=M1
l=0.13u
w=1.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {ipin.sym} 300 -320 0 0 {name=p1 lab=VIN
}
C {ipin.sym} 260 -250 0 0 {name=p2 lab=EN_VIN

}
C {ipin.sym} 640 -320 0 1 {name=p3 lab=VCM

}
C {ipin.sym} 560 -250 0 0 {name=p4 lab=EN_VCM

}
C {opin.sym} 520 -100 0 0 {name=p5 lab=Cbtm}
C {iopin.sym} 400 -420 0 0 {name=p6 lab=VSS}
C {lab_pin.sym} 340 -250 0 1 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 600 -250 0 1 {name=p8 sig_type=std_logic lab=VSS}
