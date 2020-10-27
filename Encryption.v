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

    wire roundKey1;
    wire roundKey2;
    wire roundKey3;
    wire roundKey4;
    wire roundKey5;
    wire roundKey6;
    wire roundKey7;
    wire roundKey8;
    wire roundKey9;
    wire roundKey10;
    wire temp1;
    wire temp2;
    wire temp3;
    wire temp4;
    wire temp5;
    wire temp6;
    wire temp7;
    wire temp8;
    wire temp9;
    wire temp10;
    wire temp11;
    wire temp12;
    wire temp13;
    wire temp14;
    wire temp15;
    wire temp16;
    wire temp17;
    wire temp18;
    wire temp19;
    wire temp20;
    wire temp21;
    wire temp22;
    wire temp23;
    wire temp24;
    wire temp25;
    wire temp26;
    wire temp27;
    wire temp28;
    wire temp29;
    wire temp30;
    wire temp31;
    wire temp32;
    wire temp33;
    wire temp34;
    wire temp35;
    wire temp36;
    wire temp37;
    wire temp38;
    wire temp39;

    createRoundKey rK1(
        .RK(CipherKey),
        .NextRK(roundKey1)
    );
    createRoundKey rK2(
        .RK(roundKey1),
        .NextRK(roundKey2)
    );
    createRoundKey rK3(
        .RK(roundKey2),
        .NextRK(roundKey3)
    );
    createRoundKey rK4(
        .RK(roundKey3),
        .NextRK(roundKey4)
    );
    createRoundKey rK5(
        .RK(roundKey4),
        .NextRK(roundKey5)
    );
    createRoundKey rK6(
        .RK(roundKey5),
        .NextRK(roundKey6)
    );
    createRoundKey rK7(
        .RK(roundKey6),
        .NextRK(roundKey7)
    );
    createRoundKey rK8(
        .RK(roundKey7),
        .NextRK(roundKey8)
    );
    createRoundKey rK9(
        .RK(roundKey8),
        .NextRK(roundKey9)
    );
    createRoundKey rK10(
        .RK(roundKey9),
        .NextRK(roundKey10)
    );

    assign temp1 = InputMessage ^ CipherKey;
    //round 1
    subBytesE sB1(
        .Input(temp1),
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
    subBytesE sB2(
        .Input(temp5),
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
    subBytesE sB3(
        .Input(temp9),
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
    subBytesE sB4(
        .Input(temp13),
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
    subBytesE sB5(
        .Input(temp17),
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
    subBytesE sB6(
        .Input(temp21),
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
    subBytesE sB7(
        .Input(temp25),
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
    subBytesE sB8(
        .Input(temp29),
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
    subBytesE sB9(
        .Input(temp33),
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
    subBytesE sB10(
        .Input(temp37),
        .Output(temp38)
    );
    shiftRowsE sR10(
        .Input(temp38),
        .Output(temp39)
    );
    assign CodedMessage = temp39 ^ roundKey10;

endmodule

//to test go to this directory
//type do testE.do in the command line of modelsim
//change the radix of the waves to hexadecimal (right click -> radix -> hexadecimal)
//verify the result

//input
//3243f6a8885a308d313198a2e0370734
//2b7e151628aed2a6abf7158809cf4f3c
//expected output
//3925841d02dc09fbdc118597196a0b32