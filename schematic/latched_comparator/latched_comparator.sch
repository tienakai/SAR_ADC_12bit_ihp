v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 220 -580 220 -520 {lab=VDD}
N 360 -580 360 -520 {lab=VDD}
N 550 -580 550 -520 {lab=VDD}
N 1120 -580 1150 -580 {lab=VDD}
N 180 -580 220 -580 {lab=VDD}
N 250 -580 360 -580 {lab=VDD}
N 530 -580 550 -580 {lab=VDD}
N 820 -580 820 -520 {lab=VDD}
N 550 -580 820 -580 {lab=VDD}
N 1010 -580 1010 -520 {lab=VDD}
N 980 -580 1010 -580 {lab=VDD}
N 1150 -580 1150 -520 {lab=VDD}
N 550 -400 550 -370 {lab=OUT_Ni}
N 590 -490 620 -490 {lab=OUT_Pi}
N 620 -420 620 -340 {lab=OUT_Pi}
N 590 -340 620 -340 {lab=OUT_Pi}
N 760 -490 780 -490 {lab=OUT_Ni}
N 760 -400 760 -340 {lab=OUT_Ni}
N 760 -340 780 -340 {lab=OUT_Ni}
N 820 -400 820 -370 {lab=OUT_Pi}
N 360 -460 360 -420 {lab=OUT_Ni}
N 360 -420 550 -420 {lab=OUT_Ni}
N 550 -460 550 -420 {lab=OUT_Ni}
N 550 -400 760 -400 {lab=OUT_Ni}
N 550 -420 550 -400 {lab=OUT_Ni}
N 760 -490 760 -400 {lab=OUT_Ni}
N 620 -420 820 -420 {lab=OUT_Pi}
N 620 -490 620 -420 {lab=OUT_Pi}
N 820 -460 820 -420 {lab=OUT_Pi}
N 820 -400 1010 -400 {lab=OUT_Pi}
N 820 -420 820 -400 {lab=OUT_Pi}
N 1010 -460 1010 -400 {lab=OUT_Pi}
N 550 -260 550 -220 {lab=#net1}
N 820 -260 820 -220 {lab=#net2}
N 1150 -460 1150 -260 {lab=#net2}
N 820 -260 1150 -260 {lab=#net2}
N 820 -310 820 -260 {lab=#net2}
N 220 -460 220 -260 {lab=#net1}
N 220 -260 550 -260 {lab=#net1}
N 550 -310 550 -260 {lab=#net1}
N 550 -160 550 -100 {lab=#net3}
N 690 -100 820 -100 {lab=#net3}
N 820 -160 820 -100 {lab=#net3}
N 640 -240 650 -240 {lab=#net3}
N 690 -290 690 -270 {lab=#net3}
N 640 -290 690 -290 {lab=#net3}
N 640 -240 640 -100 {lab=#net3}
N 640 -290 640 -240 {lab=#net3}
N 550 -100 640 -100 {lab=#net3}
N 690 -210 690 -100 {lab=#net3}
N 660 -100 690 -100 {lab=#net3}
N 660 -100 660 -40 {lab=#net3}
N 640 -100 660 -100 {lab=#net3}
N 660 20 660 60 {lab=VSS}
N 260 60 660 60 {lab=VSS}
N 1240 -170 1310 -170 {lab=#net4}
N 1240 -80 1310 -80 {lab=#net5}
N 1120 -170 1160 -170 {lab=OUT_Pi}
N 1120 -80 1160 -80 {lab=OUT_Ni}
N 1390 -170 1440 -170 {lab=OUT_P}
N 1390 -80 1440 -80 {lab=OUT_N}
N 490 -190 510 -190 {lab=Vin_P}
N 860 -190 890 -190 {lab=Vin_N}
N 250 -130 270 -130 {lab=EN}
N 350 -130 390 -130 {lab=ENi}
N 220 -490 250 -490 {lab=VDD}
N 250 -580 250 -490 {lab=VDD}
N 220 -580 250 -580 {lab=VDD}
N 360 -490 390 -490 {lab=VDD}
N 390 -580 390 -490 {lab=VDD}
N 360 -580 390 -580 {lab=VDD}
N 530 -490 550 -490 {lab=VDD}
N 530 -580 530 -490 {lab=VDD}
N 390 -580 530 -580 {lab=VDD}
N 820 -490 840 -490 {lab=VDD}
N 840 -580 840 -490 {lab=VDD}
N 820 -580 840 -580 {lab=VDD}
N 980 -490 1010 -490 {lab=VDD}
N 980 -580 980 -490 {lab=VDD}
N 840 -580 980 -580 {lab=VDD}
N 1120 -490 1150 -490 {lab=VDD}
N 1120 -580 1120 -490 {lab=VDD}
N 1010 -580 1120 -580 {lab=VDD}
C {sg13g2_pr/sg13_lv_pmos.sym} 200 -490 0 0 {name=M1
l=0.15u
w=0.32u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 340 -490 0 0 {name=M2
l=0.15u
w=0.32u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 570 -490 0 1 {name=M3
l=0.15u
w=1.25u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1170 -490 0 1 {name=M4
l=0.15u
w=0.32u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 1030 -490 0 1 {name=M5
l=0.15u
w=0.32u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 800 -490 0 0 {name=M6
l=0.15u
w=1.25u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 530 -190 0 0 {name=M7
l=0.13u
w=0.55u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 840 -190 0 1 {name=M8
l=0.13u
w=0.55u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 800 -340 0 0 {name=M9
l=0.15u
w=0.42u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 570 -340 0 1 {name=M10
l=0.15u
w=0.42u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 670 -240 0 0 {name=M11
l=0.13u
w=0.55u
ng=1
m=2
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 640 -10 0 0 {name=M12
l=0.15u
w=0.9u
ng=1
m=2
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_stdcells/sg13g2_inv_2.sym} 1200 -170 0 0 {name=x4 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_2.sym} 1200 -80 0 0 {name=x5 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {ipin.sym} 490 -190 0 0 {name=p1 lab=Vin_P}
C {ipin.sym} 890 -190 0 1 {name=p2 lab=Vin_N}
C {iopin.sym} 180 -580 0 1 {name=p3 lab=VDD}
C {iopin.sym} 260 60 0 1 {name=p4 lab=VSS}
C {ipin.sym} 250 -130 0 0 {name=p5 lab=EN}
C {lab_pin.sym} 390 -130 0 1 {name=p6 sig_type=std_logic lab=ENi}
C {lab_pin.sym} 180 -490 0 0 {name=p7 sig_type=std_logic lab=ENi}
C {lab_pin.sym} 320 -490 0 0 {name=p8 sig_type=std_logic lab=ENi}
C {lab_pin.sym} 1050 -490 0 1 {name=p9 sig_type=std_logic lab=ENi}
C {lab_pin.sym} 1190 -490 0 1 {name=p10 sig_type=std_logic lab=ENi}
C {lab_pin.sym} 820 -340 0 1 {name=p11 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 550 -340 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 820 -190 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 690 -240 0 1 {name=p14 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 550 -190 0 1 {name=p15 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 660 -10 0 1 {name=p16 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 900 -400 0 0 {name=p17 sig_type=std_logic lab=OUT_Pi}
C {lab_wire.sym} 470 -420 0 0 {name=p18 sig_type=std_logic lab=OUT_Ni}
C {lab_pin.sym} 1120 -170 0 0 {name=p19 sig_type=std_logic lab=OUT_Pi}
C {lab_pin.sym} 1120 -80 0 0 {name=p20 sig_type=std_logic lab=OUT_Ni}
C {opin.sym} 1440 -170 0 0 {name=p21 lab=OUT_P}
C {opin.sym} 1440 -80 0 0 {name=p22 lab=OUT_N}
C {lab_pin.sym} 620 -10 0 0 {name=p23 sig_type=std_logic lab=ENi}
C {sg13g2_stdcells/sg13g2_buf_4.sym} 310 -130 0 0 {name=x1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 1350 -170 0 0 {name=x6 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 1350 -80 0 0 {name=x2 VDD=VDD VSS=VSS prefix=sg13g2_ }
