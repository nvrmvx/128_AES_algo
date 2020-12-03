module shiftRowsD(
    input  [127:0] Input,
    output [127:0] Output
);

//First column
assign Output[127:120] = Input[127:120];  
assign Output[87:80] = Input[119:112];
assign Output[47:40] = Input[111:104];
assign Output[7:0]  = Input[103:96];

//Second column
assign Output[95:88]   = Input[95:88];
assign Output[55:48]   = Input[87:80];
assign Output[15:8]   = Input[79:72];
assign Output[103:96]   = Input[71:64];

//Third column
assign Output[63:56]   = Input[63:56];
assign Output[23:16]   = Input[55:48];
assign Output[111:104]   = Input[47:40];
assign Output[71:64]   = Input[39:32];

//Fourth column
assign Output[31:24]   = Input[31:24];
assign Output[119:112]   = Input[23:16];
assign Output[79:72]    = Input[15:8];
assign Output[39:32]     = Input[7:0]; 

endmodule

//input
//d4bf5d30e0b452aeb84111f11e2798e5
//expected output
//d42711aee0bf98f1b8b45de51e415230  
