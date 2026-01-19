v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 170 -820 230 -820 {lab=VDD}
N 420 -820 440 -820 {lab=Vtop}
N 500 -820 580 -820 {lab=VGATE}
N 340 -820 340 -700 {lab=Vtop}
N 310 -820 340 -820 {lab=Vtop}
N 370 -820 400 -820 {lab=Vtop}
N 400 -820 400 -700 {lab=Vtop}
N 260 -820 260 -800 {lab=Vtop}
N 260 -800 310 -800 {lab=Vtop}
N 310 -820 310 -800 {lab=Vtop}
N 290 -820 310 -820 {lab=Vtop}
N 470 -820 470 -800 {lab=Vtop}
N 420 -800 470 -800 {lab=Vtop}
N 420 -820 420 -800 {lab=Vtop}
N 400 -820 420 -820 {lab=Vtop}
N 370 -560 470 -560 {lab=Vbottom}
N 370 -660 370 -560 {lab=Vbottom}
N 290 -560 370 -560 {lab=Vbottom}
N 530 -560 560 -560 {lab=VIN}
N 560 -560 560 -460 {lab=VIN}
N 130 -460 560 -460 {lab=VIN}
N 130 -560 230 -560 {lab=VSS}
N 500 -660 500 -600 {lab=VGATE}
N 580 -820 580 -660 {lab=VGATE}
N 500 -660 580 -660 {lab=VGATE}
N 260 -970 260 -860 {lab=VGATE}
N 260 -970 580 -970 {lab=VGATE}
N 580 -970 580 -820 {lab=VGATE}
N 580 -820 650 -820 {lab=VGATE}
N 660 -660 840 -660 {lab=VGATE}
N 370 -820 370 -700 {lab=Vtop}
N 340 -820 370 -820 {lab=Vtop}
N 790 -500 830 -500 {lab=#net1}
N 260 -630 260 -600 {lab=EN_Z}
N 470 -890 470 -860 {lab=EN_Z_LVL_SHFT}
N 910 -500 980 -500 {lab=SW_ON}
N 250 -290 250 -160 {lab=EN}
N 210 -290 250 -290 {lab=EN}
N 250 -160 590 -160 {lab=EN}
N 590 -290 600 -290 {lab=EN}
N 590 -160 590 -100 {lab=EN}
N 590 -290 590 -160 {lab=EN}
N 590 -100 600 -100 {lab=EN}
N 640 -190 640 -130 {lab=EN_Z_LVL_SHFT}
N 640 -350 640 -320 {lab=VDD}
N 640 -70 640 -40 {lab=Vbottom}
N 810 -190 860 -190 {lab=EN_Z_LVL_SHFT}
N 640 -260 640 -190 {lab=EN_Z_LVL_SHFT}
N 810 -190 810 -130 {lab=EN_Z_LVL_SHFT}
N 640 -190 810 -190 {lab=EN_Z_LVL_SHFT}
N 810 -70 810 -40 {lab=Vbottom}
N 640 -40 810 -40 {lab=Vbottom}
N 550 -40 640 -40 {lab=Vbottom}
N 850 -100 890 -100 {lab=VGATE}
N 850 -820 900 -820 {lab=VSS}
N 820 -890 820 -860 {lab=EN_Z}
N 710 -820 790 -820 {lab=#net2}
N 660 -500 710 -500 {lab=VGATE_1V8}
N 680 -890 680 -860 {lab=VDD}
N 660 -660 660 -600 {lab=VGATE}
N 580 -660 660 -660 {lab=VGATE}
N 660 -540 660 -500 {lab=VGATE_1V8}
N 610 -570 620 -570 {lab=VDD}
N 250 -290 280 -290 {lab=EN}
N 360 -290 410 -290 {lab=EN_Z}
C {sg13g2_pr/sg13_lv_pmos.sym} 260 -840 1 0 {name=M5
l=0.15u
w=0.32u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 470 -840 3 1 {name=M1
l=0.38u
w=16u
ng=4
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 370 -680 3 0 {name=M2
l=10u
w=10u
ng=2
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 620 -290 0 0 {name=M6
l=0.15u
w=0.35u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 620 -100 0 0 {name=M7
l=0.15u
w=0.63u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 830 -100 0 1 {name=M8
l=0.15u
w=1.8u
ng=2
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {ipin.sym} 170 -820 0 0 {name=p1 lab=VDD}
C {ipin.sym} 130 -560 0 0 {name=p2 lab=VSS}
C {ipin.sym} 130 -460 0 0 {name=p3 lab=VIN}
C {ipin.sym} 210 -290 0 0 {name=p4 lab=EN}
C {opin.sym} 840 -660 0 0 {name=p5 lab=VGATE}
C {opin.sym} 980 -500 0 0 {name=p6 lab=SW_ON}
C {lab_pin.sym} 640 -350 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 680 -890 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 900 -820 0 1 {name=p10 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 680 -820 1 1 {name=p11 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 820 -820 1 1 {name=p12 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 260 -560 1 1 {name=p13 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 500 -560 1 1 {name=p14 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_lv_nmos.sym} 260 -580 1 0 {name=M3
l=0.15u
w=3.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 500 -580 1 0 {name=M10
l=0.15u
w=3.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} 260 -630 0 0 {name=p16 sig_type=std_logic lab=EN_Z}
C {lab_wire.sym} 410 -290 0 1 {name=p15 sig_type=std_logic lab=EN_Z}
C {lab_pin.sym} 550 -40 0 0 {name=p17 sig_type=std_logic lab=Vbottom}
C {lab_wire.sym} 370 -560 0 0 {name=p18 sig_type=std_logic lab=Vbottom}
C {lab_wire.sym} 370 -820 0 0 {name=p19 sig_type=std_logic lab=Vtop}
C {lab_wire.sym} 470 -890 0 0 {name=p20 sig_type=std_logic lab=EN_Z_LVL_SHFT}
C {lab_wire.sym} 820 -890 0 0 {name=p21 sig_type=std_logic lab=EN_Z}
C {lab_pin.sym} 660 -500 0 0 {name=p22 sig_type=std_logic lab=VGATE_1V8}
C {lab_wire.sym} 860 -190 0 1 {name=p23 sig_type=std_logic lab=EN_Z_LVL_SHFT}
C {lab_pin.sym} 890 -100 0 1 {name=p24 sig_type=std_logic lab=VGATE}
C {lab_pin.sym} 640 -100 2 0 {name=p26 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 810 -100 2 1 {name=p27 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 640 -290 2 0 {name=p28 sig_type=std_logic lab=VDD}
C {sg13g2_pr/sg13_lv_nmos.sym} 820 -840 3 1 {name=M4
l=0.15u
w=3.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_pin.sym} 610 -570 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 660 -570 0 1 {name=p25 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_hv_nmos.sym} 680 -840 3 1 {name=M9
l=0.45u
w=6.3u
ng=2
m=1
model=sg13_hv_nmos
spiceprefix=X
}
C {sg13g2_stdcells/sg13g2_inv_2.sym} 870 -500 0 0 {name=x2 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} 750 -500 0 0 {name=x4 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} 320 -290 0 0 {name=x1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_pr/sg13_lv_nmos.sym} 640 -570 0 0 {name=M11
l=0.45u
w=3.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
