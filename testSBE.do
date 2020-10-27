vlib work
vlog subByteE.v
vlog subBytesE.v
vsim work.subBytesE
add wave -position insertpoint  \
sim:/subBytesE/Input \
sim:/subBytesE/Output
force -freeze sim:/subBytesE/Input 128'h193de3bea0f4e22b9ac68d2ae9f84808 0
run 100ps