vlib work
vlog mixColumnsE.v
vsim work.mixColumnsE
add wave -position insertpoint  \
sim:/mixColumnsE/Input \
sim:/mixColumnsE/Output
force -freeze sim:/mixColumnsE/Input 128'hd4bf5d30e0b452aeb84111f11e2798e5 0
run 100ps