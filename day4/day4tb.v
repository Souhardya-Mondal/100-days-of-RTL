

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
	  
      #20 a=7;b=10;op=2;
	    #20 a=2;b=5;op=1;
      #20 a=7;b=1;op=0;
      #20 a=7;b=10;op=3;
      #20 a=20;b=11;op=4;
      #20 a=12;b=21;op=5;
      #20 a=62;b=41;op=6;
      #20 a=72;b=72;op=7;
      #100 $finish;
      end
endmodule

  
  
