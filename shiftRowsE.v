module shiftRowsE(
       input [127:0]  Input,
       output [127:0] Output
);

    assign Output = Input;
    //shift rows of the input

endmodule

//to test go to this directory
//type do testSRE.do in the command line of modelsim
//change the radix of the waves to hexadecimal (right click -> radix -> hexadecimal)
//verify the result

//input
//d42711aee0bf98f1b8b45de51e415230
//expected output
//d4bf5d30e0b452aeb84111f11e2798e5