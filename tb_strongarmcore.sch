v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 40090 -20930 40130 -20930 {lab=REG_P}
N 40090 -20910 40100 -20910 {lab=REG_N}
N 40100 -20910 40100 -20880 {lab=REG_N}
C {code.sym} 40220 -21040 0 0 {
name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false
      }
C {vsource.sym} 39680 -20910 0 0 {name=VSS value=0 savecurrent=false}
C {vsource.sym} 39600 -20910 0 0 {name=VDD value=1.8 savecurrent=false}
C {gnd.sym} 39680 -20880 0 0 {name=l1 lab=0}
C {gnd.sym} 39600 -20880 0 0 {name=l2 lab=0}
C {lab_pin.sym} 39600 -20940 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 39680 -20940 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 39790 -20930 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 39790 -20910 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {code_shown.sym} 40250 -20860 0 0 {name=SPICE only_toplevel=false value="* StrongARM Core Testbench - Regeneration Test


.param VCM=0.9





* Initial condition: metastable point
.ic V(REG_P)=\{VCM\} V(REG_N)=\{VCM\}

* Small asymmetry to start regeneration
IINJ REG_P 0 1u  ; 1uA injection to break symmetry

* Load caps
CP REG_P VSS 5f
CN REG_N VSS 5f

.tran 0.1p 20n uic

* Measure regeneration time constant
.measure tran TAU param='1/deriv(ln(abs(v(REG_P)-v(REG_N))))' when time=0.5n

.print tran V(REG_P) V(REG_N) I(VDD)

.end"}
C {/home/master/Documents/6_bit_Flash_ADC/strongarm_core.sym} 39940 -20920 0 0 {name=x1}
C {capa.sym} 40100 -20850 0 0 {name=C1
m=1
value=5f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 40130 -20900 0 0 {name=C2
m=1
value=5f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 40100 -20820 0 0 {name=l3 lab=0}
C {gnd.sym} 40130 -20870 0 0 {name=l4 lab=0}
C {lab_wire.sym} 40110 -20930 2 0 {name=p5 sig_type=std_logic lab=REG_P}
C {lab_wire.sym} 40100 -20900 2 0 {name=p6 sig_type=std_logic lab=REG_N}
