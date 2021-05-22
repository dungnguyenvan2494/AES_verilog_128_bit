`timescale 1ns/1ps

module AES_TB;
wire [127:0] data_out;


	AES_ROUND d1(.data_in(128'h6bc1bee22e409f96e93d7e117393172a),.key(128'h3ad77bb40d7a3660a89ecaf32466ef97),.data_out(data_out));

	//AES_ROUND d2(.data_in(128'hae2d8a571e03ac9c9eb76fac45af8e51),.key(128'hf5d3d58503b9699de785895a96fdbaaf),.data_out(data_out));

	//AES_ROUND d3(.data_in(128'h30c81c46a35ce411e5fbc1191a0a52ef),.key(128'hb6ed21b99ca6f4f9f153e7b1beafed1d),.data_out(data_out));

	//AES_ROUND d4(.data_in(128'hf69f2445df4f9b17ad2b417be66c3710),.key(128'h7b0c785e27e8ad3f8223207104725dd4),.data_out(data_out));

endmodule
