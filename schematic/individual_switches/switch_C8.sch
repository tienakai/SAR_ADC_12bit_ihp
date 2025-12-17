v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 170 -380 170 -340 {lab=VIN}
N 130 -380 170 -380 {lab=VIN}
N 90 -310 130 -310 {lab=EN_VIN}
N 170 -280 170 -200 {lab=Cbtm}
N 330 -200 430 -200 {lab=Cbtm}
N 430 -280 430 -200 {lab=Cbtm}
N 330 -200 330 -160 {lab=Cbtm}
N 170 -200 330 -200 {lab=Cbtm}
N 330 -160 350 -160 {lab=Cbtm}
N 390 -380 430 -380 {lab=VREF_GND}
N 430 -380 430 -340 {lab=VREF_GND}
N 670 -280 670 -200 {lab=Cbtm}
N 880 -280 880 -200 {lab=Cbtm}
N 670 -200 880 -200 {lab=Cbtm}
N 670 -370 670 -340 {lab=VREF}
N 620 -310 630 -310 {lab=EN_VREF_Z}
N 830 -310 840 -310 {lab=EN_VCM}
N 880 -370 880 -340 {lab=VCM}
N 430 -200 670 -200 {lab=Cbtm}
C {ipin.sym} 130 -380 0 0 {name=p1 lab=VIN
}
C {ipin.sym} 90 -310 0 0 {name=p2 lab=EN_VIN

}
C {ipin.sym} 390 -380 0 0 {name=p3 lab=VREF_GND

}
C {ipin.sym} 390 -310 0 0 {name=p4 lab=EN_VSS

}
C {opin.sym} 350 -160 0 0 {name=p5 lab=Cbtm}
C {iopin.sym} 230 -480 0 0 {name=p6 lab=VSS}
C {lab_pin.sym} 170 -310 0 1 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 430 -310 0 1 {name=p8 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 670 -370 0 0 {name=p9 lab=VREF}
C {devices/ipin.sym} 620 -310 0 0 {name=p15 lab=EN_VREF_Z}
C {devices/ipin.sym} 830 -310 0 0 {name=p11 lab=EN_VCM}
C {devices/ipin.sym} 880 -370 0 0 {name=p10 lab=VCM}
C {lab_pin.sym} 670 -310 0 1 {name=p12 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 880 -310 0 1 {name=p13 sig_type=std_logic lab=VSS}
C {iopin.sym} 230 -450 0 0 {name=p14 lab=VDD}
C {sg13g2_pr/sg13_lv_nmos.sym} 150 -310 0 0 {name=M5
l=0.13u
w=0.9u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 410 -310 0 0 {name=M4
l=0.13u
w=6.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 650 -310 0 0 {name=M1
l=0.35u
w=32u
ng=4
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 860 -310 0 0 {name=M2
l=0.13u
w=8.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
