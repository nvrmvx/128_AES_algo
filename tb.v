`timescale 1ns/1ps

module tb();

//inputData.txt configuration
//  E or D for encryption or decryption
//  h or p for hexadecimal or plain text input of the cipher key
//      cipher key (must be exactly 16 characters or 32 hex numbers long)
//  h or p for hexadecimal or plain text input of the input message
//      input message (may be any length)

//the output will appear in a new file named outputData.txt

reg clk;
integer fPtrI;
integer fPtrO;
reg valid = 1'b0;
reg [7:0] mode;
reg inv;
reg [7:0] baseC;
reg [7:0] baseI;
reg g;
reg [127:0] inputData;
reg [127:0] cipherData;
wire [127:0] outputData;

initial
begin
    clk = 0;
    forever
    begin
    	clk = !clk;
    	#5;
    end
end

initial
begin
    fPtrI = $fopen("inputData.txt","r");
    fPtrO = $fopen("outputData.txt","w");
    cipherData = 0;
    #5;
    $fscanf(fPtrI,"%c",mode);
    if (mode == 8'h45)
        assign inv = 1'b0;
    else if (mode == 8'h44)
        assign inv = 1'b1;
    else
    begin
        $fclose(fPtrI);
        $fclose(fPtrO);
        $finish;
    end
    $fscanf(fPtrI,"%c",g); //get the \n character
    $fscanf(fPtrI,"%c",baseC);
    $fscanf(fPtrI,"%c",g); //get the \n character
    if (baseC == 8'h68)
        $fscanf(fPtrI,"%32h",cipherData);
    else if (baseC == 8'h70)
    begin
        $fscanf(fPtrI,"%c",cipherData[127:120]);
        $fscanf(fPtrI,"%c",cipherData[119:112]);
        $fscanf(fPtrI,"%c",cipherData[111:104]);
        $fscanf(fPtrI,"%c",cipherData[103:96]);
        $fscanf(fPtrI,"%c",cipherData[95:88]);
        $fscanf(fPtrI,"%c",cipherData[87:80]);
        $fscanf(fPtrI,"%c",cipherData[79:72]);
        $fscanf(fPtrI,"%c",cipherData[71:64]);
        $fscanf(fPtrI,"%c",cipherData[63:56]);
        $fscanf(fPtrI,"%c",cipherData[55:48]);
        $fscanf(fPtrI,"%c",cipherData[47:40]);
        $fscanf(fPtrI,"%c",cipherData[39:32]);
        $fscanf(fPtrI,"%c",cipherData[31:24]);
        $fscanf(fPtrI,"%c",cipherData[23:16]);
        $fscanf(fPtrI,"%c",cipherData[15:8]);
        $fscanf(fPtrI,"%c",cipherData[7:0]);
    end
    else
    begin
        $fclose(fPtrI);
        $fclose(fPtrO);
        $finish;
    end
    $fscanf(fPtrI,"%c",g); //get the \n character
    $fscanf(fPtrI,"%c",baseI);
    $fscanf(fPtrI,"%c",g); //get the \n character
    forever
    begin
        @(posedge clk);
        #1;
        inputData = 0;
        #1;
        if (baseI == 8'h70)
        begin
            $fscanf(fPtrI,"%c",inputData[127:120]);
            $fscanf(fPtrI,"%c",inputData[119:112]);
            $fscanf(fPtrI,"%c",inputData[111:104]);
            $fscanf(fPtrI,"%c",inputData[103:96]);
            $fscanf(fPtrI,"%c",inputData[95:88]);
            $fscanf(fPtrI,"%c",inputData[87:80]);
            $fscanf(fPtrI,"%c",inputData[79:72]);
            $fscanf(fPtrI,"%c",inputData[71:64]);
            $fscanf(fPtrI,"%c",inputData[63:56]);
            $fscanf(fPtrI,"%c",inputData[55:48]);
            $fscanf(fPtrI,"%c",inputData[47:40]);
            $fscanf(fPtrI,"%c",inputData[39:32]);
            $fscanf(fPtrI,"%c",inputData[31:24]);
            $fscanf(fPtrI,"%c",inputData[23:16]);
            $fscanf(fPtrI,"%c",inputData[15:8]);
            $fscanf(fPtrI,"%c",inputData[7:0]);
        end
        else if (baseI == 8'h68)
        begin
            $fscanf(fPtrI,"%32h",inputData);
        end
        else
        begin
            $fclose(fPtrI);
            $fclose(fPtrO);
            $finish;
        end
        assign valid = 1'b1;
    end
end

always @(posedge clk)
begin
    if (valid)
    begin
        if (mode == 8'h45)
            $fwriteh(fPtrO,outputData,"");
        else if (mode == 8'h44)
            $fwrite(fPtrO,outputData);
        if(inputData[7:0] == 8'h00)
        begin
            $fclose(fPtrI);
            $fclose(fPtrO);
            $finish;
        end
    end
end

//a placeholder for the future AES module
Encryption e(
    .InputMessage(inputData),
    .CipherKey(cipherData),
    //.inv(inv),
    .CodedMessage(outputData)
);

endmodule