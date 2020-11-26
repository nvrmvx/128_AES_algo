module createRoundKey(
    input  [127:0] RK,
    input  [3:0]   r_c,
    output [127:0] NextRK
);

wire [31:0] k1,k2,k3,k4,temp;

assign k1 = RK[127:96];
assign k2 = RK[95:64];
assign k3 = RK[63:32];
assign k4 = RK[31:0];

assign NextRK[127:96] = k1 ^ temp ^ r_const(r_c);
assign NextRK[95:64]  = k1 ^ temp ^ r_const(r_c) ^ k2;
assign NextRK[63:32]  = k1 ^ temp ^ r_const(r_c) ^ k2 ^ k3;
assign NextRK[31:0]   = k1 ^ temp ^ r_const(r_c) ^ k2 ^ k3 ^ k4;

subByte sBk1(
    .Input(k4[23:16]),
    .inv(1'b0),
    .Output(temp[31:24])
);
subByte sBk2(
    .Input(k4[15:8]),
    .inv(1'b0),
    .Output(temp[23:16])
);
subByte sBk3(
    .Input(k4[7:0]),
    .inv(1'b0),
    .Output(temp[15:8])
);
subByte sBk4(
    .Input(k4[31:24]),
    .inv(1'b0),
    .Output(temp[7:0])
);

function [31:0] r_const;
    input [3:0] r_c;
    case(r_c)
        4'h0:    r_const=32'h01_00_00_00;
        4'h1:    r_const=32'h02_00_00_00;
        4'h2:    r_const=32'h04_00_00_00;
        4'h3:    r_const=32'h08_00_00_00;
        4'h4:    r_const=32'h10_00_00_00;
        4'h5:    r_const=32'h20_00_00_00;
        4'h6:    r_const=32'h40_00_00_00;
        4'h7:    r_const=32'h80_00_00_00;
        4'h8:    r_const=32'h1b_00_00_00;
        4'h9:    r_const=32'h36_00_00_00;
        default: r_const=32'h00_00_00_00;
    endcase
endfunction

endmodule

//input
//2b7e151628aed2a6abf7158809cf4f3c
//expected output
//a0fafe1788542cb123a339392a6c7605