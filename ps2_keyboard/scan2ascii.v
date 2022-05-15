module  key2ascii 
( input [7:0] scan_code,output reg [7:0] ascii_code);
always @*
	case(scan_code)
		8'h45: ascii_code  = 8'h30; 
		8'h16: ascii_code  = 8'h31; 
		8'h1e : ascii_code  = 8'h32; 
		8'h26: ascii_code  = 8'h33; 
		8'h25: ascii_code  = 8'h34;
		default: ascii_code=8'h2a;
	endcase
endmodule  