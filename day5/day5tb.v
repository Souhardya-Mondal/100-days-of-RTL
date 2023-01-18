

module tb;
  reg clk,reset;
  wire [7:0] cnt_o;

  counter cnt(clk,reset,cnt_o);
  
  
	initial
	clk=0;
	
	always@(clk)
	#10 clk<=~clk;
	


  initial
    begin
        $dumpfile("1.vcd");
        $dumpvars(0,tb);
      $monitor("Count=%b",cnt_o);
	  
      repeat(10) begin
        #60 reset=$random;end
	 	#100 $finish;
      
    end
endmodule

  
  
