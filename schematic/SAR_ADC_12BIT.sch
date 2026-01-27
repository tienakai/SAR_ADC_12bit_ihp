v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 3560 -900 3560 -820 {
lab=C10_P_btm}
N 3220 -900 3220 -820 {
lab=C9_P_btm}
N 2880 -900 2880 -820 {
lab=C8_P_btm}
N 2540 -900 2540 -820 {
lab=C7_P_btm}
N 2200 -900 2200 -820 {
lab=C6_P_btm}
N 1860 -900 1860 -820 {
lab=C5_P_btm}
N 1520 -900 1520 -820 {
lab=C4_P_btm}
N 1180 -900 1180 -820 {
lab=C3_P_btm}
N 840 -900 840 -820 {
lab=C2_P_btm}
N 500 -900 500 -820 {
lab=C1_P_btm}
N 160 -900 160 -820 {
lab=C0_P_btm}
N -180 -900 -180 -820 {
lab=C0_dummy_P_btm}
N 3560 -620 3560 -540 {
lab=C10_N_btm}
N 3220 -620 3220 -540 {
lab=C9_N_btm}
N 2880 -620 2880 -540 {
lab=C8_N_btm}
N 2540 -620 2540 -540 {
lab=C7_N_btm}
N 2200 -620 2200 -540 {
lab=C6_N_btm}
N 1860 -620 1860 -540 {
lab=C5_N_btm}
N 1520 -620 1520 -540 {
lab=C4_N_btm}
N 1180 -620 1180 -540 {
lab=C3_N_btm}
N 840 -620 840 -540 {
lab=C2_N_btm}
N 500 -620 500 -540 {
lab=C1_N_btm}
N 160 -620 160 -540 {
lab=C0_N_btm}
N -180 -620 -180 -540 {
lab=C0_dummy_N_btm}
N 4000 -720 4020 -720 {
lab=RST_Z}
N -760 -120 -740 -120 {
lab=SMPL}
N -760 -160 -740 -160 {
lab=VIN_P}
N -580 -160 -560 -160 {
lab=SMPL_ON_P}
N -580 -110 -560 -110 {
lab=EN_VIN_BSTR_P}
N -760 120 -740 120 {
lab=SMPL}
N -760 80 -740 80 {
lab=VIN_N}
N -580 80 -560 80 {
lab=SMPL_ON_N}
N -580 130 -560 130 {
lab=EN_VIN_BSTR_N}
N 3880 -680 4020 -680 {
lab=VDAC_N}
N 3880 -760 4020 -760 {
lab=VDAC_P}
N 3880 -680 3880 -540 {
lab=VDAC_N}
N 3880 -900 3880 -760 {
lab=VDAC_P}
N -100 -30 -80 -30 {
lab=RST_Z}
N -100 -10 -80 -10 {
lab=START}
N 4200 -740 4220 -740 {
lab=VDAC_Pi}
N 4220 -740 4240 -760 {
lab=VDAC_Pi}
N 4240 -760 4360 -760 {
lab=VDAC_Pi}
N 4200 -700 4220 -700 {
lab=VDAC_Ni}
N 4220 -700 4240 -680 {
lab=VDAC_Ni}
N 4240 -680 4360 -680 {
lab=VDAC_Ni}
N 4540 -700 4680 -700 {
lab=COMP_N}
N 4640 -740 4680 -740 {
lab=COMP_P}
N 4420 -920 4640 -920 {
lab=COMP_P}
N 4100 -970 4100 -820 {
lab=CAL_P}
N 4100 -970 4220 -970 {
lab=CAL_P}
N 4140 -950 4140 -820 {
lab=CAL_N}
N 4140 -950 4220 -950 {
lab=CAL_N}
N 4640 -920 4640 -740 {
lab=COMP_P}
N 220 -10 240 -10 {
lab=CLK_DATA}
N 220 -30 240 -30 {
lab=DATA[5:0]}
N -100 10 -80 10 {
lab=EN_OFFSET_CAL}
N -100 310 -80 310 {
lab=CLK}
N -100 30 -80 30 {
lab=SINGLE_ENDED}
N 4540 -740 4640 -740 {
lab=COMP_P}
N 4430 -820 4430 -790 {lab=VDD}
N 4430 -650 4430 -620 {lab=VSS}
N -180 -760 3880 -760 {lab=VDAC_P}
N -180 -680 3880 -680 {lab=VDAC_N}
C {devices/ipin.sym} -680 -1160 0 0 {name=p73 lab=VIN_P}
C {devices/lab_wire.sym} 3640 -820 0 1 {name=p75 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} -680 -1260 0 0 {name=p77 lab=VDD}
C {devices/ipin.sym} -680 -1220 0 0 {name=p78 lab=VREF}
C {devices/ipin.sym} -680 -1240 0 0 {name=p79 lab=VCM}
C {devices/ipin.sym} -680 -1100 0 0 {name=p80 lab=VSS}
C {devices/lab_wire.sym} 3940 -760 0 1 {name=p81 sig_type=std_logic lab=VDAC_P}
C {devices/ipin.sym} -680 -1140 2 1 {name=p153 lab=VIN_N}
C {devices/lab_wire.sym} 3640 -620 2 0 {name=p154 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 3940 -680 0 1 {name=p160 sig_type=std_logic lab=VDAC_N}
C {devices/lab_wire.sym} 4430 -620 2 0 {name=p155 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 4430 -820 0 1 {name=p156 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 4360 -720 0 0 {name=p157 sig_type=std_logic lab=EN_COMP}
C {devices/lab_pin.sym} -760 -120 0 0 {name=p158 sig_type=std_logic lab=SMPL}
C {devices/lab_pin.sym} -760 -160 0 0 {name=p159 sig_type=std_logic lab=VIN_P}
C {devices/lab_wire.sym} -660 -60 2 0 {name=p161 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -660 -200 0 1 {name=p162 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -560 -160 0 1 {name=p163 sig_type=std_logic lab=SMPL_ON_P}
C {devices/lab_pin.sym} -560 -110 0 1 {name=p164 sig_type=std_logic lab=EN_VIN_BSTR_P}
C {devices/lab_pin.sym} -760 80 0 0 {name=p166 sig_type=std_logic lab=VIN_N}
C {devices/lab_wire.sym} -660 180 2 0 {name=p167 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -660 40 0 1 {name=p168 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -560 80 0 1 {name=p169 sig_type=std_logic lab=SMPL_ON_N}
C {devices/lab_pin.sym} -560 130 0 1 {name=p170 sig_type=std_logic lab=EN_VIN_BSTR_N}
C {devices/lab_pin.sym} 4680 -740 0 1 {name=p175 sig_type=std_logic lab=COMP_P}
C {devices/lab_pin.sym} 4680 -700 0 1 {name=p176 sig_type=std_logic lab=COMP_N}
C {devices/lab_pin.sym} -80 70 0 0 {name=p177 sig_type=std_logic lab=COMP_P}
C {devices/lab_pin.sym} 220 90 0 1 {name=p181 sig_type=std_logic lab=EN_VCM[10:0]}
C {devices/lab_pin.sym} 220 310 0 1 {name=p189 sig_type=std_logic lab=EN_COMP}
C {devices/lab_pin.sym} 220 50 0 1 {name=p191 sig_type=std_logic lab=SMPL}
C {devices/lab_pin.sym} -180 -580 0 0 {name=p232 sig_type=std_logic lab=C0_dummy_N_btm}
C {devices/lab_pin.sym} 160 -580 0 0 {name=p233 sig_type=std_logic lab=C0_N_btm}
C {devices/lab_pin.sym} 500 -580 0 0 {name=p234 sig_type=std_logic lab=C1_N_btm}
C {devices/lab_pin.sym} 840 -580 0 0 {name=p235 sig_type=std_logic lab=C2_N_btm}
C {devices/lab_pin.sym} 1180 -580 0 0 {name=p236 sig_type=std_logic lab=C3_N_btm}
C {devices/lab_pin.sym} 1520 -580 0 0 {name=p237 sig_type=std_logic lab=C4_N_btm}
C {devices/lab_pin.sym} 1860 -580 0 0 {name=p238 sig_type=std_logic lab=C5_N_btm}
C {devices/lab_pin.sym} 2200 -580 0 0 {name=p239 sig_type=std_logic lab=C6_N_btm}
C {devices/lab_pin.sym} 2540 -580 0 0 {name=p240 sig_type=std_logic lab=C7_N_btm}
C {devices/lab_pin.sym} 2880 -580 0 0 {name=p241 sig_type=std_logic lab=C8_N_btm}
C {devices/lab_pin.sym} 3220 -580 0 0 {name=p242 sig_type=std_logic lab=C9_N_btm}
C {devices/lab_pin.sym} 3560 -580 0 0 {name=p243 sig_type=std_logic lab=C10_N_btm}
C {devices/lab_pin.sym} -180 -860 0 0 {name=p244 sig_type=std_logic lab=C0_dummy_P_btm}
C {devices/lab_pin.sym} 160 -860 0 0 {name=p245 sig_type=std_logic lab=C0_P_btm}
C {devices/lab_pin.sym} 500 -860 0 0 {name=p246 sig_type=std_logic lab=C1_P_btm}
C {devices/lab_pin.sym} 840 -860 0 0 {name=p247 sig_type=std_logic lab=C2_P_btm}
C {devices/lab_pin.sym} 1180 -860 0 0 {name=p248 sig_type=std_logic lab=C3_P_btm}
C {devices/lab_pin.sym} 1520 -860 0 0 {name=p249 sig_type=std_logic lab=C4_P_btm}
C {devices/lab_pin.sym} 1860 -860 0 0 {name=p250 sig_type=std_logic lab=C5_P_btm}
C {devices/lab_pin.sym} 2200 -860 0 0 {name=p251 sig_type=std_logic lab=C6_P_btm}
C {devices/lab_pin.sym} 2540 -860 0 0 {name=p252 sig_type=std_logic lab=C7_P_btm}
C {devices/lab_pin.sym} 2880 -860 0 0 {name=p253 sig_type=std_logic lab=C8_P_btm}
C {devices/lab_pin.sym} 3220 -860 0 0 {name=p254 sig_type=std_logic lab=C9_P_btm}
C {devices/lab_pin.sym} 3560 -860 0 0 {name=p255 sig_type=std_logic lab=C10_P_btm}
C {devices/lab_pin.sym} -80 130 0 0 {name=p231 sig_type=std_logic lab=SMPL_ON_P}
C {devices/lab_pin.sym} -80 150 0 0 {name=p256 sig_type=std_logic lab=SMPL_ON_N}
C {devices/lab_pin.sym} -400 -1040 0 0 {name=p150 sig_type=std_logic lab=EN_VCM_DUMMY}
C {devices/lab_wire.sym} 70 490 2 0 {name=p76 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 70 -60 0 1 {name=p171 sig_type=std_logic lab=VDD}
C {devices/ipin.sym} -100 -30 0 0 {name=p172 lab=RST_Z}
C {devices/ipin.sym} -100 -10 0 0 {name=p173 lab=START}
C {devices/opin.sym} 240 -10 0 0 {name=p174 lab=CLK_DATA}
C {devices/lab_pin.sym} 4000 -720 0 0 {name=p195 sig_type=std_logic lab=RST_Z}
C {devices/lab_wire.sym} 4060 -820 0 1 {name=p196 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 4100 -620 2 0 {name=p197 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 4340 -760 0 0 {name=p198 sig_type=std_logic lab=VDAC_Pi}
C {devices/lab_wire.sym} 4340 -680 2 1 {name=p199 sig_type=std_logic lab=VDAC_Ni}
C {devices/lab_pin.sym} -400 -1020 0 0 {name=p194 sig_type=std_logic lab=EN_VCM_SW}
C {devices/lab_pin.sym} 220 350 0 1 {name=p201 sig_type=std_logic lab=OFFSET_CAL_CYCLE}
C {devices/lab_pin.sym} 4420 -960 0 1 {name=p202 sig_type=std_logic lab=OFFSET_CAL_CYCLE}
C {devices/lab_pin.sym} 4420 -940 0 1 {name=p209 sig_type=std_logic lab=EN_COMP}
C {devices/lab_wire.sym} 4320 -1020 0 1 {name=p213 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 4320 -880 2 0 {name=p216 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 4210 -970 0 0 {name=p217 sig_type=std_logic lab=CAL_P}
C {devices/lab_wire.sym} 4210 -950 0 0 {name=p218 sig_type=std_logic lab=CAL_N}
C {devices/lab_pin.sym} 220 370 0 1 {name=p219 sig_type=std_logic lab=EN_VOS_CAL}
C {devices/lab_pin.sym} 4420 -1000 0 1 {name=p220 sig_type=std_logic lab=EN_VOS_CAL}
C {devices/opin.sym} 240 -30 0 0 {name=p4 lab=DATA[5:0]}
C {devices/lab_pin.sym} -760 120 0 0 {name=p21 sig_type=std_logic lab=SMPL}
C {devices/lab_pin.sym} -400 -960 2 1 {name=p47 lab=EN_VCM[10:0]}
C {devices/lab_pin.sym} -400 -1000 2 1 {name=p50 lab=EN_VSS_P[10:0]}
C {devices/lab_pin.sym} -400 -980 2 1 {name=p51 lab=EN_REF_Z_P[10:0]}
C {devices/lab_pin.sym} -400 -940 2 1 {name=p57 lab=EN_VIN_BSTR_P}
C {devices/lab_pin.sym} 220 130 0 1 {name=p132 sig_type=std_logic lab=EN_VCM_SW}
C {devices/lab_pin.sym} 220 110 0 1 {name=p131 sig_type=std_logic lab=EN_VCM_DUMMY}
C {devices/lab_pin.sym} 220 230 0 1 {name=p134 lab=EN_VSS_N[10:0]}
C {devices/lab_pin.sym} 220 210 0 1 {name=p135 lab=EN_REF_Z_N[10:0]}
C {devices/lab_pin.sym} 900 -30 0 1 {name=p136 lab=EN_VSS_P[10:0]}
C {devices/lab_pin.sym} 900 -10 0 1 {name=p137 lab=EN_REF_Z_P[10:0]}
C {devices/lab_wire.sym} -360 -900 2 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -400 -400 2 1 {name=p2 sig_type=std_logic lab=EN_VCM_DUMMY}
C {devices/lab_pin.sym} -400 -420 2 1 {name=p3 sig_type=std_logic lab=EN_VCM_SW}
C {devices/lab_pin.sym} -400 -480 0 0 {name=p5 lab=EN_VCM[10:0]}
C {devices/lab_pin.sym} -400 -440 0 0 {name=p6 lab=EN_VSS_N[10:0]}
C {devices/lab_pin.sym} -400 -460 0 0 {name=p7 lab=EN_REF_Z_N[10:0]}
C {devices/lab_pin.sym} -400 -500 0 0 {name=p8 lab=EN_VIN_BSTR_N}
C {devices/lab_wire.sym} -360 -540 0 1 {name=p12 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -340 -320 2 1 {name=p13 sig_type=std_logic lab=VREF_GND}
C {devices/lab_wire.sym} -300 -320 2 1 {name=p14 sig_type=std_logic lab=VREF}
C {devices/lab_wire.sym} -260 -320 2 1 {name=p16 sig_type=std_logic lab=VIN_N}
C {devices/lab_wire.sym} -220 -320 2 1 {name=p17 sig_type=std_logic lab=VCM}
C {devices/ipin.sym} -100 10 0 0 {name=p11 lab=EN_OFFSET_CAL}
C {devices/ipin.sym} -100 310 0 0 {name=p15 lab=CLK}
C {devices/lab_pin.sym} -80 370 0 0 {name=p23 sig_type=std_logic lab=EN_VCM_SW}
C {devices/lab_pin.sym} -80 390 0 0 {name=p24 sig_type=std_logic lab=EN_VCM[10:0]}
C {devices/lab_wire.sym} -180 -320 2 1 {name=p26 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -340 -1120 0 0 {name=p18 sig_type=std_logic lab=VREF_GND}
C {devices/lab_wire.sym} -300 -1120 0 0 {name=p19 sig_type=std_logic lab=VREF}
C {devices/lab_wire.sym} -260 -1120 0 0 {name=p20 sig_type=std_logic lab=VIN_P}
C {devices/lab_wire.sym} -220 -1120 0 0 {name=p22 sig_type=std_logic lab=VCM}
C {devices/lab_wire.sym} -180 -1120 0 0 {name=p27 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} -680 -1200 0 0 {name=p28 lab=VREF_GND}
C {devices/lab_wire.sym} 750 -60 0 1 {name=p29 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 750 20 2 0 {name=p30 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 220 190 0 1 {name=p31 lab=EN_VSS_P_BBM[10:0]}
C {devices/lab_pin.sym} 220 170 0 1 {name=p32 lab=EN_REF_Z_P_BBM[10:0]}
C {devices/lab_pin.sym} 600 -10 0 0 {name=p33 lab=EN_REF_Z_P_BBM[10:0]}
C {devices/lab_pin.sym} 600 -30 0 0 {name=p34 lab=EN_VSS_P_BBM[10:0]}
C {devices/ipin.sym} -100 30 0 0 {name=p9 lab=SINGLE_ENDED}
C {latched_comparator/latched_comparator.sym} 4070 -530 0 0 {name=x1}
C {offset_calibration/offset_calibration-1.sym} 4690 -810 0 1 {name=x2}
C {preamplifier/preamplifier.sym} 3790 -470 0 0 {name=x3}
C {switches/switches.sym} 1830 -1580 2 1 {name=x4}
C {switches/switches.sym} 1830 140 0 0 {name=x5}
C {break_before_make/break_before_make.sym} 410 150 0 0 {name=x8}
C {bootstrap/bootstrap.sym} -760 40 0 0 {name=x9}
C {bootstrap/bootstrap.sym} -760 280 0 0 {name=x10}
C {capa.sym} -180 -790 0 0 {name=C0_dummy
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 160 -790 0 0 {name=C0
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 500 -790 0 0 {name=C1
m=1
value=20f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 840 -790 0 0 {name=C2
m=1
value=40f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1180 -790 0 0 {name=C3
m=1
value=80f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1520 -790 0 0 {name=C4
m=1
value=160f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1860 -790 0 0 {name=C5
m=1
value=320f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 2200 -790 0 0 {name=C6
m=1
value=640f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 2540 -790 0 0 {name=C7
m=1
value=1.28p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 2880 -790 0 0 {name=C8
m=1
value=2.56p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 3220 -790 0 0 {name=C9
m=1
value=5.12p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 3560 -790 0 0 {name=C10
m=1
value=10.24p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 3640 -790 0 0 {name=C11
m=1
value=20.48p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} -180 -650 0 0 {name=C12
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 160 -650 0 0 {name=C13
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 500 -650 0 0 {name=C14
m=1
value=20f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 840 -650 0 0 {name=C15
m=1
value=40f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1180 -650 0 0 {name=C16
m=1
value=80f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1520 -650 0 0 {name=C17
m=1
value=160f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1860 -650 0 0 {name=C18
m=1
value=320f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 2200 -650 0 0 {name=C19
m=1
value=640f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 2540 -650 0 0 {name=C20
m=1
value=1.28p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 2880 -650 0 0 {name=C21
m=1
value=2.56p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 3220 -650 0 0 {name=C22
m=1
value=5.12p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 3560 -650 0 0 {name=C23
m=1
value=10.24p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 3640 -650 0 0 {name=C24
m=1
value=20.48p
footprint=1206
device="ceramic capacitor"}
C {state_machine/state_machine.sym} 100 80 0 0 {name=x7}
