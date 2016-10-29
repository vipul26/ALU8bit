`timescale 1ns / 1ps
//GroupID-14 (15116073_15116037)-Vipul Gupta & Nitin Sethi
//Date:28th October 2016
//Register file + ALU module calling
module final_test;

	// Inputs
	reg [7:0] inreg1;
	reg [7:0] inreg2;
	reg [1:0] opcode;

	// Outputs
	wire [7:0] store_word;
	wire [7:0] store_inp1;
	wire carry_output;
	wire overflow_output;
   reg clk=0;
	// Instantiate the Unit Under Test (UUT)
	register_file uut (
		.inreg1(inreg1), 
		.inreg2(inreg2), 
		.opcode(opcode), 
		.store_word(store_word), 
		.store_inp1(store_inp1), 
		.carry_output(carry_output), 
		.overflow_output(overflow_output)
	);
   always begin 
	#5 clk =0;
	#5 clk =1;
	end
	initial begin
		// Initialize Inputs
		inreg1 = 0;
		inreg2 = 0;
		opcode = 0;
      // changes only at positive edge of the clock
		//test bench created and tested
		// Wait 100 ns for global reset to finish
		#27;
		inreg1 = 1;
		inreg2 = 1;
      opcode = 0;
      #27 opcode = 1;
      #27 opcode = 2;
      #27 opcode = 3;
		
      #27
		inreg1 = 127;
		inreg2 = 10;
		opcode = 0;
      #27 opcode = 1;
      #27 opcode = 2;
      #27 opcode = 3;

		#27
		inreg1 = 12;
		inreg2 = -10;
		opcode = 0;
      #27 opcode = 1;
      #27 opcode = 2;
      #27 opcode = 3;
		
	
	end
      
endmodule

