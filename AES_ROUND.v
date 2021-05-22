module AES_ROUND(
		input [127:0] data_in,
		input [127:0] key,
		output [127:0] data_out);

wire [127:0] data_out_round_0;
wire [127:0] data_out_round_1;
wire [127:0] data_out_round_2;
wire [127:0] data_out_round_3;
wire [127:0] data_out_round_4;
wire [127:0] data_out_round_5;
wire [127:0] data_out_round_6;
wire [127:0] data_out_round_7;
wire [127:0] data_out_round_8;
wire [127:0] data_out_round_9;
wire [127:0] data_out_round_10;


wire [127:0] key_1,key_2,key_3,key_4,key_5,key_6,key_7,key_8,key_9;

//round 0
assign data_out_round_0 = data_in^key;
//round 1
Round round_1(.index(4'b0000),.data(data_out_round_0),.past_key(key),.create_key(key_1),.data_out(data_out_round_1));
//round 2
Round round_2(.index(4'b0001),.data(data_out_round_1),.past_key(key_1),.create_key(key_2),.data_out(data_out_round_2));
// round 3
Round round_3(.index(4'b0010),.data(data_out_round_2),.past_key(key_2),.create_key(key_3),.data_out(data_out_round_3));
// round 4
Round round_4(.index(4'b0011),.data(data_out_round_3),.past_key(key_3),.create_key(key_4),.data_out(data_out_round_4));
// round 5
Round round_5(.index(4'b0100),.data(data_out_round_4),.past_key(key_4),.create_key(key_5),.data_out(data_out_round_5));
// round 6
Round round_6(.index(4'b0101),.data(data_out_round_5),.past_key(key_5),.create_key(key_6),.data_out(data_out_round_6));
// round 7
Round round_7(.index(4'b0110),.data(data_out_round_6),.past_key(key_6),.create_key(key_7),.data_out(data_out_round_7));
// round 8
Round round_8(.index(4'b0111),.data(data_out_round_7),.past_key(key_7),.create_key(key_8),.data_out(data_out_round_8));
// round 9
Round round_9(.index(4'b1000),.data(data_out_round_8),.past_key(key_8),.create_key(key_9),.data_out(data_out_round_9));
//round 10
last_round round_10(.index(4'b1001),.data_in(data_out_round_10),.key_last(key_9),.data_last(data_out));


endmodule
