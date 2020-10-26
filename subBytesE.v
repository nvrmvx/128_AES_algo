module subBytesE(
       input [127:0]  Input,
       output [127:0] Output
);

    assign Output = Input;
    //substitute bytes of the input (may be hardcoded)

endmodule

//to test go to this directory
//type do testSBE.do in the command line of modelsim
//change the radix of the waves to hexadecimal (right click -> radix -> hexadecimal)
//verify the result

//input
//193de3bea0f4e22b9ac68d2ae9f84808
//expected output
//d42711aee0bf98f1b8b45de51e415230