module AES128(
    input      [127:0] Input,
    input      [127:0] CipherKey,
    input              inv,
    output reg [127:0] Output
);

wire [127:0] decryptOutput;
wire [127:0] encryptOutput;

Decryption dA(
    .CodedMessage(Input[127:0]),
    .CipherKey(CipherKey[127:0]),
    .InputMessage(decryptOutput[127:0]) 
);

Encryption eA(
    .InputMessage(Input[127:0]),
    .CipherKey(CipherKey[127:0]),
    .CodedMessage(encryptOutput[127:0])
);

always @(*)
begin
    if(inv)
    begin
        Output [127:0] = decryptOutput[127:0];
    end
    else
        Output [127:0] = encryptOutput[127:0];
end

endmodule