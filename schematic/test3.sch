v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 250 -240 810 60 {flags=graph
y1=-0.00012000001
y2=0.00048
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0.09
x2=1.89
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
T {Ctrl-Click to execute launcher} 390 80 0 0 0.3 0.3 {layer=11}
T {.save file can be created with IHP->"Create FET and BIP .save file"} 390 200 0 0 0.3 0.3 {layer=11}
N -10 250 -10 270 {
lab=GND}
N -10 160 -10 190 {
lab=G}
N 120 190 120 250 {
lab=GND}
N 250 190 250 250 {
lab=GND}
N 120 70 120 130 {
lab=#net1}
N 250 70 250 130 {
lab=D}
N 120 160 190 160 {
lab=GND}
N 190 160 190 250 {
lab=GND}
N 120 70 150 70 {
lab=#net1}
N 210 70 250 70 {
lab=D}
N -10 160 80 160 {
lab=G}
C {devices/code_shown.sym} -260 310 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} -160 -200 0 0 {name=NGSPICE only_toplevel=true 
value="

.param temp=27
.control
save all 
op
write test3.raw
set appendwrite
dc Vds 0 1.8 0.01 
write test3.raw
.endc
"}
C {devices/gnd.sym} 120 250 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -10 270 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -10 220 0 0 {name=Vgs value=1.2}
C {devices/vsource.sym} 250 160 0 0 {name=Vds value=1.8}
C {devices/gnd.sym} 250 250 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 190 250 0 0 {name=l4 lab=GND}
C {devices/ammeter.sym} 180 70 1 0 {name=Vd}
C {sg13g2_pr/annotate_fet_params.sym} -20 10 0 0 {name=annot1 ref=M1}
C {lab_pin.sym} -10 160 0 0 {name=p1 sig_type=std_logic lab=G}
C {lab_pin.sym} 250 70 0 1 {name=p2 sig_type=std_logic lab=D}
C {devices/launcher.sym} 450 150 0 0 {name=h1
descr="OP annotate" 
tclcommand="xschem annotate_op"
}
C {devices/launcher.sym} 450 180 0 0 {name=h2
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file rootname [file tail [xschem get current_name]]].raw dc
xschem setprop rect 2 0 fullxzoom
"
}
C {launcher.sym} 450 120 0 0 {name=h3
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
C {sg13g2_pr/sg13_lv_nmos.sym} 100 160 0 0 {name=M5
l=0.15u
w=0.42u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
