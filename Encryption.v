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

endmodule