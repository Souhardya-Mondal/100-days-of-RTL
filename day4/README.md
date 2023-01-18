Design and verify a 8-bit ALU which supports the following encoded operations:
| Encoding | Operation | Comment |
|----------|-----------|---------|
|3'b000|ADD|Add a with b
|3'b001|SUB|Subtract b from a
|3'b010|SLL|Vector a should left shift using bits 2:0 of vector b|
|3'b011|LSR|Vector a should right shift using bits 2:0 of vector b|
|3'b100|AND|a & b
|3'b101|OR |a | b
|3'b110|XOR|a ^ b
|3'b111|EQL|Output should be 1 when equal otherwise 0|
