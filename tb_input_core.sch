v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 700 -460 720 -460 {lab=REG_N}
N 720 -460 720 -370 {lab=REG_N}
N 700 -370 720 -370 {lab=REG_N}
N 700 -480 740 -480 {lab=REG_P}
N 740 -480 740 -350 {lab=REG_P}
N 700 -350 740 -350 {lab=REG_P}
C {/home/master/Documents/6_bit_Flash_ADC/strongarm_core.sym} 550 -470 0 0 {name=x1}
C {/home/master/Documents/6_bit_Flash_ADC/strongarm_input.sym} 550 -320 0 0 {name=x2}
C {code.sym} 820 -560 0 0 {
name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false
      }
C {code_shown.sym} 850 -390 0 0 {name=SPICE only_toplevel=false value="

.param VCM=0.9
.param VOD=10m


*Initial conditions: both outputs start at 0.9V (metastable)
.ic V(REG_N)=0.9 V(REG_P)=0.9

.tran 10p 20n uic

.control
run
plot V(REG_N) V(REG_P)
plot V(REG_N)-V(REG_P)
.endc

.end"}
C {vsource.sym} 100 -390 0 0 {name=VDD value=1.8 savecurrent=false}
C {vsource.sym} 160 -390 0 0 {name=VSS value=0 savecurrent=false}
C {vsource.sym} 220 -390 0 0 {name=VIN value=0.9 savecurrent=false}
C {vsource.sym} 260 -390 0 0 {name=VIP value=0.91 savecurrent=false}
C {isource.sym} 120 -240 0 0 {name=INTAIL value=20u}
C {isource.sym} 200 -240 0 0 {name=IPTAIL value=20u}
C {ipin.sym} 100 -420 1 0 {name=p1 lab=VDD}
C {lab_pin.sym} 400 -480 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 400 -270 0 0 {name=p4 sig_type=std_logic lab=NTAIL}
C {lab_pin.sym} 400 -290 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 400 -310 0 0 {name=p6 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 400 -330 0 0 {name=p7 sig_type=std_logic lab=VIP}
C {lab_pin.sym} 400 -350 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 400 -370 0 0 {name=p9 sig_type=std_logic lab=PTAIL}
C {lab_pin.sym} 400 -460 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {ipin.sym} 160 -420 1 0 {name=p11 lab=VSS}
C {ipin.sym} 220 -420 1 0 {name=p12 lab=VIN}
C {ipin.sym} 260 -420 3 1 {name=p13 lab=VIP}
C {gnd.sym} 100 -360 0 0 {name=l1 lab=0}
C {gnd.sym} 160 -360 0 0 {name=l2 lab=0}
C {gnd.sym} 220 -360 0 0 {name=l3 lab=0}
C {gnd.sym} 260 -360 0 0 {name=l4 lab=0}
C {gnd.sym} 120 -210 0 0 {name=l5 lab=0}
C {gnd.sym} 200 -210 0 0 {name=l6 lab=0}
C {ipin.sym} 120 -270 0 1 {name=p3 lab=NTAIL}
C {ipin.sym} 200 -270 0 1 {name=p14 lab=PTAIL}
C {lab_pin.sym} 720 -420 0 0 {name=p19 sig_type=std_logic lab=REG_N}
C {lab_pin.sym} 740 -440 2 0 {name=p21 sig_type=std_logic lab=REG_P}
