module final_kb_system(clk,reset,ps_c,ps_d,tx);
input clk,reset,ps_c,ps_d;
output wire tx;
wire kb_not_empty;
wire [7:0] key_code,ascii_code;
wire kb_buffer_empty;

keyboard_interface u1(.clk(clk),.reset(reset),.rd_kb_buffer(kb_not_empty),.ps_c(ps_c),.ps_d(ps_d),.kb_buffer_empty(kb_buffer_empty)
,.key_code(key_code));

key2ascii u2(.scan_code(key_code),.ascii_code(ascii_code));

uart u3(.clk(clk),.reset(reset),.rd_uart(1'b0),.rx_empty(),.wr_uart(kb_not_empty),.tx_full(),.rd_data(),.wr_data(ascii_code),.tx(tx),.rx());

assign kb_not_empty=!kb_buffer_empty;
endmodule
