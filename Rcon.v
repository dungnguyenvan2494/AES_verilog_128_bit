module tran_1(
		input [31:0] inp,
		input [3:0] index,
		output [31:0] outp);

wire [31:0] shift_b1;
wire [31:0] sub_b2;

Shift_Left_1_Byte b1(.inp(inp[31:0]),.outp(shift_b1[31:0]));
Sub_Word b2(.inp(shift_b1[31:0]),.outp(sub_b2[31:0]));
Add_Rcon b3(.inp(sub_b2[31:0]),.index(index[3:0]),.outp(outp[31:0]));


endmodule


module Shift_Left_1_Byte(
			input [31:0] inp,
			output [31:0] outp);

assign outp[31:24] = inp[23:16];
assign outp[23:16] = inp[15:8];
assign outp[15:8] = inp[7:0];
assign outp[7:0] = inp[23:16];

endmodule 

module Sub_Word(
		input [31:0]  inp,
		output [31:0] outp);
sbox t1(.a(inp[31:24]),.b(outp[31:24]));
sbox t2(.a(inp[23:16]),.b(outp[23:16]));
sbox t3(.a(inp[15:8]),.b(outp[15:8]));
sbox t4(.a(inp[7:0]),.b(outp[7:0]));

endmodule 

module Add_Rcon(
		input [31:0] inp, 
		input [3:0] index,// so thu tu khoa 
		output [31:0] outp);
assign outp =   (index == 4'b0000)?(inp^32'h01_00_00_00):
	        (index == 4'b0001)?(inp^32'h02_00_00_00):
		(index == 4'b0010)?(inp^32'h04_00_00_00):
		(index == 4'b0011)?(inp^32'h08_00_00_00):
		(index == 4'b0100)?(inp^32'h10_00_00_00):
		(index == 4'b0101)?(inp^32'h20_00_00_00):
		(index == 4'b0110)?(inp^32'h40_00_00_00):
		(index == 4'b0111)?(inp^32'h80_00_00_00):
		(index == 4'b1000)?(inp^32'h1b_00_00_00):
		(index == 4'b1001)?(inp^32'h36_00_00_00):0;
		
endmodule
