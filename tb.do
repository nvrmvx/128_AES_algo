vlib work
vlog createRoundKey.v
vlog mixColumnsE.v
vlog shiftRowsE.v
vlog mixColumnsD.v
vlog shiftRowsD.v
vlog subByte.v
vlog subBytes.v
vlog Encryption.v
vlog Decryption.v
vlog AES128.v
vlog tb.v
vsim work.tb
add wave -position insertpoint  \
sim:/tb/clk \
sim:/tb/inputData \
sim:/tb/cipherData \
sim:/tb/outputData \
sim:/tb/valid
run 100ns