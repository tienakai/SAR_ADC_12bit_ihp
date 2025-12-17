v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 140 -450 140 -410 {lab=VIN}
N 100 -450 140 -450 {lab=VIN}
N 60 -380 100 -380 {lab=EN_VIN}
N 140 -350 140 -270 {lab=Cbtm}
N 300 -270 400 -270 {lab=Cbtm}
N 400 -350 400 -270 {lab=Cbtm}
N 300 -270 300 -230 {lab=Cbtm}
N 140 -270 300 -270 {lab=Cbtm}
N 300 -230 320 -230 {lab=Cbtm}
N 360 -450 400 -450 {lab=VREF_GND}
N 400 -450 400 -410 {lab=VREF_GND}
N 640 -350 640 -270 {lab=Cbtm}
N 850 -350 850 -270 {lab=Cbtm}
N 640 -270 850 -270 {lab=Cbtm}
N 640 -440 640 -410 {lab=VREF}
N 590 -380 600 -380 {lab=EN_VREF_Z}
N 800 -380 810 -380 {lab=EN_VCM}
N 850 -440 850 -410 {lab=VCM}
N 400 -270 640 -270 {lab=Cbtm}
C {sg13g2_pr/sg13_lv_nmos.sym} 120 -380 0 0 {name=M7
l=0.13u
w=0.55u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {ipin.sym} 100 -450 0 0 {name=p1 lab=VIN
}
C {ipin.sym} 60 -380 0 0 {name=p2 lab=EN_VIN

}
C {ipin.sym} 360 -450 0 0 {name=p3 lab=VREF_GND

}
C {ipin.sym} 360 -380 0 0 {name=p4 lab=EN_VSS

}
C {opin.sym} 320 -230 0 0 {name=p5 lab=Cbtm}
C {iopin.sym} 200 -550 0 0 {name=p6 lab=VSS}
C {lab_pin.sym} 140 -380 0 1 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 400 -380 0 1 {name=p8 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} 640 -440 0 0 {name=p9 lab=VREF}
C {devices/ipin.sym} 590 -380 0 0 {name=p15 lab=EN_VREF_Z}
C {devices/ipin.sym} 800 -380 0 0 {name=p11 lab=EN_VCM}
C {devices/ipin.sym} 850 -440 0 0 {name=p10 lab=VCM}
C {lab_pin.sym} 640 -380 0 1 {name=p12 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 850 -380 0 1 {name=p13 sig_type=std_logic lab=VSS}
C {iopin.sym} 200 -520 0 0 {name=p14 lab=VDD}
C {sg13g2_pr/sg13_lv_nmos.sym} 380 -380 0 0 {name=M1
l=0.13u
w=1.75u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 620 -380 0 0 {name=M2
l=0.35u
w=8u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 830 -380 0 0 {name=M3
l=0.13u
w=2.3u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
