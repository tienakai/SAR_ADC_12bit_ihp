v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -1860 -200 -1860 -180 {lab=Ctop}
N -1660 -200 -1660 -180 {lab=Ctop}
N -1860 -200 -1660 -200 {lab=Ctop}
N -1460 -200 -1460 -180 {lab=Ctop}
N -1660 -200 -1460 -200 {lab=Ctop}
N -1270 -200 -1270 -180 {lab=Ctop}
N -1460 -200 -1270 -200 {lab=Ctop}
N -1080 -200 -1080 -180 {lab=Ctop}
N -1270 -200 -1080 -200 {lab=Ctop}
N -890 -200 -890 -180 {lab=Ctop}
N -1080 -200 -890 -200 {lab=Ctop}
N -700 -200 -700 -180 {lab=Ctop}
N -890 -200 -700 -200 {lab=Ctop}
N -510 -200 -510 -180 {lab=Ctop}
N -700 -200 -510 -200 {lab=Ctop}
N -320 -200 -320 -180 {lab=Ctop}
N -510 -200 -320 -200 {lab=Ctop}
N -130 -200 -130 -180 {lab=Ctop}
N -320 -200 -130 -200 {lab=Ctop}
N 60 -200 60 -180 {lab=Ctop}
N -130 -200 60 -200 {lab=Ctop}
N 260 -200 260 -180 {lab=Ctop}
N 60 -200 260 -200 {lab=Ctop}
N -1860 -120 -1860 -80 {lab=C0_dummy}
N -1660 -120 -1660 -80 {lab=C0}
N -1460 -120 -1460 -80 {lab=C1}
N -1270 -120 -1270 -80 {lab=C2}
N -1080 -120 -1080 -80 {lab=C3}
N -890 -120 -890 -80 {lab=C4}
N -700 -120 -700 -80 {lab=C5}
N -510 -120 -510 -80 {lab=C6}
N -320 -120 -320 -80 {lab=C7}
N -130 -120 -130 -80 {lab=C8}
N 60 -120 60 -80 {lab=C9}
N 260 -120 260 -80 {lab=C10}
N 460 -200 540 -200 {lab=Ctop}
N 460 -200 460 -180 {lab=Ctop}
N 260 -200 460 -200 {lab=Ctop}
N 460 -120 460 -80 {lab=VSS}
C {sg13g2_pr/cap_cmim.sym} -1860 -150 0 0 {name=C1
model=cap_cmim
w=2e-6
l=2e-6
m=2
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} -1660 -150 0 0 {name=C2
model=cap_cmim
w=2e-6
l=2e-6
m=2
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} -1460 -150 0 0 {name=C3
model=cap_cmim
w=2e-6
l=2e-6
m=3
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} -1270 -150 0 0 {name=C4
model=cap_cmim
w=2e-6
l=2e-6
m=5
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} -1080 -150 0 0 {name=C5
model=cap_cmim
w=2e-6
l=2e-6
m=9
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} -890 -150 0 0 {name=C6
model=cap_cmim
w=2e-6
l=2e-6
m=19
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} -700 -150 0 0 {name=C7
model=cap_cmim
w=2e-6
l=2e-6
m=34
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} -510 -150 0 0 {name=C8
model=cap_cmim
w=2e-6
l=2e-6
m=68
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} -320 -150 0 0 {name=C9
model=cap_cmim
w=2e-6
l=2e-6
m=134
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} -130 -150 0 0 {name=C10
model=cap_cmim
w=2e-6
l=2e-6
m=266
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} 60 -150 0 0 {name=C11
model=cap_cmim
w=2e-6
l=2e-6
m=524
spiceprefix=X}
C {sg13g2_pr/cap_cmim.sym} 260 -150 0 0 {name=C12
model=cap_cmim
w=2e-6
l=2e-6
m=1046
spiceprefix=X}
C {ipin.sym} -1860 -80 0 0 {name=p1 lab=C0_dummy}
C {ipin.sym} -1660 -80 0 0 {name=p2 lab=C0}
C {ipin.sym} -1460 -80 0 0 {name=p3 lab=C1}
C {ipin.sym} -1270 -80 0 0 {name=p4 lab=C2}
C {ipin.sym} -1080 -80 0 0 {name=p5 lab=C3}
C {ipin.sym} -890 -80 0 0 {name=p6 lab=C4}
C {ipin.sym} -700 -80 0 0 {name=p7 lab=C5}
C {ipin.sym} -510 -80 0 0 {name=p8 lab=C6}
C {ipin.sym} -320 -80 0 0 {name=p9 lab=C7}
C {ipin.sym} -130 -80 0 0 {name=p10 lab=C8}
C {ipin.sym} 60 -80 0 0 {name=p11 lab=C9}
C {ipin.sym} 260 -80 0 0 {name=p12 lab=C10}
C {sg13g2_pr/cap_cmim.sym} 460 -150 0 0 {name=C13
model=cap_cmim
w=2e-6
l=2e-6
m=196
spiceprefix=X}
C {ipin.sym} 460 -80 0 0 {name=p13 lab=VSS}
C {opin.sym} 540 -200 0 0 {name=p14 lab=Ctop}
