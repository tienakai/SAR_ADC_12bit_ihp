v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 190 -400 190 -360 {lab=VIN}
N 150 -400 190 -400 {lab=VIN}
N 110 -330 150 -330 {lab=EN_VIN}
N 190 -300 190 -220 {lab=Cbtm}
N 350 -220 450 -220 {lab=Cbtm}
N 450 -300 450 -220 {lab=Cbtm}
N 350 -220 350 -180 {lab=Cbtm}
N 190 -220 350 -220 {lab=Cbtm}
N 350 -180 370 -180 {lab=Cbtm}
N 410 -400 450 -400 {lab=VREF_GND}
N 450 -400 450 -360 {lab=VREF_GND}
N 690 -300 690 -220 {lab=Cbtm}
N 900 -300 900 -220 {lab=Cbtm}
N 690 -220 900 -220 {lab=Cbtm}
N 690 -390 690 -360 {lab=VREF}
N 640 -330 650 -330 {lab=EN_VREF_Z}
N 850 -330 860 -330 {lab=EN_VCM}
N 900 -390 900 -360 {lab=VCM}
N 450 -220 690 -220 {lab=Cbtm}
C {ipin.sym} 150 -400 0 0 {name=p1 lab=VIN
}
C {ipin.sym} 110 -330 0 0 {name=p2 lab=EN_VIN

}
C {ipin.sym} 410 -400 0 0 {name=p3 lab=VREF_GND

}
C {ipin.sym} 410 -330 0 0 {name=p4 lab=EN_VSS

}
C {opin.sym} 370 -180 0 0 {name=p5 lab=Cbtm}
C {iopin.sym} 250 -500 0 0 {name=p6 lab=VSS}
C {lab_pin.sym} 190 -330 0 1 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 450 -330 0 1 {name=p8 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 690 -390 0 0 {name=p9 lab=VREF}
C {devices/ipin.sym} 640 -330 0 0 {name=p15 lab=EN_VREF_Z}
C {devices/ipin.sym} 850 -330 0 0 {name=p11 lab=EN_VCM}
C {devices/ipin.sym} 900 -390 0 0 {name=p10 lab=VCM}
C {lab_pin.sym} 690 -330 0 1 {name=p12 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 900 -330 0 1 {name=p13 sig_type=std_logic lab=VSS}
C {iopin.sym} 250 -470 0 0 {name=p14 lab=VDD}
C {sg13g2_pr/sg13_lv_nmos.sym} 170 -330 0 0 {name=M3
l=0.13u
w=0.9u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 430 -330 0 0 {name=M5
l=0.13u
w=13.1u
ng=2
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 670 -330 0 0 {name=M1
l=0.35u
w=64u
ng=8
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 880 -330 0 0 {name=M2
l=0.13u
w=17u
ng=2
m=1
model=sg13_lv_nmos
spiceprefix=X
}
