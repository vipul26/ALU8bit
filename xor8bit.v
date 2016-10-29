`timescale 1ns / 1ps
//GroupID-14 (15116073_15116037)-Vipul Gupta & Nitin Sethi
//Date:28th October 2016
//xor 8bit
module xor8bit(in_a,
    in_b,
	 out
    );
input wire [7:0] in_a;
//wire [7:0] in_a;
input wire [7:0] in_b;
//wire [7:0] in_b;
output wire [7:0] out;

  assign out[0] = in_a[0]^in_b[0];
  assign out[1] = in_a[1]^in_b[1];
  assign out[2] = in_a[2]^in_b[2];
  assign out[3] = in_a[3]^in_b[3];
  assign out[4] = in_a[4]^in_b[4];
  assign out[5] = in_a[5]^in_b[5];
  assign out[6] = in_a[6]^in_b[6];
  assign out[7] = in_a[7]^in_b[7]; 

endmodule
