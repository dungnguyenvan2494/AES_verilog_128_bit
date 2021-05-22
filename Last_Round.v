`timescale 1ns/1ps

module last_round(
		input [3:0] index,
		input [127:0] data_in,
		input [127:0] key_last,
		input [127:0] data_last);

wire [127:0] sub_byte, shift_row, key;

Key_Generation(.index(index),.past_key(key_last),.create_key(key));
Sub_Bytes(.inp(data_in),.outp(sub_byte));
Shift_Rows(.sub_byte(sub_byte),.shift_row(shift_row));
assign data_last = key^shift_row;

endmodule	
			
		
