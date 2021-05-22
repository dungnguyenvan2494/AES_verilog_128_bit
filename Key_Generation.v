`timescale 1ns/1ps

module Key_Generation(
			input [3:0] index,
			input [127:0] past_key,
			output [127:0] create_key);

wire [31:0] w0,w1,w2,w3,r_con;


assign w0 = past_key[127:96];
assign w1 = past_key[95:64];
assign w2 = past_key[63:32];
assign w3 = past_key[31:0];

Rcon rcon(.inp(w3[31:0]),.index(index[3:0]),.outp(r_con[31:0]));

// create_key[127:96] chia het cho 4 => create_key[127:96] = r_con(w[4-1])^w[4-4]=r_con(w[3])^w[0];
assign create_key[127:96] = r_con^w0;
// create_key[95:64] khong chia het cho 4 => create_key[95:64] = w[5-1]^w[5-4]=w[4]^w[1];
assign create_key[95:64] = r_con^w0^w1;
// create_key[63:32] khong chia het cho 4 => create_key[63:32] = w[6-1]^w[6-4]=w[5]^w[2];
assign create_key[63:32] = r_con^w0^w1^w2;
// create_key[31:0] khong chia het cho 4 => create_key[31:0] = w[7-1]^w[7-4]=w[6]^w[3];
assign create_key[31:0] = r_con^w0^w1^w3;

endmodule 
