vlib work
vlog createRoundKey.v
vlog mixColumnsE.v
vlog shiftRowsE.v
vlog subByte.v
vlog subBytes.v
vlog Encryption.v
vsim work.Encryption
add wave -position insertpoint  \
sim:/Encryption/InputMessage \
sim:/Encryption/CipherKey \
sim:/Encryption/CodedMessage
force -freeze sim:/Encryption/InputMessage 128'h3243f6a8885a308d313198a2e0370734 0
force -freeze sim:/Encryption/CipherKey 128'h2b7e151628aed2a6abf7158809cf4f3c 0
run 100ps