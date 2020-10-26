vlib work
vlog shiftRowsE.v
vsim work.shiftRowsE
add wave -position insertpoint  \
sim:/shiftRowsE/Input \
sim:/shiftRowsE/Output
force -freeze sim:/shiftRowsE/Input 128'hd42711aee0bf98f1b8b45de51e415230 0
run 100ps