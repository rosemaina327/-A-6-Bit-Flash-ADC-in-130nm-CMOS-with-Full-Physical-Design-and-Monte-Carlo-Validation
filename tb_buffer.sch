v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
C {/home/master/Documents/6_bit_Flash_ADC/strongarm_buffer.sym} 750 -950 0 0 {name=x1}
C {code.sym} 960 -1120 0 0 {
name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false
      }
C {code_shown.sym} 960 -920 0 0 {name=SPICE only_toplevel=false value="

* Input signal (simulate core output swing)
* VIN REG_N 0 PWL(0 0.5 1n 0.5 1.01n 1.3 2n 1.3)
* VIP REG_P 0 PWL(0 1.3 1n 1.3 1.01n 0.5 2n 0.5)

XBUF REG_N REG_P VON VOP VDD VSS strongarm_buffer

* Load caps
* CL1 VON VSS 20f
* CL2 VOP VSS 20f

.tran 10p 5n

.measure tran TPD_BUF trig v(REG_N) val=0.9 rise=1 
+               targ v(VON) val=0.9 fall=1

.control
run
plot V(REG_N) V(REG_P) V(VON) V(VOP)
.endc

.end"}
C {vsource.sym} 490 -800 0 0 {name=VDD value=1.8 savecurrent=false}
C {vsource.sym} 550 -800 0 0 {name=VSS value=0 savecurrent=false}
C {vsource.sym} 540 -670 0 0 {name=VIN value="PWL(0 0.5 1n 0.5 1.01n 1.3 2n 1.3)" savecurrent=false}
C {vsource.sym} 610 -800 0 0 {name=VIP value="PWL(0 1.3 1n 1.3 1.01n 0.5 2n 0.5)" savecurrent=false}
C {capa.sym} 360 -800 0 0 {name=CL1
m=1
value=20f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 420 -800 0 0 {name=CL2
m=1
value=20f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 490 -770 0 0 {name=l1 lab=0}
C {gnd.sym} 550 -770 0 0 {name=l3 lab=0}
C {gnd.sym} 610 -770 0 0 {name=l4 lab=0}
C {gnd.sym} 540 -640 0 0 {name=l5 lab=0}
C {gnd.sym} 360 -770 0 0 {name=l6 lab=0}
C {gnd.sym} 420 -770 0 0 {name=l7 lab=0}
C {lab_pin.sym} 600 -980 0 0 {name=p3 sig_type=std_logic lab=REG_N}
C {lab_pin.sym} 600 -960 0 0 {name=p4 sig_type=std_logic lab=REG_P}
C {lab_pin.sym} 900 -980 2 0 {name=p5 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 900 -940 2 0 {name=p6 sig_type=std_logic lab=VSS}
C {ipin.sym} 610 -830 1 0 {name=p7 lab=REG_N}
C {ipin.sym} 540 -700 1 0 {name=p8 lab=REG_P}
C {ipin.sym} 360 -830 1 0 {name=p11 lab=VON}
C {ipin.sym} 420 -830 1 0 {name=p1 lab=VOP}
C {lab_pin.sym} 900 -920 2 0 {name=p2 sig_type=std_logic lab=VOP}
C {lab_pin.sym} 900 -960 2 0 {name=p12 sig_type=std_logic lab=VON}
C {ipin.sym} 490 -830 1 0 {name=p13 lab=VDD

}
C {ipin.sym} 550 -830 1 0 {name=p14 lab=VSS}
