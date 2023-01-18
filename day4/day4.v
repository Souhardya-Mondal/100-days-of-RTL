/* Design and verify a 8-bit ALU which supports the following encoded operations | Encoding | Operation | Comment |
|----------|-----------|---------|
|3'b000|ADD|-|
|3'b001|SUB|-|
|3'b010|SLL|Vector a should left shift using bits 2:0 of vector b|
|3'b011|LSR|Vector a should right shift using bits 2:0 of vector b|
|3'b100|AND|-|
|3'b101|OR |-|
|3'b110|XOR|-|
|3'b111|EQL|Output should be 1 when equal otherwise 0|*/

module ALU(input [7:0] a_i,b_i,output reg[7:0]alu_o,input [2:0] op_i);
	
	always @(*)
	case(op_i)
		3'b000: alu_o=a_i+b_i;
		3'b001: alu_o=a_i-b_i;
		3'b010: alu_o={a_i[5:0],2'b00};
		3'b011: alu_o={2'b00,a_i[7:2]};
		3'b100: alu_o=a_i & b_i;
		3'b101: alu_o=a_i | b_i;
		3'b110: alu_o=a_i ^ b_i;
		3'b111: alu_o=(a_i==b_i)?1:0;
	endcase
endmodule

		

