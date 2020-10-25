module Encryption(
       input   InputMessage,
       input   CipherKey,
       output  CodedMessage
);

    //add round key
    //9 rounds of
    //  subbytes, shiftrows, mixcolumns, addroundkey
    //last round
    //  subbytes, shiftrows, addroundkey

endmodule