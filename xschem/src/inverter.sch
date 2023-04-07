v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 130 -130 130 -90 {
lab=VDD}
N 130 -30 130 20 {
lab=out}
N 130 0 260 0 {
lab=out}
N 30 -60 30 0 {
lab=in}
N 30 -60 90 -60 {
lab=in}
N 30 50 90 50 {
lab=in}
N 30 0 30 50 {
lab=in}
N 130 -60 210 -60 {
lab=VDD}
N 130 -100 210 -100 {
lab=VDD}
N 210 -100 210 -60 {
lab=VDD}
N 130 80 130 100 {
lab=VSS}
N 130 50 210 50 {
lab=VSS}
N 210 50 210 90 {
lab=VSS}
N 130 90 210 90 {
lab=VSS}
C {devices/ipin.sym} 30 0 0 0 {name=p4 lab=in}
C {devices/iopin.sym} 130 -130 0 0 {name=p5 lab=VDD}
C {devices/opin.sym} 260 0 0 0 {name=p6 lab=out}
C {sky130_fd_pr/nfet_01v8.sym} 110 50 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} 110 -60 0 0 {name=M2
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
model=pfet_01v8
spiceprefix=X
}
C {devices/iopin.sym} 130 100 0 0 {name=p7 lab=VSS}
