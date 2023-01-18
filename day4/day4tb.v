

module tb;
  reg [7:0] a,b; reg[2:0] op;
  wire [7:0] out;

  ALU e1(a,b,out,op);
  
	/*initial
	clk=0;
	
	always@(clk)
	#10 clk<=~clk;*/
	


  initial
    begin
        $dumpfile("1.vcd");
      $dumpvars(0,tb);

      $monitor("1st input=%b ,2nd input=%b , operation=%b. Result=%b",a,b,op,out);
	  
      repeat(100) begin
        #20 a=$random;b=$random;op=$random ;end
	 


      
      
	
     
      #100 $finish;
      
    end
endmodule

  
  
