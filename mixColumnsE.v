module mixColumnsE(
	input  [127:0] Input,
	output [127:0] Output
);

wire [7:0] d0;
wire [7:0] d1;
wire [7:0] d2;
wire [7:0] d3;
wire [7:0] d4;
wire [7:0] d5;
wire [7:0] d6;
wire [7:0] d7;
wire [7:0] d8;
wire [7:0] d9;
wire [7:0] d10;
wire [7:0] d11;
wire [7:0] d12;
wire [7:0] d13;
wire [7:0] d14;
wire [7:0] d15;

assign d0[7:0]  = Input[127:120];
assign d1[7:0]  = Input[119:112];
assign d2[7:0]  = Input[111:104];
assign d3[7:0]  = Input[103:96];
assign d4[7:0]  = Input[95:88];
assign d5[7:0]  = Input[87:80];
assign d6[7:0]  = Input[79:72];
assign d7[7:0]  = Input[71:64];
assign d8[7:0]  = Input[63:56];
assign d9[7:0]  = Input[55:48];
assign d10[7:0] = Input[47:40];
assign d11[7:0] = Input[39:32];
assign d12[7:0] = Input[31:24];
assign d13[7:0] = Input[23:16];
assign d14[7:0] = Input[15:8];
assign d15[7:0] = Input[7:0];

function automatic [7:0] hexmul;
	input [7:0] tempIn1;
	input [7:0] tempIn2;
	reg   [7:0] tempOut = 8'b00000000;
	reg flag = 0;
	integer i = 0;
	begin
		for(i = 0; i < 8; i = i + 1)
		begin
		if(tempIn2[0] == 1'b1)
		begin
			tempOut[7:0] = tempOut[7:0] ^ tempIn1[7:0];
		end
		flag = tempIn1[7];
		tempIn1[7:0] = tempIn1[7:0] << 1;
		if(flag)
		begin
			tempIn1[7:0] = tempIn1[7:0]^8'b00011011;
		end
		tempIn2[7:0] = tempIn2[7:0] >> 1;
		flag = 0;
		end
	hexmul = tempOut[7:0];
	end
endfunction

assign Output[127:120] = hexmul(2'h02, d0[7:0]) ^ hexmul(2'h03, d1[7:0]) ^ d2[7:0] ^ d3[7:0];
assign Output[119:112] = d0[7:0] ^ hexmul(2'h02, d1[7:0]) ^ hexmul(2'h03, d2[7:0]) ^ d3[7:0];
assign Output[111:104] = d0[7:0] ^ d1[7:0] ^ hexmul(2'h02, d2[7:0]) ^ hexmul(2'h03, d3[7:0]);
assign Output[103:96]  = hexmul(2'h03, d0[7:0]) ^ d1[7:0] ^ d2[7:0] ^ hexmul(2'h02, d3[7:0]);

assign Output[95:88]   = hexmul(2'h02, d4[7:0]) ^ hexmul(2'h03, d5[7:0]) ^ d6[7:0] ^ d7[7:0];
assign Output[87:80]   = d4[7:0] ^ hexmul(2'h02, d5[7:0]) ^ hexmul(2'h03, d6[7:0]) ^ d7[7:0];
assign Output[79:72]   = d4[7:0] ^ d5[7:0] ^ hexmul(2'h02, d6[7:0]) ^ hexmul(2'h03, d7[7:0]);
assign Output[71:64]   = hexmul(2'h03, d4[7:0]) ^ d5[7:0] ^ d6[7:0] ^ hexmul(2'h02, d7[7:0]);

assign Output[63:56]   = hexmul(2'h02, d8[7:0]) ^ hexmul(2'h03, d9[7:0]) ^ d10[7:0] ^ d11[7:0];
assign Output[55:48]   = d8[7:0] ^ hexmul(2'h02, d9[7:0]) ^ hexmul(2'h03, d10[7:0]) ^ d11[7:0];
assign Output[47:40]   = d8[7:0] ^ d9[7:0] ^ hexmul(2'h02, d10[7:0]) ^ hexmul(2'h03, d11[7:0]);
assign Output[39:32]   = hexmul(2'h03, d8[7:0]) ^ d9[7:0] ^ d10[7:0] ^ hexmul(2'h02, d11[7:0]);

assign Output[31:24]   = hexmul(2'h02, d12[7:0]) ^ hexmul(2'h03, d13[7:0]) ^ d14[7:0] ^ d15[7:0];
assign Output[23:16]   = d12[7:0] ^ hexmul(2'h02, d13[7:0]) ^ hexmul(2'h03, d14[7:0]) ^ d15[7:0];
assign Output[15:8]    = d12[7:0] ^ d13[7:0] ^ hexmul(2'h02, d14[7:0]) ^ hexmul(2'h03, d15[7:0]);
assign Output[7:0]     = hexmul(2'h03, d12[7:0]) ^ d13[7:0] ^ d14[7:0] ^ hexmul(2'h02, d15[7:0]);

endmodule

//input
//d4bf5d30e0b452aeb84111f11e2798e5
//expected output
//046681e5e0cb199a48f8d37a2806264c