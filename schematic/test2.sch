v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 -270 -520 530 -120 {flags=graph
y1=-1.1e-05
y2=-2.9e-09
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-2
x2=0
divx=5
subdivx=1


dataset=-1
unitx=1
logx=0
logy=0
color=4
node=i(vd)
sim_type=dc
autoload=1}
T {Ctrl-Click to execute launcher} 190 -100 0 0 0.3 0.3 {layer=11}
T {.save file can be created with IHP->"Create FET and BIP .save file"} 190 20 0 0 0.3 0.3 {layer=11}
N -530 60 -530 80 {
lab=GND}
N -530 -10 -530 0 {
lab=#net1}
N -400 20 -400 80 {
lab=GND}
N -270 20 -270 80 {
lab=GND}
N -400 -10 -350 -10 {
lab=GND}
N -350 -10 -350 80 {
lab=GND}
N -530 -10 -440 -10 {
lab=#net1}
N -400 -120 -370 -120 {
lab=#net2}
N -400 -120 -400 -40 {
lab=#net2}
N -310 -120 -270 -120 {
lab=#net3}
N -270 -120 -270 -40 {
lab=#net3}
C {devices/code_shown.sym} -620 150 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOShv.lib mos_tt
"}
C {devices/code_shown.sym} -200 -60 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.options savecurrents
.control
save all
op 
write test2.raw
set appendwrite
print I(Vd)
dc Vds 0 -3.3 -0.01 Vgs -0.45 -1.8 -0.05
write test2.raw
.endc
"}
C {devices/gnd.sym} -400 80 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -530 80 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -530 30 0 0 {name=Vgs value=-1.8}
C {devices/vsource.sym} -270 -10 0 0 {name=Vds value=-3.3}
C {devices/gnd.sym} -270 80 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} -350 80 0 0 {name=l4 lab=GND}
C {devices/ammeter.sym} -340 -120 1 0 {name=Vd}
C {sg13g2_pr/annotate_fet_params.sym} -390 -260 0 0 {name=annot1 ref=M1}
C {devices/launcher.sym} 250 -30 0 0 {name=h1
descr="OP annotate" 
tclcommand="xschem annotate_op"
}
C {devices/launcher.sym} 250 0 0 0 {name=h2
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file rootname [file tail [xschem get current_name]]].raw dc
xschem setprop rect 2 0 fullxzoom
"
}
C {launcher.sym} 250 -60 0 0 {name=h3
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
C {sg13g2_pr/sg13_hv_pmos.sym} -420 -10 0 0 {name=M3
l=0.4u
w=84u
ng=30
m=1
model=sg13_hv_pmos
spiceprefix=X
}
