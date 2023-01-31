v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 280 -90 280 -70 {
lab=GND}
N 270 -170 280 -170 {
lab=VDD}
N 280 -170 280 -150 {
lab=VDD}
N 380 -90 380 -70 {
lab=GND}
N 370 -170 380 -170 {
lab=VSS}
N 380 -170 380 -150 {
lab=VSS}
N 470 -90 470 -70 {
lab=GND}
N 460 -170 470 -170 {
lab=in}
N 470 -170 470 -150 {
lab=in}
N 540 -360 550 -360 {
lab=in}
N 850 -340 870 -340 {
lab=VSS}
N 850 -360 870 -360 {
lab=VDD}
N 860 -320 870 -320 {
lab=out}
N 850 -320 860 -320 {
lab=out}
C {devices/title.sym} 160 30 0 0 {name=l1 author="Micah Tseng"
}
C {sky130_fd_pr/corner.sym} 20 -180 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/code.sym} 20 -360 0 0 {name=MODELS
only_toplevel=true
format="tcleval( @value )"
value="*.lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false}
C {devices/simulator_commands.sym} 160 -350 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.options list act
.options method=gear
.temp 25

.control
save all
tran 0.1 40u 

write inverter_test.raw
.endc

"}
C {src/inverter.sym} 700 -340 0 0 {name=x1}
C {devices/vsource.sym} 280 -120 0 0 {name=V1 value=1.8V
}
C {devices/gnd.sym} 280 -70 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 270 -170 0 0 {name=p1 sig_type=std_logic lab=VDD
}
C {devices/vsource.sym} 380 -120 0 0 {name=V2 value=0
}
C {devices/gnd.sym} 380 -70 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 370 -170 0 0 {name=p2 sig_type=std_logic lab=VSS
}
C {devices/vsource.sym} 470 -120 0 0 {name=V3 value="PULSE 0 1.8V 0us 1ns 1ns 5us 10us"
}
C {devices/gnd.sym} 470 -70 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 460 -170 0 0 {name=p3 sig_type=std_logic lab=in
}
C {devices/lab_pin.sym} 540 -360 0 0 {name=p4 sig_type=std_logic lab=in
}
C {devices/lab_pin.sym} 870 -340 2 0 {name=p5 sig_type=std_logic lab=VSS
}
C {devices/lab_pin.sym} 870 -360 2 0 {name=p6 sig_type=std_logic lab=VDD
}
C {devices/lab_pin.sym} 870 -320 2 0 {name=p7 sig_type=std_logic lab=out
}
