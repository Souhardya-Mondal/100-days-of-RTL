/*# Day 5
Design and verify an 8-bit odd counter

## Interface Definition
- Counter should reset to a value of 8'h1
- Counter should increment by 2 on every cycle
- The module should have the following interface:

```verilog
input     wire        clk,
input     wire        reset,
output    logic[7:0]  cnt_o */


module counter(input clk,reset,output reg [7:0] cnt_o);
  always@(posedge clk)
    begin
      if(reset)
        cnt_o=1;
      else
        cnt_o=cnt_o+2;
    end
endmodule
