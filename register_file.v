`timescale 1ns / 1ps
//GroupID-14 (15116073_15116037)-Vipul Gupta & Nitin Sethi
//Date:29th October 2016
//register file
module register_file(input [7:0]inreg1,
input [7:0]inreg2,
input [1:0]opcode,
output [7:0]store_word,
output [7:0]store_inp1,
output carry_output,
output overflow_output
    );
//input lines for integers
wire [7:0]inreg1;
wire [7:0]inreg2;
wire [1:0]opcode;
//input lines for results using ALU
wire [15:0]product;
wire [7:0]result;
wire carry_output;
wire overflow_output;
//output lines for register to memory
//wire [7:0]outmemory;
//four register in register_file(main register file)
reg [7:0]store_word;
reg [7:0]store_inp1;
reg [7:0]store_inp2;
reg [1:0]store_opcode;
//this contains the code using register file and ALU, rathering than creating a different module implemented in the same module
reg clk = 0;

always begin
#5 clk = 0;
#5 clk = 1;
end

always @(posedge clk)
begin
  store_inp1 = inreg1;
  store_inp2 = inreg2;
  store_opcode =  opcode[1:0];
end
//assigning wires the values of input value stored in the register file in first clock cycle

ALU return_reg(store_inp1, store_inp2, store_opcode[1:0], overflow_output, carry_output, result, product);
always @(posedge clk)
#1
begin
if(store_opcode == 3)
begin
//stores the result when multiplication is done, use store_inp1 and store_word to see teh output in product case
store_inp1 = product[15:8];
store_word = product[7:0];
end
else
begin
// stores the final result see this variable for getting the final result
store_word = result;
end
end
endmodule
