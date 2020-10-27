module subBytesE(
       input [127:0]  Input,
       output [127:0] Output
);

    //substitute the input bytes with bytes from the s-box
    subByteE sB1(
        .Input(Input[127:120]),
        .Output(Output[127:120])
    );
    subByteE sB2(
        .Input(Input[119:112]),
        .Output(Output[119:112])
    );
    subByteE sB3(
        .Input(Input[111:104]),
        .Output(Output[111:104])
    );
    subByteE sB4(
        .Input(Input[103:96]),
        .Output(Output[103:96])
    );
    subByteE sB5(
        .Input(Input[95:88]),
        .Output(Output[95:88])
    );
    subByteE sB6(
        .Input(Input[87:80]),
        .Output(Output[87:80])
    );
    subByteE sB7(
        .Input(Input[79:72]),
        .Output(Output[79:72])
    );
    subByteE sB8(
        .Input(Input[71:64]),
        .Output(Output[71:64])
    );
    subByteE sB9(
        .Input(Input[63:56]),
        .Output(Output[63:56])
    );
    subByteE sB10(
        .Input(Input[55:48]),
        .Output(Output[55:48])
    );
    subByteE sB11(
        .Input(Input[47:40]),
        .Output(Output[47:40])
    );
    subByteE sB12(
        .Input(Input[39:32]),
        .Output(Output[39:32])
    );
    subByteE sB13(
        .Input(Input[31:24]),
        .Output(Output[31:24])
    );
    subByteE sB14(
        .Input(Input[23:16]),
        .Output(Output[23:16])
    );
    subByteE sB15(
        .Input(Input[15:8]),
        .Output(Output[15:8])
    );
    subByteE sB16(
        .Input(Input[7:0]),
        .Output(Output[7:0])
    );

endmodule

//to test go to this directory
//type do testSBE.do in the command line of modelsim
//change the radix of the waves to hexadecimal (right click -> radix -> hexadecimal)
//verify the result

//input
//193de3bea0f4e22b9ac68d2ae9f84808
//expected output
//d42711aee0bf98f1b8b45de51e415230