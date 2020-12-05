module AES128(
    input      [127:0] Input,
    input      [127:0] CipherKey,
    input              inv,
    output reg [127:0] Output
);

wire [127:0] decryptOutput;
wire [127:0] encryptOutput;

Decryption dA(
    .CodedMessage(Input),
    .CipherKey(CipherKey),
    .InputMessage(decryptOutput)
);

Encryption eA(
    .InputMessage(Input),
    .CipherKey(CipherKey),
    .CodedMessage(encryptOutput)
);

always @(*)
begin
    if(inv)
        assign Output = decryptOutput;
    else
        assign Output = encryptOutput;
end

endmodule