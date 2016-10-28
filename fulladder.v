`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:36:28 10/28/2016 
// Design Name: 
// Module Name:    fulladder 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module fulladder(
    input wire in_a,
    input wire in_b,
    output sum_out,
    output wire c_out,
    input wire in_c
    );

  assign sum_out = in_a^in_b^in_c;
  assign c_out = (in_a&in_b)|(in_a&in_c)|(in_b&in_c);

endmodule
