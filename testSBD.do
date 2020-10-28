vlib work
vlog subByteD.v
vlog subBytesD.v
vsim work.subBytesD
add wave -position insertpoint  \
sim:/subBytesD/Input \
sim:/subBytesD/Output
force -freeze sim:/subBytesD/Input 128'hd42711aee0bf98f1b8b45de51e415230 0
run 100ps