v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 110 -330 110 -290 {lab=VIN}
N 70 -330 110 -330 {lab=VIN}
N 30 -260 70 -260 {lab=EN_VIN}
N 110 -230 110 -150 {lab=Cbtm}
N 270 -150 370 -150 {lab=Cbtm}
N 370 -230 370 -150 {lab=Cbtm}
N 270 -150 270 -110 {lab=Cbtm}
N 110 -150 270 -150 {lab=Cbtm}
N 270 -110 290 -110 {lab=Cbtm}
N 330 -330 370 -330 {lab=VREF_GND}
N 370 -330 370 -290 {lab=VREF_GND}
N 370 -150 570 -150 {lab=Cbtm}
N 570 -230 570 -150 {lab=Cbtm}
N 780 -230 780 -150 {lab=Cbtm}
N 570 -150 780 -150 {lab=Cbtm}
N 570 -320 570 -290 {lab=VREF}
N 520 -260 530 -260 {lab=EN_VREF_Z}
N 730 -260 740 -260 {lab=EN_VCM}
N 780 -320 780 -290 {lab=VCM}
C {sg13g2_pr/sg13_lv_nmos.sym} 90 -260 0 0 {name=M7
l=0.13u
w=0.55u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 760 -260 0 0 {name=M1
l=0.13u
w=1.15u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {ipin.sym} 70 -330 0 0 {name=p1 lab=VIN
}
C {ipin.sym} 30 -260 0 0 {name=p2 lab=EN_VIN

}
C {ipin.sym} 330 -330 0 0 {name=p3 lab=VREF_GND

}
C {ipin.sym} 330 -260 0 0 {name=p4 lab=EN_VSS

}
C {opin.sym} 290 -110 0 0 {name=p5 lab=Cbtm}
C {iopin.sym} 170 -430 0 0 {name=p6 lab=VSS}
C {lab_pin.sym} 110 -260 0 1 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 370 -260 0 1 {name=p8 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_lv_pmos.sym} 550 -260 0 0 {name=M2
l=0.35u
w=0.35u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 350 -260 0 0 {name=M4
l=0.13u
w=0.88u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/ipin.sym} 570 -320 0 0 {name=p9 lab=VREF}
C {devices/ipin.sym} 520 -260 0 0 {name=p15 lab=EN_VREF_Z}
C {devices/ipin.sym} 730 -260 0 0 {name=p11 lab=EN_VCM}
C {devices/ipin.sym} 780 -320 0 0 {name=p10 lab=VCM}
C {lab_pin.sym} 570 -260 0 1 {name=p12 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 780 -260 0 1 {name=p13 sig_type=std_logic lab=VSS}
C {iopin.sym} 170 -400 0 0 {name=p14 lab=VDD}
