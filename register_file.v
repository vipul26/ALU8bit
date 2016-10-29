`timescale 1ns / 1ps
//GroupID-14 (15116073_15116037)-Vipul Gupta & Nitin Sethi
//Date:29th October 2016
//register file
module register_file(input [7:0]inreg1,
input [7:0]inreg2,
input [1:0]opcode,
output [7:0]store_word,
output [7:0]store_inp1,
output [7:0]store_inp2
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
//four register in register file
reg [7:0]store_word;
reg [7:0]store_inp1;
reg [7:0]store_inp2;
reg [7:0]store_opcode;
reg clk = 0;

always begin
#5 clk = 0;
#5 clk = 1;
end

always @(posedge clk)
begin
  #2
  store_inp1 = inreg1;
  store_inp2 = inreg2;
  store_opcode = {6'b0, opcode[1:0]};
end
//assigning wires the values of input value stored in the register file in first clock cycle

ALU return_reg(store_inp1, store_inp2, store_opcode[1:0], carry_output, overflow_output, result, product);
always @(negedge clk)
begin
if(store_opcode == 4)
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
