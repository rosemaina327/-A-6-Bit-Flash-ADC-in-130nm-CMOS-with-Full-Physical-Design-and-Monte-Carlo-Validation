v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 13730 -8130 13800 -8130 {lab=#net1}
N 13690 -8130 13730 -8130 {lab=#net1}
N 13760 -7710 13800 -7710 {lab=#net1}
N 13760 -8130 13760 -7710 {lab=#net1}
N 13760 -8000 13800 -8000 {lab=#net1}
N 13760 -7860 13800 -7860 {lab=#net1}
N 13500 -8130 13690 -8130 {lab=#net1}
N 13570 -8110 13800 -8110 {lab=#net2}
N 13780 -8110 13780 -7630 {lab=#net2}
N 13780 -7630 13800 -7630 {lab=#net2}
N 13780 -7820 13800 -7820 {lab=#net2}
N 13780 -7940 13800 -7940 {lab=#net2}
N 13550 -7840 13800 -7840 {lab=#net3}
N 13710 -7840 13710 -7690 {lab=#net3}
N 13710 -7690 13800 -7690 {lab=#net3}
N 13720 -7880 13720 -7840 {lab=#net3}
N 13720 -7880 14140 -7880 {lab=#net3}
N 14140 -7880 14140 -7840 {lab=#net3}
N 14100 -7840 14140 -7840 {lab=#net3}
N 13700 -7920 13700 -7890 {lab=#net4}
N 13700 -7890 14120 -7890 {lab=#net4}
N 14120 -7890 14120 -7860 {lab=#net4}
N 14100 -7860 14120 -7860 {lab=#net4}
N 13730 -8020 13730 -7900 {lab=#net5}
N 13730 -7900 14150 -7900 {lab=#net5}
N 14150 -7900 14150 -7820 {lab=#net5}
N 14100 -7820 14150 -7820 {lab=#net5}
N 13520 -7960 13800 -7960 {lab=#net6}
N 13460 -7980 13800 -7980 {lab=#net7}
N 13700 -7920 13800 -7920 {lab=#net4}
N 13730 -8020 13800 -8020 {lab=#net5}
N 13710 -7690 13710 -7670 {lab=#net3}
N 13710 -7670 13800 -7670 {lab=#net3}
C {/home/master/Documents/6_bit_Flash_ADC/strongarm_core.sym} 13950 -8120 0 0 {name=x1}
C {/home/master/Documents/6_bit_Flash_ADC/strongarm_input.sym} 13950 -7970 0 0 {name=x2}
C {vsource.sym} 13500 -8100 0 0 {name=VDD value=1.8 savecurrent=false}
C {vsource.sym} 13570 -8080 0 0 {name=VSS value=0 savecurrent=false}
C {vsource.sym} 13520 -7930 0 0 {name=VIN value=0.9 savecurrent=false}
C {vsource.sym} 13460 -7950 0 0 {name=VIP value=0.91 savecurrent=false}
C {vsource.sym} 13550 -7810 0 0 {name=VCLK value="PULSE(0 1.8 0 100p 100p 5n 10n)" savecurrent=false}
C {capa.sym} 13290 -7740 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 13350 -7740 0 0 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 13290 -7770 0 0 {name=p1 sig_type=std_logic lab=REG_N}
C {lab_pin.sym} 13350 -7770 0 0 {name=p2 sig_type=std_logic lab=REG_P}
C {gnd.sym} 13500 -8070 0 0 {name=l1 lab=0}
C {gnd.sym} 13550 -7780 0 0 {name=l2 lab=0}
C {gnd.sym} 13570 -8050 0 0 {name=l3 lab=0}
C {gnd.sym} 13460 -7920 0 0 {name=l4 lab=0}
C {gnd.sym} 13520 -7900 0 0 {name=l5 lab=0}
C {gnd.sym} 13290 -7710 0 0 {name=l6 lab=0}
C {gnd.sym} 13350 -7710 0 0 {name=l7 lab=0}
C {lab_pin.sym} 13800 -7650 0 0 {name=p3 sig_type=std_logic lab=REG_N}
C {lab_pin.sym} 14100 -8020 2 0 {name=p4 sig_type=std_logic lab=REG_N}
C {lab_pin.sym} 14100 -8110 2 0 {name=p5 sig_type=std_logic lab=REG_N}
C {lab_pin.sym} 13800 -7610 0 0 {name=p6 sig_type=std_logic lab=REG_P}
C {lab_pin.sym} 14100 -8000 2 0 {name=p7 sig_type=std_logic lab=REG_P}
C {lab_pin.sym} 14100 -8130 2 0 {name=p8 sig_type=std_logic lab=REG_P}
C {code_shown.sym} 14460 -7950 0 0 {name=SPICE only_toplevel=false value=" 
.param VCM=0.9
.param VOD=10m

* Clock: 100MHz, 50% duty cycle
* PULSE(V1 V2 TD TR TF PW PER)
VCLK CLK 0 PULSE(0 1.8 0 100p 100p 5n 10n)

* Input signals
VIN VIN 0 \{VCM\}
VIP VIP 0 \{VCM + VOD\}

* Initial conditions - start at metastable point
.ic V(REG_N)=0.9 V(REG_P)=0.9

* Transient simulation
.tran 10p 50n uic

* Measure propagation delay from CLK rising to output decision
.measure tran TPD trig v(CLK) val=0.9 rise=1 
+           targ v(REG_P) val=0.9 fall=1

* Measure power consumption
.measure tran PWR avg I(VDD)*1.8 from=20n to=50n

.control
run
plot V(CLK) V(VIN) V(VIP) V(REG_N) V(REG_P)
plot V(REG_N)-V(REG_P)
plot I(VDD)
.endc

.end"}
C {/home/master/Documents/6_bit_Flash_ADC/strongarm_precharge.sym} 13950 -7660 0 0 {name=x4}
C {/home/master/Documents/6_bit_Flash_ADC/strongarm_clock.sym} 13950 -7840 0 0 {name=x3}
