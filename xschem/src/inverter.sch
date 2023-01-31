v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 370 -280 390 -280 {
lab=in}
N 370 -280 370 -190 {
lab=in}
N 370 -190 390 -190 {
lab=in}
N 430 -250 430 -220 {
lab=out}
N 430 -160 430 -140 {
lab=VSS}
N 420 -140 430 -140 {
lab=VSS}
N 410 -340 430 -340 {
lab=VDD}
N 430 -340 430 -310 {
lab=VDD}
N 360 -240 370 -240 {
lab=in}
N 430 -240 450 -240 {
lab=out}
N 430 -190 450 -190 {
lab=VSS}
N 450 -190 450 -150 {
lab=VSS}
N 430 -150 450 -150 {
lab=VSS}
N 430 -280 450 -280 {
lab=VDD}
N 450 -320 450 -280 {
lab=VDD}
N 430 -320 450 -320 {
lab=VDD}
C {devices/title.sym} 160 30 0 0 {name=l1 author="Micah Tseng"
}
C {sky130_fd_pr/nfet_01v8.sym} 410 -190 0 0 {name=M1
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 410 -280 0 0 {name=M2
L=0.15
W=1.76
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} 360 -240 0 0 {name=p1 lab=in
}
C {devices/opin.sym} 450 -240 0 0 {name=p2 lab=out
}
C {devices/iopin.sym} 420 -140 2 0 {name=p3 lab=VSS
}
C {devices/iopin.sym} 410 -340 2 0 {name=p4 lab=VDD
}
