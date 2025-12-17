v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 50 -280 50 -240 {lab=VIN}
N 10 -280 50 -280 {lab=VIN}
N -30 -210 10 -210 {lab=EN_VIN}
N 50 -180 50 -100 {lab=Cbtm}
N 210 -100 310 -100 {lab=Cbtm}
N 310 -180 310 -100 {lab=Cbtm}
N 210 -100 210 -60 {lab=Cbtm}
N 50 -100 210 -100 {lab=Cbtm}
N 210 -60 230 -60 {lab=Cbtm}
N 270 -280 310 -280 {lab=VREF_GND}
N 310 -280 310 -240 {lab=VREF_GND}
N 550 -180 550 -100 {lab=Cbtm}
N 760 -180 760 -100 {lab=Cbtm}
N 550 -100 760 -100 {lab=Cbtm}
N 550 -270 550 -240 {lab=VREF}
N 500 -210 510 -210 {lab=EN_VREF_Z}
N 710 -210 720 -210 {lab=EN_VCM}
N 760 -270 760 -240 {lab=VCM}
N 310 -100 550 -100 {lab=Cbtm}
C {ipin.sym} 10 -280 0 0 {name=p1 lab=VIN
}
C {ipin.sym} -30 -210 0 0 {name=p2 lab=EN_VIN

}
C {ipin.sym} 270 -280 0 0 {name=p3 lab=VREF_GND

}
C {ipin.sym} 270 -210 0 0 {name=p4 lab=EN_VSS

}
C {opin.sym} 230 -60 0 0 {name=p5 lab=Cbtm}
C {iopin.sym} 110 -380 0 0 {name=p6 lab=VSS}
C {lab_pin.sym} 50 -210 0 1 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 310 -210 0 1 {name=p8 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 550 -270 0 0 {name=p9 lab=VREF}
C {devices/ipin.sym} 500 -210 0 0 {name=p15 lab=EN_VREF_Z}
C {devices/ipin.sym} 710 -210 0 0 {name=p11 lab=EN_VCM}
C {devices/ipin.sym} 760 -270 0 0 {name=p10 lab=VCM}
C {lab_pin.sym} 550 -210 0 1 {name=p12 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 760 -210 0 1 {name=p13 sig_type=std_logic lab=VSS}
C {iopin.sym} 110 -350 0 0 {name=p14 lab=VDD}
C {sg13g2_pr/sg13_lv_nmos.sym} 30 -210 0 0 {name=M4
l=0.13u
w=0.9u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 290 -210 0 0 {name=M1
l=0.13u
w=3.45u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 530 -210 0 0 {name=M2
l=0.35u
w=16u
ng=2
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 740 -210 0 0 {name=M3
l=0.13u
w=4.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
