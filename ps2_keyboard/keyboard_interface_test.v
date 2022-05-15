
module keyboard_interface_test;
reg clk,reset,rd_kb_buffer,ps_c,ps_d;
wire [7:0] key_code;
wire kb_buffer_empty;


keyboard_interface u1(.clk(clk),.reset(reset),.rd_kb_buffer(rd_kb_buffer),.ps_c(ps_c),.ps_d(ps_d),
.kb_buffer_empty(kb_buffer_empty),.key_code(key_code));

initial 
begin
	clk=0; reset=1; 
	ps_c=0; ps_d=0;
	#20 begin reset=0; end
	#480 ps_d=0;
	#400 ps_d=0;
	#400 ps_d=0;
	#400 ps_d=0;
	#400 ps_d=0;	
	#400 ps_d=1;
	#400 ps_d=1;
	#400 ps_d=1;
	#400 ps_d=1;	
	#400 ps_d=0;
	#400 ps_d=0;
	#400 ps_d=1;
	#400 ps_d=1;
	#400 ps_d=0;
	#400 ps_d=0;
	#400 ps_d=0;	
	#400 ps_d=0;
	#400 ps_d=0;
	#400 ps_d=0;
	#400 ps_d=0;	
	#400 ps_d=0;
	#400 ps_d=0;
	#400 $finish;
	 
			
		
	 
			
		

end
always 
#10 clk=!clk;
always
#200 ps_c=!ps_c;

endmodule
