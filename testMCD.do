vlib work
vlog mixColumnsD.v
vsim work.mixColumnsD
add wave -position insertpoint  \
sim:/mixColumnsD/Input \
sim:/mixColumnsD/Output
force -freeze sim:/mixColumnsD/Input 128'h046681e5e0cb199a48f8d37a2806264c 0
run 100ps