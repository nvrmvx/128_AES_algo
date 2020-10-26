module mixColumnsE(
       input [127:0]  Input,
       output [127:0] Output
);

    assign Output = Input;
    //mix the columns of the input

endmodule

//to test go to this directory
//type do testMCE.do in the command line of modelsim
//change the radix of the waves to hexadecimal (right click -> radix -> hexadecimal)
//verify the result

//input
//d4bf5d30e0b452aeb84111f11e2798e5
//expected output
//046681e5e0cb199a48f8d37a2806264c