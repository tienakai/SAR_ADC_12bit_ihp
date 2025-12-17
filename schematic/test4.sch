v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 -390 -690 410 -290 {flags=graph
y1=-5e-05
y2=1.4e-11
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-2.3535551
x2=6.5625454
divx=5
subdivx=1
node=i(vd)
color=4
dataset=-1
unitx=1
logx=0
logy=0
sim_type=dc
autoload=1}
T {The Vds source is inverted in 
order to plot positive value of 
the current, which corresponds 
to real value of Ic} -830 -290 0 0 0.3 0.3 {}
T {Ctrl-Click to execute launcher} 90 -270 0 0 0.3 0.3 {layer=11}
T {.save file can be created with IHP->"Create FET and BIP .save file"} 90 -150 0 0 0.3 0.3 {layer=11}
N -650 -110 -650 -90 {
lab=GND}
N -650 -180 -650 -170 {
lab=#net1}
N -520 -150 -520 -90 {
lab=GND}
N -390 -150 -390 -90 {
lab=GND}
N -520 -180 -470 -180 {
lab=GND}
N -470 -180 -470 -90 {
lab=GND}
N -520 -290 -490 -290 {
lab=#net2}
N -430 -290 -390 -290 {
lab=#net3}
N -650 -180 -560 -180 {
lab=#net1}
N -520 -290 -520 -210 {
lab=#net2}
N -390 -290 -390 -210 {
lab=#net3}
C {devices/code_shown.sym} -740 -20 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} -330 -190 0 0 {name=NGSPICE only_toplevel=true 
value="
.options savecurrents
.param temp=27
.control
save all
op
write test4.raw
set appendwrite
dc Vds 0 -1.8 -0.01 
write test4.raw
.endc
"}
C {devices/gnd.sym} -520 -90 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -650 -90 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -650 -140 0 0 {name=Vgs value=-1.2}
C {devices/vsource.sym} -390 -180 0 0 {name=Vds value=-1.8}
C {devices/gnd.sym} -390 -90 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} -470 -90 0 0 {name=l4 lab=GND}
C {devices/ammeter.sym} -460 -290 1 0 {name=Vd}
C {sg13g2_pr/annotate_fet_params.sym} -530 -450 0 0 {name=annot1 ref=M1}
C {devices/launcher.sym} 150 -200 0 0 {name=h1
descr="OP annotate" 
tclcommand="xschem annotate_op"
}
C {devices/launcher.sym} 150 -170 0 0 {name=h2
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file rootname [file tail [xschem get current_name]]].raw dc
xschem setprop rect 2 0 fullxzoom
"
}
C {launcher.sym} 150 -230 0 0 {name=h3
descr=SimulateNGSPICE
tclcommand="
# Setup the default simulation commands if not already set up
# for example by already launched simulations.
set_sim_defaults
puts $sim(spice,1,cmd) 

# Change the Xyce command. In the spice category there are currently
# 5 commands (0, 1, 2, 3, 4). Command 3 is the Xyce batch
# you can get the number by querying $sim(spice,n)
set sim(spice,1,cmd) \{ngspice  \\"$N\\" -a\}

# change the simulator to be used (Xyce)
set sim(spice,default) 0

# Create FET and BIP .save file
mkdir -p $netlist_dir
write_data [save_params] $netlist_dir/[file rootname [file tail [xschem get current_name]]].save

# run netlist and simulation
xschem netlist
simulate
"}
C {sg13g2_pr/sg13_lv_pmos.sym} -540 -180 0 0 {name=M1
l=0.35u
w=128u
ng=16
m=1
model=sg13_lv_pmos
spiceprefix=X
}
