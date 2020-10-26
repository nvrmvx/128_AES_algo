module createRoundKey(
       input [127:0]  RK,
       output [127:0] NextRK
);

    assign NextRK = RK;
    //create a round key from the previous round key

endmodule

//to test go to this directory
//type do testCRK.do in the command line of modelsim
//change the radix of the waves to hexadecimal (right click -> radix -> hexadecimal)
//verify the result

//input
//2b7e151628aed2a6abf7158809cf4f3c
//expected output
//a0fafe1788542cb123a339392a6c7605