v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 2160 -1200 2170 -1200 {lab=REG_P}
N 2170 -1200 2170 -1180 {lab=REG_P}
N 2160 -1220 2220 -1220 {lab=REG_N}
N 2220 -1220 2220 -1180 {lab=REG_N}
N 1490 -1220 1860 -1220 {lab=PTAIL}
N 1490 -1220 1490 -1100 {lab=PTAIL}
N 1670 -1180 1860 -1180 {lab=VIP}
N 1670 -1180 1670 -1100 {lab=VIP}
N 1720 -1160 1860 -1160 {lab=VIN}
N 1720 -1160 1720 -1100 {lab=VIN}
N 1780 -1120 1860 -1120 {lab=NTAIL}
N 1780 -1120 1780 -1100 {lab=NTAIL}
C {/home/master/Documents/6_bit_Flash_ADC/strongarm_input.sym} 2010 -1170 0 0 {name=x1}
C {code_shown.sym} 2320 -1200 0 0 {name=SPICE only_toplevel=false value="
.param VCM=0.9

.dc VIN 0 1.8 10m

.control
run
Gnuplot V(VIN) V(REG_N) V(REG_P)
.endc

.end"}
C {code.sym} 2370 -1470 0 0 {
name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false
      }
C {ipin.sym} 1560 -1100 1 0 {name=p2 lab=VDD}
C {ipin.sym} 1610 -1100 1 0 {name=p5 lab=VSS}
C {capa.sym} 2170 -1150 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 2220 -1150 0 0 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 2170 -1120 3 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 2220 -1120 3 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 2200 -1220 0 0 {name=p9 sig_type=std_logic lab=REG_N}
C {lab_wire.sym} 2170 -1200 2 0 {name=p10 sig_type=std_logic lab=REG_P}
C {vsource.sym} 1560 -1070 0 0 {name=VDD value=1.8 savecurrent=false}
C {vsource.sym} 1610 -1070 0 0 {name=VSS value=0 savecurrent=false}
C {vsource.sym} 1720 -1070 0 0 {name=VIN value=\{VCM\} savecurrent=false}
C {vsource.sym} 1670 -1070 0 0 {name=VIP value=0.9 savecurrent=false}
C {isource.sym} 1780 -1070 0 0 {name=INTAIL value=20u}
C {isource.sym} 1490 -1070 0 0 {name=IPTAIL value=20u}
C {lab_pin.sym} 1860 -1200 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1860 -1140 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {gnd.sym} 1490 -1040 0 0 {name=l1 lab=GND}
C {gnd.sym} 1560 -1040 0 0 {name=l2 lab=GND}
C {gnd.sym} 1610 -1040 0 0 {name=l3 lab=GND}
C {gnd.sym} 1670 -1040 0 0 {name=l4 lab=GND}
C {gnd.sym} 1720 -1040 0 0 {name=l5 lab=GND}
C {gnd.sym} 1780 -1040 0 0 {name=l6 lab=GND}
C {lab_wire.sym} 1590 -1220 0 0 {name=p4 sig_type=std_logic lab=PTAIL}
C {lab_wire.sym} 1670 -1170 0 0 {name=p6 sig_type=std_logic lab=VIP}
C {lab_wire.sym} 1720 -1150 0 0 {name=p11 sig_type=std_logic lab=VIN}
C {lab_wire.sym} 1780 -1120 0 0 {name=p12 sig_type=std_logic lab=NTAIL}
