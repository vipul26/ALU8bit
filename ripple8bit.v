`timescale 1ns / 1ps
//GroupID-14 (15116073_15116037)-Vipul Gupta & Nitin Sethi
//Date:28th October 2016
//ripple carry adder 8bit
module ripple8bit(
    input [7:0]in_a,
    input [7:0]in_b,
    input in_c,
    output c_out,
    output [7:0]sum_out,
	 output overflow
		);
	wire [7:0]sum_out;
	wire c_out;
	wire [6:0]c_temp;
	wire overflow;
	wire [7:0]in_a;
	wire [7:0]in_b;
	wire in_c;
	
	fulladder f1(in_a[0],in_b[0],sum_out[0],c_temp[0],in_c);
	fulladder f2(in_a[1],in_b[1],sum_out[1],c_temp[1],c_temp[0]);								
   fulladder f3(in_a[2],in_b[2],sum_out[2],c_temp[2],c_temp[1]);
	fulladder f4(in_a[3],in_b[3],sum_out[3],c_temp[3],c_temp[2]);
	fulladder f5(in_a[4],in_b[4],sum_out[4],c_temp[4],c_temp[3]);
	fulladder f6(in_a[5],in_b[5],sum_out[5],c_temp[5],c_temp[4]);
	fulladder f7(in_a[6],in_b[6],sum_out[6],c_temp[6],c_temp[5]);
   fulladder f8(in_a[7],in_b[7],sum_out[7],c_out,c_temp[6]);
	
	assign overflow = c_out^c_temp[6];
	always @*
	 $display ("%b", c_out);
endmodule
