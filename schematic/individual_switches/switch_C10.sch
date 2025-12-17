v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 110 -300 110 -260 {lab=VIN}
N 70 -300 110 -300 {lab=VIN}
N 30 -230 70 -230 {lab=EN_VIN}
N 110 -200 110 -120 {lab=Cbtm}
N 270 -120 370 -120 {lab=Cbtm}
N 370 -200 370 -120 {lab=Cbtm}
N 270 -120 270 -80 {lab=Cbtm}
N 110 -120 270 -120 {lab=Cbtm}
N 270 -80 290 -80 {lab=Cbtm}
N 330 -300 370 -300 {lab=VREF_GND}
N 370 -300 370 -260 {lab=VREF_GND}
N 610 -200 610 -120 {lab=Cbtm}
N 820 -200 820 -120 {lab=Cbtm}
N 610 -120 820 -120 {lab=Cbtm}
N 610 -290 610 -260 {lab=VREF}
N 560 -230 570 -230 {lab=EN_VREF_Z}
N 770 -230 780 -230 {lab=EN_VCM}
N 820 -290 820 -260 {lab=VCM}
N 370 -120 610 -120 {lab=Cbtm}
C {ipin.sym} 70 -300 0 0 {name=p1 lab=VIN
}
C {ipin.sym} 30 -230 0 0 {name=p2 lab=EN_VIN

}
C {ipin.sym} 330 -300 0 0 {name=p3 lab=VREF_GND

}
C {ipin.sym} 330 -230 0 0 {name=p4 lab=EN_VSS

}
C {opin.sym} 290 -80 0 0 {name=p5 lab=Cbtm}
C {iopin.sym} 170 -400 0 0 {name=p6 lab=VSS}
C {lab_pin.sym} 110 -230 0 1 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 370 -230 0 1 {name=p8 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 610 -290 0 0 {name=p9 lab=VREF}
C {devices/ipin.sym} 560 -230 0 0 {name=p15 lab=EN_VREF_Z}
C {devices/ipin.sym} 770 -230 0 0 {name=p11 lab=EN_VCM}
C {devices/ipin.sym} 820 -290 0 0 {name=p10 lab=VCM}
C {lab_pin.sym} 610 -230 0 1 {name=p12 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 820 -230 0 1 {name=p13 sig_type=std_logic lab=VSS}
C {iopin.sym} 170 -370 0 0 {name=p14 lab=VDD}
C {sg13g2_pr/sg13_lv_nmos.sym} 90 -230 0 0 {name=M5
l=0.13u
w=6.8u
ng=2
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 350 -230 0 0 {name=M1
l=0.13u
w=26u
ng=4
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 590 -230 0 0 {name=M2
l=0.35u
w=128u
ng=16
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 800 -230 0 0 {name=M3
l=0.13u
w=34u
ng=4
m=1
model=sg13_lv_nmos
spiceprefix=X
}
