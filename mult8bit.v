`timescale 1ns / 1ps
//GroupID-14 (15116073_15116037)-Vipul Gupta & Nitin Sethi
//Date:28th October 2016
//Main Booth's algorithm multiplication
module mult8bit(input [7:0]in_a,
		input [7:0]in_b,
		output [15:0]out_c
		);
reg [15:0]out_c;
wire [7:0]in_a;
wire [7:0]in_b;

wire [7:0]temp_A1;
wire [7:0]temp_A2;
wire [7:0]temp_A3;
wire [7:0]temp_A4;
wire [7:0]temp_A5;
wire [7:0]temp_A6;
wire [7:0]temp_A7;
wire [7:0]temp_A8;
wire [7:0]temp_A9;

assign temp_A1 = 8'b00000000;

wire [8:0]temp_Q1= {in_a[7:0],1'b0};
wire [8:0]temp_Q2;
wire [8:0]temp_Q3;
wire [8:0]temp_Q4;
wire [8:0]temp_Q5;
wire [8:0]temp_Q6;
wire [8:0]temp_Q7;
wire [8:0]temp_Q8;
wire [8:0]temp_Q9;

booth_step_mult b1(temp_A1, in_b, temp_Q1, temp_A2, temp_Q2);
booth_step_mult b2(temp_A2, in_b, temp_Q2, temp_A3, temp_Q3);
booth_step_mult b3(temp_A3, in_b, temp_Q3, temp_A4, temp_Q4);
booth_step_mult b4(temp_A4, in_b, temp_Q4, temp_A5, temp_Q5);
booth_step_mult b5(temp_A5, in_b, temp_Q5, temp_A6, temp_Q6);
booth_step_mult b6(temp_A6, in_b, temp_Q6, temp_A7, temp_Q7);
booth_step_mult b7(temp_A7, in_b, temp_Q7, temp_A8, temp_Q8);
booth_step_mult b8(temp_A8, in_b, temp_Q8, temp_A9, temp_Q9);

always@(temp_A9, temp_Q9)begin
out_c = {temp_A9,temp_Q9[8:1]};
$display ("value1 of out_c is:%d", out_c[15:0]);
$display ("out_c = %b", out_c[15:0]);
end

endmodule
