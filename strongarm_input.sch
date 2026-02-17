v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 380 -400 380 -330 {lab=REG_N}
N 580 -400 580 -330 {lab=REG_P}
N 580 -270 580 -220 {lab=NTAIL}
N 480 -220 580 -220 {lab=NTAIL}
N 380 -220 480 -220 {lab=NTAIL}
N 380 -270 380 -220 {lab=NTAIL}
N 380 -490 380 -460 {lab=PTAIL}
N 380 -490 580 -490 {lab=PTAIL}
N 380 -430 390 -430 {lab=VDD}
N 570 -430 580 -430 {lab=VDD}
N 580 -490 580 -460 {lab=PTAIL}
N 380 -300 420 -300 {lab=VSS}
N 540 -300 580 -300 {lab=VSS}
N 530 -430 570 -430 {lab=VDD}
N 390 -430 430 -430 {lab=VDD}
C {title.sym} 230 -50 0 0 {name=l1 author="ROSE MAINA"}
C {sky130_fd_pr/nfet_01v8.sym} 360 -300 0 0 {name=M1
W=12
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
C {sky130_fd_pr/nfet_01v8.sym} 600 -300 0 1 {name=M2
W=12
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
C {sky130_fd_pr/pfet_01v8.sym} 360 -430 0 0 {name=M3
W=24
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
C {sky130_fd_pr/pfet_01v8.sym} 600 -430 0 1 {name=M4
W=24
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
C {lab_wire.sym} 620 -430 2 0 {name=p4 sig_type=std_logic lab=VIP}
C {ipin.sym} 480 -490 1 0 {name=p5 lab=PTAIL}
C {lab_pin.sym} 420 -300 2 0 {name=p6 sig_type=std_logic lab=VSS}
C {ipin.sym} 470 -220 3 0 {name=p8 lab=NTAIL
}
C {iopin.sym} 580 -360 0 0 {name=p9 lab=REG_P}
C {iopin.sym} 380 -370 2 0 {name=p10 lab=REG_N}
C {ipin.sym} 540 -300 0 0 {name=p11 lab=VSS}
C {lab_pin.sym} 530 -430 2 1 {name=p7 sig_type=std_logic lab=VDD}
C {ipin.sym} 430 -430 2 0 {name=p15 lab=VDD
}
C {ipin.sym} 620 -300 0 1 {name=p13 lab=VIP
}
C {ipin.sym} 340 -300 0 0 {name=p2 lab=VIN
}
C {lab_pin.sym} 340 -430 0 0 {name=p1 sig_type=std_logic lab=VIN}
