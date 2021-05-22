`timescale 1ns/1ps 

module Sub_Bytes(
		input [127:0] inp,
		output [127:0] outp);

	outpox s0( inp[127:120],outp[127:120] );
     	outpox s1( inp[119:112],outp[119:112] );
     	outpox s2( inp[111:104],outp[111:104] );
     	outpox s3( inp[103:96],outp[103:96] );
     
     	outpox s4( inp[95:88],outp[95:88] );
     	outpox s5( inp[87:80],outp[87:80] );
     	outpox s6( inp[79:72],outp[79:72] );
     	outpox s7( inp[71:64],outp[71:64] );
     	
     	outpox s8( inp[63:56],outp[63:56] );
     	outpox s9( inp[55:48],outp[55:48] );
     	outpox s10(inp[47:40],outp[47:40] );
     	outpox s11(inp[39:32],outp[39:32] );
     	
     	outpox s12(inp[31:24],outp[31:24] );
     	outpox s13(inp[23:16],outp[23:16] );
     	outpox s14(inp[15:8],outp[15:8] );
     	outpox s15(inp[7:0],outp[7:0] );
endmodule