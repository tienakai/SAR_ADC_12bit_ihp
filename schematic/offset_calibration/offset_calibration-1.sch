v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 550 -220 550 -180 {
lab=#net1}
N 550 -380 550 -280 {
lab=#net2}
N 550 -680 550 -640 {
lab=#net3}
N 550 -870 550 -740 {
lab=VDD}
N 290 -380 380 -380 {
lab=CAL_P}
N 290 -520 380 -520 {
lab=CAL_P}
N 290 -520 290 -380 {
lab=CAL_P}
N 440 -520 550 -520 {
lab=#net2}
N 440 -380 550 -380 {
lab=#net2}
N 410 -870 550 -870 {
lab=VDD}
N -210 -220 -210 -180 {
lab=#net4}
N -210 -380 -210 -280 {
lab=#net5}
N -210 -680 -210 -640 {
lab=#net6}
N -210 -870 -210 -740 {
lab=VDD}
N 50 -520 50 -380 {
lab=CAL_N}
N -210 -520 -100 -520 {
lab=#net5}
N -210 -380 -100 -380 {
lab=#net5}
N -40 -380 50 -380 {
lab=CAL_N}
N -40 -520 50 -520 {
lab=CAL_N}
N -730 -490 -630 -490 {
lab=LOAD_CAL_Z}
N 50 -870 50 -780 {
lab=VDD}
N 10 -780 20 -780 {
lab=VDD}
N 10 -870 10 -780 {
lab=VDD}
N 80 -780 90 -780 {
lab=VDD}
N 90 -870 90 -780 {
lab=VDD}
N 50 -710 50 -520 {
lab=CAL_N}
N 290 -870 290 -780 {
lab=VDD}
N 320 -780 330 -780 {
lab=VDD}
N 330 -870 330 -780 {
lab=VDD}
N 250 -780 260 -780 {
lab=VDD}
N 250 -870 250 -780 {
lab=VDD}
N 290 -710 290 -520 {
lab=CAL_P}
N 90 -870 250 -870 {
lab=VDD}
N -310 -870 -210 -870 {
lab=VDD}
N -210 -10 550 -10 {
lab=VSS}
N 50 -380 70 -380 {
lab=CAL_N}
N 270 -380 290 -380 {
lab=CAL_P}
N -210 -120 -210 -10 {
lab=VSS}
N 550 -120 550 -10 {
lab=VSS}
N -70 -760 -70 -710 {
lab=CAL_N}
N -70 -710 50 -710 {
lab=CAL_N}
N 410 -760 410 -710 {
lab=CAL_P}
N 290 -710 410 -710 {
lab=CAL_P}
N -870 -730 -850 -730 {
lab=CAL_RESULT}
N -730 -710 -630 -710 {
lab=CAL_RESULT_Z}
N -870 -690 -850 -690 {
lab=CAL_CYCLE}
N -730 -610 -630 -610 {
lab=EN_COMP_Z}
N -870 -590 -850 -590 {
lab=CAL_CYCLE}
N -870 -630 -850 -630 {
lab=EN_COMP}
N -930 -430 -870 -430 {
lab=#net7}
N -930 -490 -850 -490 {
lab=#net8}
N -870 -530 -850 -530 {
lab=EN}
N -870 -450 -870 -430 {
lab=#net7}
N -870 -450 -850 -450 {
lab=#net7}
N -70 -870 -70 -820 {
lab=VDD}
N 410 -870 410 -820 {
lab=VDD}
N 550 -580 550 -520 {
lab=#net2}
N 550 -520 550 -380 {
lab=#net2}
N -210 -580 -210 -520 {
lab=#net5}
N -210 -520 -210 -380 {
lab=#net5}
N 10 -870 50 -870 {
lab=VDD}
N -70 -870 10 -870 {
lab=VDD}
N 50 -870 90 -870 {
lab=VDD}
N 250 -870 290 -870 {
lab=VDD}
N 290 -870 330 -870 {
lab=VDD}
N -310 -10 -210 -10 {
lab=VSS}
N 50 -740 50 -710 {
lab=CAL_N}
N 290 -740 290 -710 {
lab=CAL_P}
N -210 -870 -70 -870 {
lab=VDD}
N 330 -870 410 -870 {
lab=VDD}
C {devices/lab_pin.sym} 550 -710 0 0 {name=p43 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 550 -610 0 0 {name=p44 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 410 -380 3 1 {name=p45 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 410 -520 3 0 {name=p46 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -210 -710 0 1 {name=p47 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -210 -610 0 1 {name=p48 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -70 -380 1 0 {name=p49 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -70 -520 1 1 {name=p50 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -550 -490 0 1 {name=p53 sig_type=std_logic lab=LOAD_CALi}
C {devices/ipin.sym} -870 -630 0 0 {name=p59 lab=EN_COMP}
C {devices/lab_wire.sym} -720 -490 0 1 {name=p61 sig_type=std_logic lab=LOAD_CAL_Z}
C {devices/lab_pin.sym} 590 -250 0 1 {name=p64 sig_type=std_logic lab=EN_COMPi}
C {devices/lab_pin.sym} 590 -610 0 1 {name=p65 sig_type=std_logic lab=EN_COMP_Z}
C {devices/lab_pin.sym} -250 -610 0 0 {name=p66 sig_type=std_logic lab=EN_COMP_Z}
C {devices/lab_pin.sym} -250 -250 0 0 {name=p67 sig_type=std_logic lab=EN_COMPi}
C {devices/lab_pin.sym} 410 -340 3 0 {name=p54 sig_type=std_logic lab=LOAD_CALi}
C {devices/lab_pin.sym} 410 -560 1 0 {name=p55 sig_type=std_logic lab=LOAD_CAL_Z}
C {devices/lab_pin.sym} -70 -340 1 1 {name=p56 sig_type=std_logic lab=LOAD_CALi}
C {devices/lab_pin.sym} -70 -560 3 1 {name=p57 sig_type=std_logic lab=LOAD_CAL_Z}
C {devices/lab_pin.sym} 550 -150 2 1 {name=p68 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 550 -250 2 1 {name=p69 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -210 -150 2 0 {name=p70 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -210 -250 2 0 {name=p71 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -250 -150 0 0 {name=p2 sig_type=std_logic lab=CAL_RESULT_Z}
C {devices/lab_pin.sym} -250 -710 0 0 {name=p3 sig_type=std_logic lab=CAL_RESULT_Z}
C {devices/lab_pin.sym} 590 -150 0 1 {name=p4 sig_type=std_logic lab=CAL_RESULTi}
C {devices/lab_pin.sym} 590 -710 0 1 {name=p5 sig_type=std_logic lab=CAL_RESULTi}
C {devices/opin.sym} 70 -380 0 0 {name=p6 lab=CAL_N}
C {devices/opin.sym} 270 -380 0 1 {name=p7 lab=CAL_P}
C {devices/ipin.sym} -310 -870 0 0 {name=p8 lab=VDD}
C {devices/ipin.sym} -310 -10 0 0 {name=p9 lab=VSS}
C {devices/ipin.sym} -870 -530 0 0 {name=p10 lab=EN}
C {devices/lab_pin.sym} -110 -790 0 0 {name=p11 sig_type=std_logic lab=EN}
C {devices/lab_pin.sym} -70 -790 0 1 {name=p12 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 450 -790 0 1 {name=p13 sig_type=std_logic lab=EN}
C {devices/lab_pin.sym} 410 -790 0 0 {name=p14 sig_type=std_logic lab=VDD}
C {devices/ipin.sym} -870 -730 0 0 {name=p15 lab=CAL_RESULT}
C {devices/lab_wire.sym} -640 -710 0 0 {name=p16 sig_type=std_logic lab=CAL_RESULT_Z}
C {devices/lab_pin.sym} -550 -710 0 1 {name=p17 sig_type=std_logic lab=CAL_RESULTi}
C {devices/ipin.sym} -870 -690 0 0 {name=p18 lab=CAL_CYCLE}
C {devices/lab_wire.sym} -640 -610 0 0 {name=p19 sig_type=std_logic lab=EN_COMP_Z}
C {devices/lab_pin.sym} -550 -610 0 1 {name=p20 sig_type=std_logic lab=EN_COMPi}
C {devices/lab_pin.sym} -870 -590 0 0 {name=p1 sig_type=std_logic lab=CAL_CYCLE}
C {devices/lab_pin.sym} -1010 -490 0 0 {name=p21 sig_type=std_logic lab=EN_COMPi}
C {devices/lab_pin.sym} -1010 -430 0 0 {name=p22 sig_type=std_logic lab=CAL_CYCLE}
C {sg13g2_pr/sg13_lv_pmos.sym} -90 -790 0 0 {name=M2
l=0.35u
w=0.225u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -230 -710 0 0 {name=M1
l=0.35u
w=0.225u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -230 -610 0 0 {name=M3
l=0.35u
w=0.225u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 430 -790 0 1 {name=M4
l=0.35u
w=0.225u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 570 -710 0 1 {name=M5
l=0.35u
w=0.225u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 570 -610 0 1 {name=M6
l=0.35u
w=0.225u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} -70 -540 1 0 {name=M7
l=0.35u
w=0.225u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 410 -540 3 1 {name=M8
l=0.35u
w=0.225u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 50 -760 3 0 {name=M9
l=6.4u
w=10u
ng=3
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 290 -760 1 1 {name=M10
l=6.4u
w=10u
ng=3
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -230 -250 0 0 {name=M11
l=0.35u
w=0.22u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -230 -150 0 0 {name=M12
l=0.35u
w=0.22u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -70 -360 3 0 {name=M13
l=0.35u
w=0.22u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 570 -250 0 1 {name=M14
l=0.35u
w=0.22u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 570 -150 0 1 {name=M15
l=0.35u
w=0.22u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 410 -360 1 1 {name=M16
l=0.35u
w=0.22u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_stdcells/sg13g2_and2_1.sym} -790 -710 0 0 {name=x1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_and2_1.sym} -790 -610 0 0 {name=x2 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_and3_1.sym} -790 -490 0 0 {name=x3 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} -970 -490 0 0 {name=x4 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} -970 -430 0 0 {name=x5 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} -590 -710 0 0 {name=x6 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} -590 -610 0 0 {name=x7 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_1.sym} -590 -490 0 0 {name=x8 VDD=VDD VSS=VSS prefix=sg13g2_ }
