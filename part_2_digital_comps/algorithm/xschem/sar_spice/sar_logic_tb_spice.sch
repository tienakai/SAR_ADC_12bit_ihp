v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 2250 1590 3050 1980 {flags=graph
y1=0
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=7.2872748e-05
x2=0.00012630899
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0



color=4
node=clk}
B 2 3060 1190 3860 1580 {flags=graph
y1=0
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=7.2872748e-05
x2=0.00012630899
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0



color="4 5 17 7 8 12 18 20"
node="bn0
bn1
bn2
bn3
bn4
bn5
bn6
bn7"}
B 2 3060 780 3860 1170 {flags=graph
y1=0
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=7.2872748e-05
x2=0.00012630899
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0



color="7 6 4 12 13 10 17"
node="d0
d1
d3
d4
d5
d6
d7"}
B 2 2250 1190 3050 1580 {flags=graph
y1=0
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=7.2872748e-05
x2=0.00012630899
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0



color="4 7"
node="en
rst"}
B 2 2250 780 3050 1170 {flags=graph
y1=0
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=7.2872748e-05
x2=0.00012630899
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0



color="7 8"
node="op
om"}
B 2 3060 1590 3860 1980 {flags=graph
y1=0
y2=1.3
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=7.2872748e-05
x2=0.00012630899
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0



color="4 5 18 8 13 10 5 7"
node="b0
b1
b2
b3
b4
b5
b6
b7"}
T {Analog} 590 1540 0 0 0.4 0.4 {}
T {Analog} 520 1780 0 0 0.4 0.4 {}
N 1220 2380 1240 2380 {lab=rst}
N 1220 2340 1240 2340 {lab=Om}
N 1220 2320 1240 2320 {lab=En}
N 1220 2300 1240 2300 {lab=Op}
N 1220 2280 1240 2280 {lab=clk}
N 1540 2310 1740 2310 {
lab=B5}
N 1540 2330 1740 2330 {lab=B4}
N 1540 2350 1740 2350 {lab=B3}
N 1540 2370 1740 2370 {lab=B2}
N 1540 2390 1740 2390 {lab=B1}
N 1540 2410 1740 2410 {lab=B0}
N 1540 2430 1740 2430 {lab=BN7}
N 1540 2500 1740 2500 {lab=BN6}
N 1540 2520 1740 2520 {lab=BN5}
N 1540 2540 1740 2540 {lab=BN4}
N 1540 2560 1740 2560 {lab=BN3}
N 1540 2580 1740 2580 {lab=BN2}
N 1540 2600 1740 2600 {lab=BN1}
N 1540 2620 1740 2620 {lab=BN0}
N 1540 2640 1740 2640 {lab=D7}
N 1540 2660 1740 2660 {lab=D6}
N 1540 2680 1740 2680 {lab=D5}
N 1540 2700 1740 2700 {lab=D4}
N 1540 2720 1740 2720 {lab=D3}
N 1540 2740 1740 2740 {lab=D2}
N 1540 2760 1740 2760 {lab=D1}
N 1540 2780 1740 2780 {lab=D0}
N 880 2190 880 2210 {lab=vdd}
N 880 2270 880 2280 {lab=GND}
N 1390 2840 1390 2850 {lab=GND}
N 510 1840 510 1850 {lab=Op}
N 510 1910 510 1920 {lab=GND}
N 510 2060 510 2070 {lab=Om}
N 510 2130 510 2140 {lab=GND}
N 510 1950 510 1960 {lab=En}
N 510 2020 510 2030 {lab=GND}
N 510 2390 510 2400 {lab=GND}
N 510 2310 510 2330 {lab=rst}
N 510 2190 510 2200 {lab=clk}
N 510 2260 510 2270 {lab=GND}
C {devices/title.sym} -470 2580 0 0 {name=l5 author="Copyright 2024 IHP PDK Authors"}
C {devices/launcher.sym} 1167.5 2090 0 0 {name=h1
descr="load waves Ctrl + left click" 
tclcommand="xschem raw_read $netlist_dir/sar_logic12_tb.raw tran"
}
C {devices/lab_pin.sym} 1740 2310 2 0 {name=p6 sig_type=std_logic lab=B5}
C {devices/lab_pin.sym} 1740 2370 2 0 {name=p7 sig_type=std_logic lab=B2}
C {devices/lab_pin.sym} 1740 2350 2 0 {name=p15 sig_type=std_logic lab=B3}
C {devices/lab_pin.sym} 1740 2330 2 0 {name=p16 sig_type=std_logic lab=B4}
C {devices/lab_pin.sym} 1220 2380 2 1 {name=p2 sig_type=std_logic lab=rst}
C {devices/lab_pin.sym} 1220 2280 2 1 {name=p12 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 1220 2300 2 1 {name=p3 sig_type=std_logic lab=Op}
C {devices/lab_pin.sym} 1220 2320 2 1 {name=p13 sig_type=std_logic lab=En}
C {devices/lab_pin.sym} 1220 2340 2 1 {name=p14 sig_type=std_logic lab=Om}
C {devices/lab_pin.sym} 1740 2390 2 0 {name=p18 sig_type=std_logic lab=B1}
C {devices/lab_pin.sym} 1740 2410 2 0 {name=p19 sig_type=std_logic lab=B0}
C {devices/lab_pin.sym} 1740 2430 2 0 {name=p20 sig_type=std_logic lab=BN7}
C {devices/lab_pin.sym} 1740 2500 2 0 {name=p21 sig_type=std_logic lab=BN6}
C {devices/lab_pin.sym} 1740 2520 2 0 {name=p22 sig_type=std_logic lab=BN5}
C {devices/lab_pin.sym} 1740 2540 2 0 {name=p23 sig_type=std_logic lab=BN4}
C {devices/lab_pin.sym} 1740 2560 2 0 {name=p24 sig_type=std_logic lab=BN3}
C {devices/lab_pin.sym} 1740 2580 2 0 {name=p25 sig_type=std_logic lab=BN2}
C {devices/lab_pin.sym} 1740 2600 2 0 {name=p26 sig_type=std_logic lab=BN1}
C {devices/lab_pin.sym} 1740 2620 2 0 {name=p27 sig_type=std_logic lab=BN0}
C {devices/lab_pin.sym} 1740 2640 2 0 {name=p28 sig_type=std_logic lab=D7}
C {devices/lab_pin.sym} 1740 2660 2 0 {name=p29 sig_type=std_logic lab=D6}
C {devices/lab_pin.sym} 1740 2680 2 0 {name=p30 sig_type=std_logic lab=D5}
C {devices/lab_pin.sym} 1740 2700 2 0 {name=p31 sig_type=std_logic lab=D4}
C {devices/lab_pin.sym} 1740 2720 2 0 {name=p32 sig_type=std_logic lab=D3}
C {devices/lab_pin.sym} 1740 2740 2 0 {name=p33 sig_type=std_logic lab=D2}
C {devices/lab_pin.sym} 1740 2760 2 0 {name=p34 sig_type=std_logic lab=D1}
C {devices/lab_pin.sym} 1740 2780 2 0 {name=p35 sig_type=std_logic lab=D0}
C {devices/code_shown.sym} 1080 1750 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerRES.lib res_typ_stat
.include [xschem get current_dirname]/sar_logic.spice
.include $PDK_ROOT/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {devices/vsource.sym} 880 2240 0 1 {name=V1 value=1.2}
C {devices/gnd.sym} 880 2280 0 1 {name=l11 lab=GND
value=1.2}
C {devices/lab_pin.sym} 880 2190 2 1 {name=p4 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 1400 2250 3 1 {name=p10 sig_type=std_logic lab=vdd}
C {devices/gnd.sym} 1390 2850 0 1 {name=l3 lab=GND
value=1.2}
C {sar_logic.sym} 1160 2230 0 0 {name=x1}
C {devices/vsource.sym} 510 1990 0 0 {name=V3 value="dc 0 ac 0 PULSE(1.2 0 0 1n 1n 30u 1m)"}
C {devices/gnd.sym} 510 1920 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 510 1840 2 0 {name=p5 sig_type=std_logic lab=Op}
C {devices/gnd.sym} 510 2140 0 0 {name=l7 lab=GND}
C {devices/lab_pin.sym} 510 2060 2 0 {name=p8 sig_type=std_logic lab=Om}
C {devices/lab_pin.sym} 510 1950 2 0 {name=p9 sig_type=std_logic lab=En}
C {devices/gnd.sym} 510 2030 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} 510 2310 2 0 {name=p11 sig_type=std_logic lab=rst}
C {devices/gnd.sym} 510 2400 0 0 {name=l10 lab=GND}
C {devices/vsource.sym} 510 1880 0 0 {name=V6 value="dc 0 ac 0 PULSE(1.2 0 100u 1n 1n 500u 1m)"}
C {devices/vsource.sym} 510 2360 0 0 {name=V2 value="dc 0 ac 0 PULSE(0 1.2 100u 1n 1n 10u 1m)"}
C {devices/vsource.sym} 510 2100 0 0 {name=V5 value="dc 0 ac 0 PULSE(0 1.2 100u 1n 1n 500u 1m)"}
C {devices/gnd.sym} 510 2270 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 510 2190 2 0 {name=p1 sig_type=std_logic lab=clk}
C {devices/vsource.sym} 510 2230 0 0 {name=V4 value="dc 0 ac 0 PULSE(0 1.2 0 10p 10p 5u 10u)"}
C {devices/code_shown.sym} 1080 1890 0 0 {name=NGSPICE1 only_toplevel=true 
value="
.param temp=27
.control
save all 
tran 10n 200u UIC
write sar_logic_tb_spice.raw
.endc
"}
C {simulator_commands_shown.sym} 1070 1550 0 0 {
name=Libs_Ngspice
simulator=ngspice
only_toplevel=false
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerHBT.lib hbt_typ
.lib cornerRES.lib res_typ
.lib cornerDIO.lib dio_tt
"
      }
