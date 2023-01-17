module tb;
reg clk, reset, a_i;
wire rising_edge_o, falling_edge_o;

edge_detector e1(clk,
    reset,
    a_i, // Serial input to the module
    rising_edge_o, // Rising edge output
    falling_edge_o); // Falling edge output

initial
clk = 0;

always @(clk)
#10 clk<=~clk;

initial
begin
$dumpfile("1.vcd");
$dumpvars(0, tb);

$monitor("Rising Edge detector=%b , Falling edge detector=%b", rising_edge_o, falling_edge_o);

#40 reset= 0;
a_i = 1;
#40 reset= 1;
a_i = 1;
#40 reset= 0;
a_i = 0;
#40 reset= 1;
a_i = 1;
#40 reset= 0;
a_i = 0;
#40 reset= 0;
a_i = 0;
#40 reset= 1;
a_i = 1;
#40 reset= 0;
a_i = 1;
#40 reset= 0;
a_i = 1;
#40 reset= 1;
a_i = 0;
#40 reset= 0;
a_i = 1;
#40 reset= 1;
a_i = 1;
#40 reset= 1;
a_i = 0;
#40 reset= 0;
a_i = 1;

#100 $finish;

      

    end

endmodule



  

  
