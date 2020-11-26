module Decryption(
    input  [127:0] CodedMessage,
    input  [127:0] CipherKey,
    output [127:0] InputMessage
);

//first round
//  addroundkey, shiftrows, subbytes
//9 rounds of
//  addroundkey, mixcolumns, shiftrows, subbytes,
//add round key

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

//round 1
assign temp1 = CodedMessage ^ roundKey10;
shiftRowsD sR1(
    .Input(temp1),
    .Output(temp2)
);
subBytes sB1(
    .Input(temp2),
    .inv(1'b1),
    .Output(temp3)
);

//round 2
assign temp4 = temp3 ^ roundKey9;
mixColumnsD mC2(
    .Input(temp4),
    .Output(temp5)
);
shiftRowsD sR2(
    .Input(temp5),
    .Output(temp6)
);
subBytes sB2(
    .Input(temp6),
    .inv(1'b1),
    .Output(temp7)
);

//round 3
assign temp8 = temp7 ^ roundKey8;
mixColumnsD mC3(
    .Input(temp8),
    .Output(temp9)
);
shiftRowsD sR3(
    .Input(temp9),
    .Output(temp10)
);
subBytes sB3(
    .Input(temp10),
    .inv(1'b1),
    .Output(temp11)
);

//round 4
assign temp12 = temp11 ^ roundKey7;
mixColumnsD mC4(
    .Input(temp12),
    .Output(temp13)
);
shiftRowsD sR4(
    .Input(temp13),
    .Output(temp14)
);
subBytes sB4(
    .Input(temp14),
    .inv(1'b1),
    .Output(temp15)
);

//round 5
assign temp16 = temp15 ^ roundKey6;
mixColumnsD mC5(
    .Input(temp16),
    .Output(temp17)
);
shiftRowsD sR5(
    .Input(temp17),
    .Output(temp18)
);
subBytes sB5(
    .Input(temp18),
    .inv(1'b1),
    .Output(temp19)
);

//round 6
assign temp20 = temp19 ^ roundKey5;
mixColumnsD mC6(
    .Input(temp20),
    .Output(temp21)
);
shiftRowsD sR6(
    .Input(temp21),
    .Output(temp22)
);
subBytes sB6(
    .Input(temp22),
    .inv(1'b1),
    .Output(temp23)
);

//round 7
assign temp24 = temp23 ^ roundKey4;
mixColumnsD mC7(
    .Input(temp24),
    .Output(temp25)
);
shiftRowsD sR7(
    .Input(temp25),
    .Output(temp26)
);
subBytes sB7(
    .Input(temp26),
    .inv(1'b1),
    .Output(temp27)
);

//round 8
assign temp28 = temp27 ^ roundKey3;
mixColumnsD mC8(
    .Input(temp28),
    .Output(temp29)
);
shiftRowsD sR8(
    .Input(temp29),
    .Output(temp30)
);
subBytes sB8(
    .Input(temp30),
    .inv(1'b1),
    .Output(temp31)
);

//round 9
assign temp32 = temp31 ^ roundKey2;
mixColumnsD mC9(
    .Input(temp32),
    .Output(temp33)
);
shiftRowsD sR9(
    .Input(temp33),
    .Output(temp34)
);
subBytes sB9(
    .Input(temp34),
    .inv(1'b1),
    .Output(temp35)
);

//round 10
assign temp36 = temp35 ^ roundKey1;
mixColumnsD mC10(
    .Input(temp36),
    .Output(temp37)
);
shiftRowsD sR10(
    .Input(temp37),
    .Output(temp38)
);
subBytes sB10(
    .Input(temp38),
    .inv(1'b1),
    .Output(temp39)
);

assign InputMessage = temp39 ^ CipherKey;

endmodule

//input
//3925841d02dc09fbdc118597196a0b32
//2b7e151628aed2a6abf7158809cf4f3c
//expected output
//3243f6a8885a308d313198a2e0370734