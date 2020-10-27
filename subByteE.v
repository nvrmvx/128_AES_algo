module subByteE(
       input [7:0]  Input,
       output reg [7:0] Output
)

    //substitute the input byte with a byte from the s-box
    always @(*)
        if (Input == 8'h00)
            Output = 8'h63;
        else if (Input == 8'h01)
            Output = 8'h7c;
        else if (Input == 8'h02)
            Output = 8'h77;
        else if (Input == 8'h03)
            Output = 8'h7b;
        else if (Input == 8'h04)
            Output = 8'hf2;
        else if (Input == 8'h05)
            Output = 8'h6b;
        else if (Input == 8'h06)
            Output = 8'h6f;
        else if (Input == 8'h07)
            Output = 8'hc5;
        else if (Input == 8'h08)
            Output = 8'h30;
        else if (Input == 8'h09)
            Output = 8'h01;
        else if (Input == 8'h0a)
            Output = 8'h67;
        else if (Input == 8'h0b)
            Output = 8'h2b;
        else if (Input == 8'h0c)
            Output = 8'hfe;
        else if (Input == 8'h0d)
            Output = 8'hd7;
        else if (Input == 8'h0e)
            Output = 8'hab;
        else if (Input == 8'h0f)
            Output = 8'h76;
        else if (Input == 8'h10)
            Output = 8'hca;
        else if (Input == 8'h11)
            Output = 8'h82;
        else if (Input == 8'h12)
            Output = 8'hc9;
        else if (Input == 8'h13)
            Output = 8'h7d;
        else if (Input == 8'h14)
            Output = 8'hfa;
        else if (Input == 8'h15)
            Output = 8'h59;
        else if (Input == 8'h16)
            Output = 8'h47;
        else if (Input == 8'h17)
            Output = 8'hf0;
        else if (Input == 8'h18)
            Output = 8'had;
        else if (Input == 8'h19)
            Output = 8'hd4;
        else if (Input == 8'h1a)
            Output = 8'ha2;
        else if (Input == 8'h1b)
            Output = 8'haf;
        else if (Input == 8'h1c)
            Output = 8'h9c;
        else if (Input == 8'h1d)
            Output = 8'ha4;
        else if (Input == 8'h1e)
            Output = 8'h72;
        else if (Input == 8'h1f)
            Output = 8'hc0;
        else if (Input == 8'h20)
            Output = 8'hb7;
        else if (Input == 8'h21)
            Output = 8'hfd;
        else if (Input == 8'h22)
            Output = 8'h93;
        else if (Input == 8'h23)
            Output = 8'h26;
        else if (Input == 8'h24)
            Output = 8'h36;
        else if (Input == 8'h25)
            Output = 8'h3f;
        else if (Input == 8'h26)
            Output = 8'hf7;
        else if (Input == 8'h27)
            Output = 8'hcc;
        else if (Input == 8'h28)
            Output = 8'h34;
        else if (Input == 8'h29)
            Output = 8'ha5;
        else if (Input == 8'h2a)
            Output = 8'he5;
        else if (Input == 8'h2b)
            Output = 8'hf1;
        else if (Input == 8'h2c)
            Output = 8'h71;
        else if (Input == 8'h2d)
            Output = 8'hd8;
        else if (Input == 8'h2e)
            Output = 8'h31;
        else if (Input == 8'h2f)
            Output = 8'h15;
        else if (Input == 8'h30)
            Output = 8'h04;
        else if (Input == 8'h31)
            Output = 8'hc7;
        else if (Input == 8'h32)
            Output = 8'h23;
        else if (Input == 8'h33)
            Output = 8'hc3;
        else if (Input == 8'h34)
            Output = 8'h18;
        else if (Input == 8'h35)
            Output = 8'h96;
        else if (Input == 8'h36)
            Output = 8'h05;
        else if (Input == 8'h37)
            Output = 8'h9a;
        else if (Input == 8'h38)
            Output = 8'h07;
        else if (Input == 8'h39)
            Output = 8'h12;
        else if (Input == 8'h3a)
            Output = 8'h80;
        else if (Input == 8'h3b)
            Output = 8'he2;
        else if (Input == 8'h3c)
            Output = 8'heb;
        else if (Input == 8'h3d)
            Output = 8'h27;
        else if (Input == 8'h3e)
            Output = 8'hb2;
        else if (Input == 8'h3f)
            Output = 8'h75;
        else if (Input == 8'h40)
            Output = 8'h09;
        else if (Input == 8'h41)
            Output = 8'h83;
        else if (Input == 8'h42)
            Output = 8'h2c;
        else if (Input == 8'h43)
            Output = 8'h1a;
        else if (Input == 8'h44)
            Output = 8'h1b;
        else if (Input == 8'h45)
            Output = 8'h6e;
        else if (Input == 8'h46)
            Output = 8'h5a;
        else if (Input == 8'h47)
            Output = 8'ha0;
        else if (Input == 8'h48)
            Output = 8'h52;
        else if (Input == 8'h49)
            Output = 8'h3b;
        else if (Input == 8'h4a)
            Output = 8'hd6;
        else if (Input == 8'h4b)
            Output = 8'hb3;
        else if (Input == 8'h4c)
            Output = 8'h29;
        else if (Input == 8'h4d)
            Output = 8'he3;
        else if (Input == 8'h4e)
            Output = 8'h2f;
        else if (Input == 8'h4f)
            Output = 8'h84;
        else if (Input == 8'h50)
            Output = 8'h53;
        else if (Input == 8'h51)
            Output = 8'hd1;
        else if (Input == 8'h52)
            Output = 8'h00;
        else if (Input == 8'h53)
            Output = 8'hed;
        else if (Input == 8'h54)
            Output = 8'h20;
        else if (Input == 8'h55)
            Output = 8'hfc;
        else if (Input == 8'h56)
            Output = 8'hb1;
        else if (Input == 8'h57)
            Output = 8'h5b;
        else if (Input == 8'h58)
            Output = 8'h6a;
        else if (Input == 8'h59)
            Output = 8'hcb;
        else if (Input == 8'h5a)
            Output = 8'hbe;
        else if (Input == 8'h5b)
            Output = 8'h39;
        else if (Input == 8'h5c)
            Output = 8'h4a;
        else if (Input == 8'h5d)
            Output = 8'h4c;
        else if (Input == 8'h5e)
            Output = 8'h58;
        else if (Input == 8'h5f)
            Output = 8'hcf;
        else if (Input == 8'h60)
            Output = 8'hd0;
        else if (Input == 8'h61)
            Output = 8'hef;
        else if (Input == 8'h62)
            Output = 8'haa;
        else if (Input == 8'h63)
            Output = 8'hfb;
        else if (Input == 8'h64)
            Output = 8'h43;
        else if (Input == 8'h65)
            Output = 8'h4d;
        else if (Input == 8'h66)
            Output = 8'h33;
        else if (Input == 8'h67)
            Output = 8'h85;
        else if (Input == 8'h68)
            Output = 8'h45;
        else if (Input == 8'h69)
            Output = 8'hf9;
        else if (Input == 8'h6a)
            Output = 8'h02;
        else if (Input == 8'h6b)
            Output = 8'h7f;
        else if (Input == 8'h6c)
            Output = 8'h50;
        else if (Input == 8'h6d)
            Output = 8'h3c;
        else if (Input == 8'h6e)
            Output = 8'h9f;
        else if (Input == 8'h6f)
            Output = 8'ha8;
        else if (Input == 8'h70)
            Output = 8'h51;
        else if (Input == 8'h71)
            Output = 8'ha3;
        else if (Input == 8'h72)
            Output = 8'h40;
        else if (Input == 8'h73)
            Output = 8'h8f;
        else if (Input == 8'h74)
            Output = 8'h92;
        else if (Input == 8'h75)
            Output = 8'h9d;
        else if (Input == 8'h76)
            Output = 8'h38;
        else if (Input == 8'h77)
            Output = 8'hf5;
        else if (Input == 8'h78)
            Output = 8'hbc;
        else if (Input == 8'h79)
            Output = 8'hb6;
        else if (Input == 8'h7a)
            Output = 8'hda;
        else if (Input == 8'h7b)
            Output = 8'h21;
        else if (Input == 8'h7c)
            Output = 8'h10;
        else if (Input == 8'h7d)
            Output = 8'hff;
        else if (Input == 8'h7e)
            Output = 8'hf3;
        else if (Input == 8'h7f)
            Output = 8'hd2;
        else if (Input == 8'h80)
            Output = 8'hcd;
        else if (Input == 8'h81)
            Output = 8'h0c;
        else if (Input == 8'h82)
            Output = 8'h13;
        else if (Input == 8'h83)
            Output = 8'hec;
        else if (Input == 8'h84)
            Output = 8'h5f;
        else if (Input == 8'h85)
            Output = 8'h97;
        else if (Input == 8'h86)
            Output = 8'h44;
        else if (Input == 8'h87)
            Output = 8'h17;
        else if (Input == 8'h88)
            Output = 8'hc4;
        else if (Input == 8'h89)
            Output = 8'ha7;
        else if (Input == 8'h8a)
            Output = 8'h7e;
        else if (Input == 8'h8b)
            Output = 8'h3d;
        else if (Input == 8'h8c)
            Output = 8'h64;
        else if (Input == 8'h8d)
            Output = 8'h5d;
        else if (Input == 8'h8e)
            Output = 8'h19;
        else if (Input == 8'h8f)
            Output = 8'h73;
        else if (Input == 8'h90)
            Output = 8'h60;
        else if (Input == 8'h91)
            Output = 8'h81;
        else if (Input == 8'h92)
            Output = 8'h4f;
        else if (Input == 8'h93)
            Output = 8'hdc;
        else if (Input == 8'h94)
            Output = 8'h22;
        else if (Input == 8'h95)
            Output = 8'h2a;
        else if (Input == 8'h96)
            Output = 8'h90;
        else if (Input == 8'h97)
            Output = 8'h88;
        else if (Input == 8'h98)
            Output = 8'h46;
        else if (Input == 8'h99)
            Output = 8'hee;
        else if (Input == 8'h9a)
            Output = 8'hb8;
        else if (Input == 8'h9b)
            Output = 8'h14;
        else if (Input == 8'h9c)
            Output = 8'hde;
        else if (Input == 8'h9d)
            Output = 8'h5e;
        else if (Input == 8'h9e)
            Output = 8'h0b;
        else if (Input == 8'h9f)
            Output = 8'hdb;
        else if (Input == 8'ha0)
            Output = 8'he0;
        else if (Input == 8'ha1)
            Output = 8'h32;
        else if (Input == 8'ha2)
            Output = 8'h3a;
        else if (Input == 8'ha3)
            Output = 8'h0a;
        else if (Input == 8'ha4)
            Output = 8'h49;
        else if (Input == 8'ha5)
            Output = 8'h06;
        else if (Input == 8'ha6)
            Output = 8'h24;
        else if (Input == 8'ha7)
            Output = 8'h5c;
        else if (Input == 8'ha8)
            Output = 8'hc2;
        else if (Input == 8'ha9)
            Output = 8'hd3;
        else if (Input == 8'haa)
            Output = 8'hac;
        else if (Input == 8'hab)
            Output = 8'h62;
        else if (Input == 8'hac)
            Output = 8'h91;
        else if (Input == 8'had)
            Output = 8'h95;
        else if (Input == 8'hae)
            Output = 8'he4;
        else if (Input == 8'haf)
            Output = 8'h79;
        else if (Input == 8'hb0)
            Output = 8'he7;
        else if (Input == 8'hb1)
            Output = 8'hc8;
        else if (Input == 8'hb2)
            Output = 8'h37;
        else if (Input == 8'hb3)
            Output = 8'h6d;
        else if (Input == 8'hb4)
            Output = 8'h8d;
        else if (Input == 8'hb5)
            Output = 8'hd5;
        else if (Input == 8'hb6)
            Output = 8'h4e;
        else if (Input == 8'hb7)
            Output = 8'ha9;
        else if (Input == 8'hb8)
            Output = 8'h6c;
        else if (Input == 8'hb9)
            Output = 8'h56;
        else if (Input == 8'hba)
            Output = 8'hf4;
        else if (Input == 8'hbb)
            Output = 8'hea;
        else if (Input == 8'hbc)
            Output = 8'h65;
        else if (Input == 8'hbd)
            Output = 8'h7a;
        else if (Input == 8'hbe)
            Output = 8'hae;
        else if (Input == 8'hbf)
            Output = 8'h08;
        else if (Input == 8'hc0)
            Output = 8'hba;
        else if (Input == 8'hc1)
            Output = 8'h78;
        else if (Input == 8'hc2)
            Output = 8'h25;
        else if (Input == 8'hc3)
            Output = 8'h2e;
        else if (Input == 8'hc4)
            Output = 8'h1c;
        else if (Input == 8'hc5)
            Output = 8'ha6;
        else if (Input == 8'hc6)
            Output = 8'hb4;
        else if (Input == 8'hc7)
            Output = 8'hc6;
        else if (Input == 8'hc8)
            Output = 8'he8;
        else if (Input == 8'hc9)
            Output = 8'hdd;
        else if (Input == 8'hca)
            Output = 8'h74;
        else if (Input == 8'hcb)
            Output = 8'h1f;
        else if (Input == 8'hcc)
            Output = 8'h4b;
        else if (Input == 8'hcd)
            Output = 8'hbd;
        else if (Input == 8'hce)
            Output = 8'h8b;
        else if (Input == 8'hcf)
            Output = 8'h8a;
        else if (Input == 8'hd0)
            Output = 8'h70;
        else if (Input == 8'hd1)
            Output = 8'h3e;
        else if (Input == 8'hd2)
            Output = 8'hb5;
        else if (Input == 8'hd3)
            Output = 8'h66;
        else if (Input == 8'hd4)
            Output = 8'h48;
        else if (Input == 8'hd5)
            Output = 8'h03;
        else if (Input == 8'hd6)
            Output = 8'hf6;
        else if (Input == 8'hd7)
            Output = 8'h0e;
        else if (Input == 8'hd8)
            Output = 8'h61;
        else if (Input == 8'hd9)
            Output = 8'h35;
        else if (Input == 8'hda)
            Output = 8'h57;
        else if (Input == 8'hdb)
            Output = 8'hb9;
        else if (Input == 8'hdc)
            Output = 8'h86;
        else if (Input == 8'hdd)
            Output = 8'hc1;
        else if (Input == 8'hde)
            Output = 8'h1d;
        else if (Input == 8'hdf)
            Output = 8'h9e;
        else if (Input == 8'he0)
            Output = 8'he1;
        else if (Input == 8'he1)
            Output = 8'hf8;
        else if (Input == 8'he2)
            Output = 8'h98;
        else if (Input == 8'he3)
            Output = 8'h11;
        else if (Input == 8'he4)
            Output = 8'h69;
        else if (Input == 8'he5)
            Output = 8'hd9;
        else if (Input == 8'he6)
            Output = 8'h8e;
        else if (Input == 8'he7)
            Output = 8'h94;
        else if (Input == 8'he8)
            Output = 8'h9b;
        else if (Input == 8'he9)
            Output = 8'h1e;
        else if (Input == 8'hea)
            Output = 8'h87;
        else if (Input == 8'heb)
            Output = 8'he9;
        else if (Input == 8'hec)
            Output = 8'hce;
        else if (Input == 8'hed)
            Output = 8'h55;
        else if (Input == 8'hee)
            Output = 8'h28;
        else if (Input == 8'hef)
            Output = 8'hdf;
        else if (Input == 8'hf0)
            Output = 8'h8c;
        else if (Input == 8'hf1)
            Output = 8'ha1;
        else if (Input == 8'hf2)
            Output = 8'h89;
        else if (Input == 8'hf3)
            Output = 8'h0d;
        else if (Input == 8'hf4)
            Output = 8'hbf;
        else if (Input == 8'hf5)
            Output = 8'he6;
        else if (Input == 8'hf6)
            Output = 8'h42;
        else if (Input == 8'hf7)
            Output = 8'h68;
        else if (Input == 8'hf8)
            Output = 8'h41;
        else if (Input == 8'hf9)
            Output = 8'h99;
        else if (Input == 8'hfa)
            Output = 8'h2d;
        else if (Input == 8'hfb)
            Output = 8'h0f;
        else if (Input == 8'hfc)
            Output = 8'hb0;
        else if (Input == 8'hfd)
            Output = 8'h54;
        else if (Input == 8'hfe)
            Output = 8'hbb;
        else
            Output = 8'h16;

endmodule