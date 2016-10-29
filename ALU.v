`timescale 1ns / 1ps
//GroupID-14 (15116073_15116037)-Vipul Gupta & Nitin Sethi
//Date:28th October 2016
//Main ALU part
module ALU(input [7:0]intop1,
input [7:0]intop2,
input [1:0]opcode,
output overflow,
output carry,
output [7:0]result,
output [15:0]product
    );
wire [1:0]opcode;
wire [7:0]intop1;
wire [7:0]intop2;
reg overflow;
reg carry;
reg [7:0]result;
reg [15:0]product;

wire carry_wire;
wire [7:0] result_wire1;
wire [7:0] result_wire2;
wire [7:0] result_wire3;
wire [15:0] result_wire4;
wire overflow_wire;

ripple8bit a3(intop1, intop2, 1'b0, carry_wire, result_wire1, overflow_wire);
and8bit a1(intop1, intop2, result_wire2);
xor8bit a2(intop1, intop2, result_wire3);
mult8bit a4(intop1, intop2, result_wire4);

always @*
begin
 case(opcode)
     2'b00:begin
	  result = result_wire1;
     carry = carry_wire;
	  overflow = overflow_wire;
	  if (overflow == 1'b1)
	  result = 0;
	  product = 0;
	  $display ("executing addition result = %b",result);
	  $display ("result= %d", result);
	  end
	  2'b01:begin
	  result = result_wire2;
	  carry = 1'b0;
	  overflow = 1'b0;
	  product = 0;
	  $display ("executing and result = %b",result);
	  $display ("result= %d", result);
	  end
	  2'b10:begin
	  result = result_wire3;
	  carry = 1'b0;
	  overflow = 1'b0;
	  product = 0;
	  $display ("executing xor result = %b",result);
	  $display ("result= %d", result);
	  end
	  2'b11:begin
	  result = 0;
	  product = result_wire4;
	  carry = 1'b0;
	  overflow = 1'b0;
	  $display ("executing multiplication result = %b",product);
	  $display ("result= %d", product);
	  end
endcase
end
endmodule
