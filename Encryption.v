module Encryption(
       input [127:0]  InputMessage,
       input [127:0]  CipherKey,
       output [127:0] CodedMessage
);

    assign CodedMessage = InputMessage;
    //add round key
    //9 rounds of
    //  subbytes, shiftrows, mixcolumns, addroundkey
    //last round
    //  subbytes, shiftrows, addroundkey

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