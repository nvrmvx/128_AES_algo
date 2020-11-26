vlib work
vlog createRoundKey.v
vlog mixColumnsD.v
vlog shiftRowsD.v
vlog subByte.v
vlog subBytes.v
vlog Decryption.v
vsim work.Decryption
add wave -position insertpoint  \
sim:/Decryption/CodedMessage \
sim:/Decryption/CipherKey \
sim:/Decryption/InputMessage
force -freeze sim:/Decryption/CodedMessage 128'h3925841d02dc09fbdc118597196a0b32 0
force -freeze sim:/Decryption/CipherKey 128'h2b7e151628aed2a6abf7158809cf4f3c 0
run 100ps