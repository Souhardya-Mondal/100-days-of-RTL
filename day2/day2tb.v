// Day 2
//testbench of Design and verify various flavours of a D flip-flop

module tb;
 various_d_ff f1( clk,reset,d_i,q_norst_o,q_asyncrst_o,q_syncrst_o);
  reg clk,reset,d_i;
  wire q_asyncrst_o,q_norst_o,q_syncrst_o;
  
	initial
	clk=0;
	
	always@(clk)
	#10 clk<=~clk;
	


  initial
    begin
        $dumpfile("1.vcd");
        $dumpvars(1,tb);

      $monitor("Non resettable=%b , Synchronous Reset=%b, Non synchronous Reset=%b",q_norst_o,q_syncrst_o,q_asyncrst_o);
	  
      #10 reset=0;d_i=1;
	  #10 reset=1;d_i=1;
	  #10 reset=0;d_i=0;
	  #10 reset=1;d_i=1;
	  #10 reset=0;d_i=0;
	  #10 reset=0;d_i=0;
	  #10 reset=1;d_i=1;
	  #10 reset=0;d_i=1;
	  #10 reset=0;d_i=1;
	  #10 reset=1;d_i=0;
	  #10 reset=0;d_i=1;
	  #10 reset=1;d_i=1;
	  #10 reset=1;d_i=0;
	  #10 reset=0;d_i=1;
     
      #100 $finish;
      
    end
endmodule

  
  
