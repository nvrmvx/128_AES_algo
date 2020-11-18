vlib work
vlog subByte.v
vlog subBytes.v
vsim work.subBytes
add wave -position insertpoint  \
sim:/subBytes/Input \
sim:/subBytes/inv \
sim:/subBytes/Output
force -freeze sim:/subBytes/inv 0 0
force -freeze sim:/subBytes/Input 128'h193de3bea0f4e22b9ac68d2ae9f84808 0
run 100ps