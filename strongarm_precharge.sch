v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 230 -250 250 -250 {lab=VDD}
N 250 -320 250 -250 {lab=VDD}
N 230 -320 230 -280 {lab=VDD}
N 230 -320 300 -320 {lab=VDD}
N 360 -250 380 -250 {lab=VDD}
N 380 -320 380 -250 {lab=VDD}
N 300 -320 380 -320 {lab=VDD}
N 360 -320 360 -280 {lab=VDD}
N 230 -220 230 -200 {lab=REG_N}
N 230 -200 260 -200 {lab=REG_N}
N 360 -220 360 -200 {lab=REG_P}
N 360 -200 380 -200 {lab=REG_P}
N 510 -250 530 -250 {lab=VSS}
N 510 -320 510 -280 {lab=REG_N}
N 640 -320 640 -280 {lab=REG_P}
N 510 -220 510 -200 {lab=VSS}
N 640 -220 640 -200 {lab=VSS}
N 510 -200 640 -200 {lab=VSS}
N 530 -250 530 -200 {lab=VSS}
N 640 -250 660 -250 {lab=VSS}
N 660 -250 660 -200 {lab=VSS}
N 640 -200 660 -200 {lab=VSS}
C {ipin.sym} 470 -250 0 0 {name=p1 lab=CLK}
C {ipin.sym} 190 -250 0 0 {name=p2 lab=NCLK}
C {ipin.sym} 120 -210 0 0 {name=p3 lab=REG_N}
C {ipin.sym} 120 -180 0 0 {name=p4 lab=REG_P}
C {sky130_fd_pr/pfet_01v8.sym} 210 -250 0 0 {name=MP1
W=2
L=0.15
nf=1
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
C {sky130_fd_pr/pfet_01v8.sym} 340 -250 0 0 {name=MP2
W=2
L=0.15
nf=1
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
C {lab_pin.sym} 320 -250 0 0 {name=p9 sig_type=std_logic lab=NCLK}
C {lab_pin.sym} 260 -200 2 0 {name=p10 sig_type=std_logic lab=REG_N}
C {lab_pin.sym} 380 -200 2 0 {name=p11 sig_type=std_logic lab=REG_P}
C {lab_pin.sym} 510 -320 2 0 {name=p12 sig_type=std_logic lab=REG_N}
C {lab_pin.sym} 600 -250 0 0 {name=p14 sig_type=std_logic lab=CLK}
C {sky130_fd_pr/nfet_01v8.sym} 490 -250 0 0 {name=MN1
W=1
L=0.15
nf=1 
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
C {sky130_fd_pr/nfet_01v8.sym} 620 -250 0 0 {name=MN2
W=1
L=0.15
nf=1 
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
C {lab_pin.sym} 640 -320 2 0 {name=p17 sig_type=std_logic lab=REG_P}
C {ipin.sym} 310 -320 1 0 {name=p5 lab=VDD}
C {ipin.sym} 590 -200 3 0 {name=p6 lab=VSS}
