
module tb;
  reg [7:0]    a_i,b_i;
  reg sel_i;
  wire [7:0] y_o;
  two2one a1(a_i,b_i,sel_i,y_o);
  
  initial begin
    a_i=0;b_i=0;sel_i=0; end
  initial
    begin
        $dumpfile("1.vcd");
      $dumpvars(1,tb);

      $monitor("output is %b " , y_o);
      #10 a_i=0;b_i=1;sel_i=0;
      #20 a_i=0;b_i=1;sel_i=1;
      #100 $finish;
      
    end
endmodule

  
  