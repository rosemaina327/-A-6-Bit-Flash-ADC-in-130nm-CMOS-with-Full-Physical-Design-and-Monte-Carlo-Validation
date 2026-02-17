v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 2180 -1260 2180 -1220 {lab=NTAIL}
N 2180 -1190 2210 -1190 {lab=VSS}
N 2210 -1190 2210 -1170 {lab=VSS}
N 2180 -1160 2180 -1140 {lab=VSS}
N 2180 -1140 2210 -1140 {lab=VSS}
N 2210 -1170 2210 -1140 {lab=VSS}
N 2330 -1190 2350 -1190 {lab=VDD}
N 2350 -1240 2350 -1190 {lab=VDD}
N 2330 -1240 2330 -1220 {lab=VDD}
N 2330 -1240 2350 -1240 {lab=VDD}
N 2340 -1070 2340 -1030 {lab=NCLK}
N 2340 -1000 2370 -1000 {lab=VSS}
N 2370 -1000 2370 -980 {lab=VSS}
N 2340 -970 2340 -950 {lab=VSS}
N 2340 -950 2370 -950 {lab=VSS}
N 2370 -980 2370 -950 {lab=VSS}
N 2170 -990 2190 -990 {lab=VDD}
N 2190 -1040 2190 -990 {lab=VDD}
N 2170 -1040 2170 -1020 {lab=VDD}
N 2170 -1040 2190 -1040 {lab=VDD}
C {sky130_fd_pr/pfet_01v8.sym} 2310 -1190 0 0 {name=M10
W=32
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
C {sky130_fd_pr/nfet_01v8.sym} 2160 -1190 0 0 {name=M9
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
model=nfet_01v8
spiceprefix=X
}
C {ipin.sym} 2140 -1190 0 0 {name=p1 lab=CLK}
C {opin.sym} 2290 -1190 2 0 {name=p2 lab=NCLK}
C {opin.sym} 2180 -1260 0 0 {name=p3 lab=NTAIL}
C {opin.sym} 2330 -1160 1 0 {name=p4 lab=PTAIL}
C {sky130_fd_pr/pfet_01v8.sym} 2150 -990 0 0 {name=Mp
W=4
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
C {sky130_fd_pr/nfet_01v8.sym} 2320 -1000 0 0 {name=Mn
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
model=nfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 2130 -990 0 0 {name=p8 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 2340 -1070 0 0 {name=p13 sig_type=std_logic lab=NCLK}
C {lab_pin.sym} 2340 -950 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 2170 -1040 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {ipin.sym} 2340 -1240 1 0 {name=p5 lab=VDD}
C {ipin.sym} 2180 -1140 0 0 {name=p7 lab=VSS}
C {lab_pin.sym} 2300 -1000 0 0 {name=p6 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 2170 -960 3 0 {name=p9 sig_type=std_logic lab=NCLK}
