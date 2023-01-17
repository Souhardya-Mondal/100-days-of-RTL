// Day 3
//Design and verify a rising and falling edge detector




module edge_detector(input clk,
					reset,
					a_i,            // Serial input to the module
				    output   rising_edge_o,  // Rising edge output
					output   falling_edge_o,a_delayed);  // Falling edge output
					
reg a_delayed1;

always @(posedge clk)
a_delayed1<=a_i;

assign rising_edge_o=reset?0:a_i & (~a_delayed);
assign falling_edge_o=reset?0:a_delayed & ~(a_i);
assign a_delayed=a_delayed1;
endmodule

