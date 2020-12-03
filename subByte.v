module subByte(
    input      [7:0] Input,
    input            inv,
    output reg [7:0] Output
);

reg [127:0]box[15:0];

always @(*)
begin
    if (inv)
        $readmemh("invSBox.mif", box);
    else
        $readmemh("sBox.mif", box);
end

always @(*)
begin
    Output[7] = box[Input[7:4]][127-8*Input[3:0]];
    Output[6] = box[Input[7:4]][126-8*Input[3:0]];
    Output[5] = box[Input[7:4]][125-8*Input[3:0]];
    Output[4] = box[Input[7:4]][124-8*Input[3:0]];
    Output[3] = box[Input[7:4]][123-8*Input[3:0]];
    Output[2] = box[Input[7:4]][122-8*Input[3:0]];
    Output[1] = box[Input[7:4]][121-8*Input[3:0]];
    Output[0] = box[Input[7:4]][120-8*Input[3:0]];
end

endmodule