module subBytes(
    input [127:0]  Input,
    input          inv, //use the inverse s-box if high
    output [127:0] Output
);

//substitute the input bytes with bytes from the s-box/inverse s-box
subByte sB1(
    .Input(Input[127:120]),
    .inv(inv),
    .Output(Output[127:120])
);
subByte sB2(
    .Input(Input[119:112]),
    .inv(inv),
    .Output(Output[119:112])
);
subByte sB3(
    .Input(Input[111:104]),
    .inv(inv),
    .Output(Output[111:104])
);
subByte sB4(
    .Input(Input[103:96]),
    .inv(inv),
    .Output(Output[103:96])
);
subByte sB5(
    .Input(Input[95:88]),
    .inv(inv),
    .Output(Output[95:88])
);
subByte sB6(
    .Input(Input[87:80]),
    .inv(inv),
    .Output(Output[87:80])
);
subByte sB7(
    .Input(Input[79:72]),
    .inv(inv),
    .Output(Output[79:72])
);
subByte sB8(
    .Input(Input[71:64]),
    .inv(inv),
    .Output(Output[71:64])
);
subByte sB9(
    .Input(Input[63:56]),
    .inv(inv),
    .Output(Output[63:56])
);
subByte sB10(
    .Input(Input[55:48]),
    .inv(inv),
    .Output(Output[55:48])
);
subByte sB11(
    .Input(Input[47:40]),
    .inv(inv),
    .Output(Output[47:40])
);
subByte sB12(
    .Input(Input[39:32]),
    .inv(inv),
    .Output(Output[39:32])
);
subByte sB13(
    .Input(Input[31:24]),
    .inv(inv),
    .Output(Output[31:24])
);
subByte sB14(
    .Input(Input[23:16]),
    .inv(inv),
    .Output(Output[23:16])
);
subByte sB15(
    .Input(Input[15:8]),
    .inv(inv),
    .Output(Output[15:8])
);
subByte sB16(
    .Input(Input[7:0]),
    .inv(inv),
    .Output(Output[7:0])
);

endmodule

//Encryption
//input
//193de3bea0f4e22b9ac68d2ae9f84808
//expected output
//d42711aee0bf98f1b8b45de51e415230

//Decryption
//input
//d42711aee0bf98f1b8b45de51e415230
//expected output
//193de3bea0f4e22b9ac68d2ae9f84808