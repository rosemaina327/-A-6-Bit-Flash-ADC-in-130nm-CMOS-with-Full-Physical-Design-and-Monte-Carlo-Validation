v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 440 -470 440 -430 {lab=REG_N}
N 620 -470 620 -430 {lab=REG_P}
N 440 -550 440 -530 {lab=VDD}
N 440 -550 560 -550 {lab=VDD}
N 560 -550 620 -550 {lab=VDD}
N 440 -370 440 -340 {lab=VSS}
N 440 -340 620 -340 {lab=VSS}
N 620 -370 620 -340 {lab=VSS}
N 620 -400 630 -400 {lab=VSS}
N 430 -400 430 -360 {lab=VSS}
N 430 -400 440 -400 {lab=VSS}
N 620 -550 620 -530 {lab=VDD}
N 610 -540 620 -540 {lab=VDD}
N 610 -540 610 -500 {lab=VDD}
N 610 -500 620 -500 {lab=VDD}
N 450 -550 450 -500 {lab=VDD}
N 440 -500 450 -500 {lab=VDD}
N 630 -400 630 -350 {lab=VSS}
N 480 -500 620 -450 {lab=REG_P}
N 440 -450 580 -500 {lab=REG_N}
N 440 -450 580 -400 {lab=REG_N}
N 480 -400 620 -450 {lab=REG_P}
C {sky130_fd_pr/pfet_01v8.sym} 600 -500 0 0 {name=M8
W=12
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
C {sky130_fd_pr/nfet_01v8.sym} 600 -400 0 0 {name=M6
W=6
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
C {sky130_fd_pr/nfet_01v8.sym} 460 -400 0 1 {name=M5
W=6
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
C {sky130_fd_pr/pfet_01v8.sym} 460 -500 0 1 {name=M7
W=12
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
C {lab_wire.sym} 630 -350 2 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 430 -360 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {code.sym} 750 -530 0 0 {
name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false
      }
C {ipin.sym} 530 -550 1 0 {name=p1 lab=VDD}
C {ipin.sym} 530 -340 3 0 {name=p2 lab=VSS}
C {opin.sym} 620 -450 0 0 {name=p3 lab=REG_P}
C {opin.sym} 440 -450 2 0 {name=p4 lab=REG_N}
