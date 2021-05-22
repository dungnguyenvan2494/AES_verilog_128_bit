module Round(
		input [3:0]index,
		input [127:0] data,
		input [127:0] past_key,
		output [127:0] create_key,
		output [127:0] data_out);
wire [127:0] sub_byte,shift_row,mix_column;

Key_Generation k(.index(index[3:0]),.past_key(past_key[127:0]),.create_ket(create_key[127:0]));
Sub_Bytes sb(.inp(data[127:0]),.outp(sub_byte[127:0]));
Shift_Rows sr(.inp(sub_byte[127:0]),.outp(shift_row[127:0]));
Mix_Columns mcl(.a(shift_row[127:0]),.mcl(mix_column[127:0]));
assign data_out = create_key^mix_column;

endmodule
