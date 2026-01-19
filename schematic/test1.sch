v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 -180 -780 620 -380 {flags=graph
y1=-4.8e-05
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.084567867
x2=3.4189867
divx=5
subdivx=1
node=i(vd)
color=4
dataset=-1
unitx=1
logx=0
logy=0
sim_type=dc
autoload=1
y2=0.0006}
T {Ctrl-Click to execute launcher} 280 -360 0 0 0.3 0.3 {layer=11}
T {.save file can be created with IHP->"Create FET and BIP .save file"} 280 -240 0 0 0.3 0.3 {layer=11}
N -440 -220 -440 -200 {
lab=GND}
N -440 -290 -440 -280 {
lab=#net1}
N -310 -260 -310 -200 {
lab=GND}
N -180 -260 -180 -200 {
lab=GND}
N -310 -360 -310 -320 {
lab=#net2}
N -180 -360 -180 -320 {
lab=#net3}
N -310 -290 -260 -290 {
lab=GND}
N -260 -290 -260 -200 {
lab=GND}
N -310 -360 -280 -360 {
lab=#net2}
N -220 -360 -180 -360 {
lab=#net3}
N -440 -290 -350 -290 {
lab=#net1}
C {devices/code_shown.sym} -530 -130 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOShv.lib mos_tt
"}
C {devices/code_shown.sym} -110 -290 0 0 {name=NGSPICE only_toplevel=true 
value="
.options savecurrent
.param temp=27
.control 
save all
op
write test1.raw
set appendwrite
dc Vds 0 1.8 0.01 
write test1.raw
.endc
"}
C {devices/gnd.sym} -310 -200 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -440 -200 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -440 -250 0 0 {name=Vgs value=3}
C {devices/vsource.sym} -180 -290 0 0 {name=Vds value=1.8}
C {devices/gnd.sym} -180 -200 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} -260 -200 0 0 {name=l4 lab=GND}
C {devices/ammeter.sym} -250 -360 1 0 {name=Vd}
C {sg13g2_pr/annotate_fet_params.sym} -450 -430 0 0 {name=annot1 ref=M1}
C {devices/launcher.sym} 340 -290 0 0 {name=h1
descr="OP annotate" 
tclcommand="xschem annotate_op"
}
C {devices/launcher.sym} 340 -260 0 0 {name=h2
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file rootname [file tail [xschem get current_name]]].raw dc
xschem setprop rect 2 0 fullxzoom
"
}
C {launcher.sym} 340 -320 0 0 {name=h3
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
C {sg13g2_pr/sg13_hv_rf_nmos.sym} -330 -290 0 0 {name=M1
l=0.5u
w=0.69u
ng=1
m=1
rfmode=1
model=sg13_hv_nmos
spiceprefix=X
}
