vlib work
vlog shiftRowsD.v
vsim work.shiftRowsD
add wave -position insertpoint  \
sim:/shiftRowsD/Input \
sim:/shiftRowsD/Output
force -freeze sim:/shiftRowsD/Input 128'hd4bf5d30e0b452aeb84111f11e2798e5 0
run 100ps