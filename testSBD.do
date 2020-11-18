vlib work
vlog subByte.v
vlog subBytes.v
vsim work.subBytes
add wave -position insertpoint  \
sim:/subBytes/Input \
sim:/subBytes/inv \
sim:/subBytes/Output
force -freeze sim:/subBytes/inv 1 0
force -freeze sim:/subBytes/Input 128'hd42711aee0bf98f1b8b45de51e415230 0
run 100ps