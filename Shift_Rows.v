`timescale 1ns/1ps

module Shift_Rows(
		input [127:0] sub_byte,
		output [127:0] shift_row);
// Giu nguyen dong 1
assign shift_row[127:120] = sub_byte[127:120];
assign shift_row[95:88] = sub_byte[95:88];
assign shift_row[63:56] = sub_byte[63:56];
assign shift_row[31:24] = sub_byte[31:24];
// Dich trai 1 bit dong 2
assign shift_row[119:112] = sub_byte[87:80];
assign shift_row[87:80] = sub_byte[55:48];
assign shift_row[55:48] = sub_byte[23:16];
assign shift_row[23:16] = sub_byte[119:112];
// Dich trai 2 bit dong 3
assign shift_row[111:104] = sub_byte[47:40];
assign shift_row[79:72] = sub_byte[15:8];
assign shift_row[47:40] = sub_byte[111:104];
assign shift_row[15:8] = sub_byte[79:72];
// Dich trai 3 bit dong 4
assign shift_row[103:96] = sub_byte[7:0];
assign shift_row[71:64] = sub_byte[103:96];
assign shift_row[39:32] = sub_byte[71:64];
assign shift_row[7:0] = sub_byte[39:32];

endmodule
