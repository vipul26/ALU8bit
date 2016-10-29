`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:49:09 10/29/2016
// Design Name:   register_file
// Module Name:   C:/Users/Vipul/ALUproject/ALUtest.v
// Project Name:  ALUproject
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: register_file
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALUtest;

	// Inputs
	reg [7:0] inreg1;
	reg [7:0] inreg2;
	reg [1:0] opcode;

	// Instantiate the Unit Under Test (UUT)
	register_file uut (
		.inreg1(inreg1), 
		.inreg2(inreg2), 
		.opcode(opcode)
	);
 reg [1:0]a;
	initial begin
		// Initialize Inputs
		inreg1 = 0;
		inreg2 = 0;
		opcode = 0;
      a =0 ;
		// Wait 100 ns for global reset to finish
		
		#100;
		while(a<3)
		begin
		#23
      inreg1 = 8;
		inreg2 = 5;
		while(opcode<3)
		begin
		#10
		opcode = opcode + 1;
		end
		end
		// Add stimulus here

	end
      
endmodule

