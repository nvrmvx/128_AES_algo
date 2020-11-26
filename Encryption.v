module Encryption(
    input [127:0]  InputMessage,
    input [127:0]  CipherKey,
    output [127:0] CodedMessage
);

//add round key
//9 rounds of
//  subbytes, shiftrows, mixcolumns, addroundkey
//last round
//  subbytes, shiftrows, addroundkey

wire [127:0] roundKey1;
wire [127:0] roundKey2;
wire [127:0] roundKey3;
wire [127:0] roundKey4;
wire [127:0] roundKey5;
wire [127:0] roundKey6;
wire [127:0] roundKey7;
wire [127:0] roundKey8;
wire [127:0] roundKey9;
wire [127:0] roundKey10;
wire [127:0] temp1;
wire [127:0] temp2;
wire [127:0] temp3;
wire [127:0] temp4;
wire [127:0] temp5;
wire [127:0] temp6;
wire [127:0] temp7;
wire [127:0] temp8;
wire [127:0] temp9;
wire [127:0] temp10;
wire [127:0] temp11;
wire [127:0] temp12;
wire [127:0] temp13;
wire [127:0] temp14;
wire [127:0] temp15;
wire [127:0] temp16;
wire [127:0] temp17;
wire [127:0] temp18;
wire [127:0] temp19;
wire [127:0] temp20;
wire [127:0] temp21;
wire [127:0] temp22;
wire [127:0] temp23;
wire [127:0] temp24;
wire [127:0] temp25;
wire [127:0] temp26;
wire [127:0] temp27;
wire [127:0] temp28;
wire [127:0] temp29;
wire [127:0] temp30;
wire [127:0] temp31;
wire [127:0] temp32;
wire [127:0] temp33;
wire [127:0] temp34;
wire [127:0] temp35;
wire [127:0] temp36;
wire [127:0] temp37;
wire [127:0] temp38;
wire [127:0] temp39;

createRoundKey rK1(
    .RK(CipherKey),
    .r_c(4'b0000),
    .NextRK(roundKey1)
);
createRoundKey rK2(
    .RK(roundKey1),
    .r_c(4'b0001),
    .NextRK(roundKey2)
);
createRoundKey rK3(
    .RK(roundKey2),
    .r_c(4'b0010),
    .NextRK(roundKey3)
);
createRoundKey rK4(
    .RK(roundKey3),
    .r_c(4'b0011),
    .NextRK(roundKey4)
);
createRoundKey rK5(
    .RK(roundKey4),
    .r_c(4'b0100),
    .NextRK(roundKey5)
);
createRoundKey rK6(
    .RK(roundKey5),
    .r_c(4'b0101),
    .NextRK(roundKey6)
);
createRoundKey rK7(
    .RK(roundKey6),
    .r_c(4'b0110),
    .NextRK(roundKey7)
);
createRoundKey rK8(
    .RK(roundKey7),
    .r_c(4'b0111),
    .NextRK(roundKey8)
);
createRoundKey rK9(
    .RK(roundKey8),
    .r_c(4'b1000),
    .NextRK(roundKey9)
);
createRoundKey rK10(
    .RK(roundKey9),
    .r_c(4'b1001),
    .NextRK(roundKey10)
);

assign temp1 = InputMessage ^ CipherKey;

//round 1
subBytes sB1(
    .Input(temp1),
    .inv(1'b0),
    .Output(temp2)
);
shiftRowsE sR1(
    .Input(temp2),
    .Output(temp3)
);
mixColumnsE mC1(
    .Input(temp3),
    .Output(temp4)
);
assign temp5 = temp4 ^ roundKey1;

//round 2
subBytes sB2(
    .Input(temp5),
    .inv(1'b0),
    .Output(temp6)
);
shiftRowsE sR2(
    .Input(temp6),
    .Output(temp7)
);
mixColumnsE mC2(
    .Input(temp7),
    .Output(temp8)
);
assign temp9 = temp8 ^ roundKey2;

//round 3
subBytes sB3(
    .Input(temp9),
    .inv(1'b0),
    .Output(temp10)
);
shiftRowsE sR3(
    .Input(temp10),
    .Output(temp11)
);
mixColumnsE mC3(
    .Input(temp11),
    .Output(temp12)
);
assign temp13 = temp12 ^ roundKey3;

//round 4
subBytes sB4(
    .Input(temp13),
    .inv(1'b0),
    .Output(temp14)
);
shiftRowsE sR4(
    .Input(temp14),
    .Output(temp15)
);
mixColumnsE mC4(
    .Input(temp15),
    .Output(temp16)
);
assign temp17 = temp16 ^ roundKey4;

//round 5
subBytes sB5(
    .Input(temp17),
    .inv(1'b0),
    .Output(temp18)
);
shiftRowsE sR5(
    .Input(temp18),
    .Output(temp19)
);
mixColumnsE mC5(
    .Input(temp19),
    .Output(temp20)
);
assign temp21 = temp20 ^ roundKey5;

//round 6
subBytes sB6(
    .Input(temp21),
    .inv(1'b0),
    .Output(temp22)
);
shiftRowsE sR6(
    .Input(temp22),
    .Output(temp23)
);
mixColumnsE mC6(
    .Input(temp23),
    .Output(temp24)
);
assign temp25 = temp24 ^ roundKey6;

//round 7
subBytes sB7(
    .Input(temp25),
    .inv(1'b0),
    .Output(temp26)
);
shiftRowsE sR7(
    .Input(temp26),
    .Output(temp27)
);
mixColumnsE mC7(
    .Input(temp27),
    .Output(temp28)
);
assign temp29 = temp28 ^ roundKey7;

//round 8
subBytes sB8(
    .Input(temp29),
    .inv(1'b0),
    .Output(temp30)
);
shiftRowsE sR8(
    .Input(temp30),
    .Output(temp31)
);
mixColumnsE mC8(
    .Input(temp31),
    .Output(temp32)
);
assign temp33 = temp32 ^ roundKey8;

//round 9
subBytes sB9(
    .Input(temp33),
    .inv(1'b0),
    .Output(temp34)
);
shiftRowsE sR9(
    .Input(temp34),
    .Output(temp35)
);
mixColumnsE mC9(
    .Input(temp35),
    .Output(temp36)
);
assign temp37 = temp36 ^ roundKey9;

//round 10
subBytes sB10(
    .Input(temp37),
    .inv(1'b0),
    .Output(temp38)
);
shiftRowsE sR10(
    .Input(temp38),
    .Output(temp39)
);
assign CodedMessage = temp39 ^ roundKey10;

endmodule

//input
//3243f6a8885a308d313198a2e0370734
//2b7e151628aed2a6abf7158809cf4f3c
//expected output
//3925841d02dc09fbdc118597196a0b32