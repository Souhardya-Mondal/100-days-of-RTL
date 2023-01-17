// Day 2
//Design and verify various flavours of a D flip-flop



module various_d_ff(input clk,reset,d_i,
					output reg q_norst_o,q_asyncrst_o,
					q_syncrst_o);

	always @(posedge clk)
		begin
		q_norst_o<=d_i;
		end
	always @(posedge clk)
		begin
		if(reset)
		q_syncrst_o<=0;
		else
		q_syncrst_o<=d_i;
		end
	always @(posedge clk , posedge reset)
		begin
		if(reset)
		q_asyncrst_o<=0;
		else
		q_asyncrst_o<=d_i;
		end
endmodule
