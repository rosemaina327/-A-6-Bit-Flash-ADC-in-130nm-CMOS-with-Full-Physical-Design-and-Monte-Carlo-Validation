v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 460 -500 460 -460 {lab=N1}
N 380 -530 420 -530 {lab=REG_N}
N 380 -530 380 -430 {lab=REG_N}
N 380 -430 420 -430 {lab=REG_N}
N 360 -480 380 -480 {lab=REG_N}
N 680 -500 680 -460 {lab=VON}
N 600 -530 640 -530 {lab=N1}
N 600 -530 600 -430 {lab=N1}
N 600 -430 640 -430 {lab=N1}
N 680 -480 720 -480 {lab=VON}
N 460 -480 600 -480 {lab=N1}
N 460 -430 470 -430 {lab=VSS}
N 470 -430 470 -390 {lab=VSS}
N 460 -400 460 -390 {lab=VSS}
N 460 -390 470 -390 {lab=VSS}
N 680 -430 690 -430 {lab=VSS}
N 690 -430 690 -390 {lab=VSS}
N 680 -400 680 -390 {lab=VSS}
N 680 -390 690 -390 {lab=VSS}
N 680 -530 690 -530 {lab=VDD}
N 690 -560 690 -530 {lab=VDD}
N 680 -560 690 -560 {lab=VDD}
N 460 -530 470 -530 {lab=VDD}
N 470 -560 470 -530 {lab=VDD}
N 460 -560 470 -560 {lab=VDD}
N 460 -240 460 -200 {lab=N2}
N 380 -270 420 -270 {lab=REG_P}
N 380 -270 380 -170 {lab=REG_P}
N 380 -170 420 -170 {lab=REG_P}
N 360 -220 380 -220 {lab=REG_P}
N 680 -240 680 -200 {lab=VOP}
N 600 -270 640 -270 {lab=N2}
N 600 -270 600 -170 {lab=N2}
N 600 -170 640 -170 {lab=N2}
N 680 -220 720 -220 {lab=VOP}
N 460 -220 600 -220 {lab=N2}
N 460 -170 470 -170 {lab=VSS}
N 470 -170 470 -130 {lab=VSS}
N 460 -140 460 -130 {lab=VSS}
N 460 -130 470 -130 {lab=VSS}
N 680 -170 690 -170 {lab=VSS}
N 690 -170 690 -130 {lab=VSS}
N 680 -140 680 -130 {lab=VSS}
N 680 -130 690 -130 {lab=VSS}
N 680 -270 690 -270 {lab=VDD}
N 690 -300 690 -270 {lab=VDD}
N 680 -300 690 -300 {lab=VDD}
N 460 -270 470 -270 {lab=VDD}
N 470 -300 470 -270 {lab=VDD}
N 460 -300 470 -300 {lab=VDD}
C {ipin.sym} 360 -480 0 0 {name=p1 lab=REG_N
}
C {ipin.sym} 360 -220 0 0 {name=p2 lab=REG_P
}
C {opin.sym} 720 -480 0 0 {name=p3 lab=VON}
C {sky130_fd_pr/pfet_01v8.sym} 440 -530 0 0 {name=Mp
W=8
L=0.15
nf=2
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 440 -430 0 0 {name=Mn
W=4
L=0.15
nf=2 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {lab_wire.sym} 530 -480 0 0 {name=p7 sig_type=std_logic lab=N1}
C {sky130_fd_pr/pfet_01v8.sym} 660 -530 0 0 {name=Mp1
W=16
L=0.15
nf=4
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 660 -430 0 0 {name=Mn1
W=8
L=0.15
nf=4 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {lab_wire.sym} 530 -220 0 0 {name=p8 sig_type=std_logic lab=N2}
C {lab_wire.sym} 690 -560 0 0 {name=p12 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 690 -390 2 0 {name=p14 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_01v8.sym} 440 -270 0 0 {name=Mp2
W=8
L=0.15
nf=2
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 440 -170 0 0 {name=Mn2
W=4
L=0.15
nf=2 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 660 -270 0 0 {name=Mp3
W=16
L=0.15
nf=4
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 660 -170 0 0 {name=Mn3
W=8
L=0.15
nf=4 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {lab_wire.sym} 470 -300 0 0 {name=p15 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 690 -300 0 0 {name=p16 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 470 -130 2 0 {name=p18 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 690 -130 2 0 {name=p19 sig_type=std_logic lab=VSS}
C {opin.sym} 720 -220 0 0 {name=p4 lab=VOP}
C {iopin.sym} 460 -560 3 0 {name=p5 lab=VDD}
C {iopin.sym} 460 -390 1 0 {name=p6 lab=VSS}
