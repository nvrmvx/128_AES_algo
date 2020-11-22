vlib work
vlog subByte.v
vlog createRoundKey.v
vsim work.createRoundKey
add wave -position insertpoint  \
sim:/createRoundKey/RK \
sim:/createRoundKey/r_c \
sim:/createRoundKey/NextRK
force -freeze sim:/createRoundKey/RK 128'h2b7e151628aed2a6abf7158809cf4f3c 0
force -freeze sim:/createRoundKey/r_c 4'b0000 0
run 100ps