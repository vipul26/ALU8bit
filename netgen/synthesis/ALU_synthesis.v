////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: ALU_synthesis.v
// /___/   /\     Timestamp: Sat Oct 29 12:18:08 2016
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim ALU.ngc ALU_synthesis.v 
// Device	: xc7a100t-3-csg324
// Input file	: ALU.ngc
// Output file	: C:\Users\Vipul\ALUproject\netgen\synthesis\ALU_synthesis.v
// # of Modules	: 1
// Design Name	: ALU
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module ALU (
  overflow, carry, intop1, intop2, opcode, result, product
);
  output overflow;
  output carry;
  input [7 : 0] intop1;
  input [7 : 0] intop2;
  input [1 : 0] opcode;
  output [7 : 0] result;
  output [15 : 0] product;
  wire intop2_7_IBUF_0;
  wire intop2_6_IBUF_1;
  wire intop2_5_IBUF_2;
  wire intop2_4_IBUF_3;
  wire intop2_3_IBUF_4;
  wire intop2_2_IBUF_5;
  wire intop2_1_IBUF_6;
  wire intop2_0_IBUF_7;
  wire opcode_1_IBUF_8;
  wire opcode_0_IBUF_9;
  wire carry_OBUF_11;
  wire overflow_OBUF_12;
  wire result_7_OBUF_13;
  wire result_6_OBUF_14;
  wire result_5_OBUF_15;
  wire result_4_OBUF_16;
  wire result_3_OBUF_17;
  wire result_2_OBUF_18;
  wire result_1_OBUF_19;
  wire result_0_OBUF_20;
  wire product_14_OBUF_21;
  wire product_13_OBUF_22;
  wire product_12_OBUF_23;
  wire product_11_OBUF_24;
  wire product_10_OBUF_25;
  wire product_9_OBUF_26;
  wire product_8_OBUF_27;
  wire product_7_OBUF_28;
  wire product_6_OBUF_29;
  wire product_5_OBUF_30;
  wire product_4_OBUF_31;
  wire product_3_OBUF_32;
  wire product_2_OBUF_33;
  wire product_1_OBUF_34;
  wire product_0_OBUF_35;
  wire N0;
  wire \a3/c_temp[6] ;
  wire \a3/c_temp[4] ;
  wire \a3/c_temp[2] ;
  wire intop1_6_IBUF_40;
  wire intop1_7_IBUF_41;
  wire intop1_5_IBUF_49;
  wire intop1_4_IBUF_57;
  wire intop1_3_IBUF_65;
  wire intop1_2_IBUF_73;
  wire intop1_1_IBUF_81;
  wire intop1_0_IBUF_89;
  wire Mmux_result22;
  wire N01;
  wire N26;
  wire Mmux_result1;
  wire N28;
  wire N30;
  wire N32;
  wire \a4/b1/n0037<6>1 ;
  wire \a4/b1/n0037<5>1 ;
  wire \a4/b1/n0037<4>1 ;
  wire \a4/b1/n0037<3>1 ;
  wire \a4/b1/n0037<2>1 ;
  wire \a4/b1/n0037<1>1 ;
  wire \a4/b1/n0037<0>1 ;
  wire \a4/b1/n0037<7>1 ;
  wire [14 : 14] result_wire4;
  wire [6 : 0] \a4/temp_A8 ;
  wire [6 : 0] \a4/temp_A7 ;
  wire [6 : 0] \a4/temp_A6 ;
  wire [6 : 0] \a4/temp_A5 ;
  wire [6 : 0] \a4/temp_A4 ;
  wire [6 : 0] \a4/temp_A3 ;
  wire [6 : 0] \a4/temp_A2 ;
  wire [6 : 0] \a4/b1/Madd_n0023_Madd_Madd_cy ;
  wire [0 : 0] \a4/b1/Madd_A_sum_cy ;
  wire [7 : 0] \a4/b1/n0023 ;
  wire [7 : 0] \a4/b2/Madd_n0023_Madd_Madd_lut ;
  wire [6 : 0] \a4/b2/Madd_n0023_Madd_Madd_cy ;
  wire [7 : 0] \a4/b2/Madd_A_sum_lut ;
  wire [6 : 0] \a4/b2/Madd_A_sum_cy ;
  wire [7 : 0] \a4/b2/n0023 ;
  wire [7 : 0] \a4/b2/A_sum ;
  wire [7 : 0] \a4/b3/Madd_n0023_Madd_Madd_lut ;
  wire [6 : 0] \a4/b3/Madd_n0023_Madd_Madd_cy ;
  wire [7 : 0] \a4/b3/Madd_A_sum_lut ;
  wire [6 : 0] \a4/b3/Madd_A_sum_cy ;
  wire [7 : 0] \a4/b3/n0023 ;
  wire [7 : 0] \a4/b3/A_sum ;
  wire [7 : 0] \a4/b4/Madd_n0023_Madd_Madd_lut ;
  wire [6 : 0] \a4/b4/Madd_n0023_Madd_Madd_cy ;
  wire [7 : 0] \a4/b4/Madd_A_sum_lut ;
  wire [6 : 0] \a4/b4/Madd_A_sum_cy ;
  wire [7 : 0] \a4/b4/n0023 ;
  wire [7 : 0] \a4/b4/A_sum ;
  wire [7 : 0] \a4/b5/Madd_n0023_Madd_Madd_lut ;
  wire [6 : 0] \a4/b5/Madd_n0023_Madd_Madd_cy ;
  wire [7 : 0] \a4/b5/Madd_A_sum_lut ;
  wire [6 : 0] \a4/b5/Madd_A_sum_cy ;
  wire [7 : 0] \a4/b5/n0023 ;
  wire [7 : 0] \a4/b5/A_sum ;
  wire [7 : 0] \a4/b6/Madd_n0023_Madd_Madd_lut ;
  wire [6 : 0] \a4/b6/Madd_n0023_Madd_Madd_cy ;
  wire [7 : 0] \a4/b6/Madd_A_sum_lut ;
  wire [6 : 0] \a4/b6/Madd_A_sum_cy ;
  wire [7 : 0] \a4/b6/n0023 ;
  wire [7 : 0] \a4/b6/A_sum ;
  wire [7 : 0] \a4/b7/Madd_n0023_Madd_Madd_lut ;
  wire [6 : 0] \a4/b7/Madd_n0023_Madd_Madd_cy ;
  wire [7 : 0] \a4/b7/Madd_A_sum_lut ;
  wire [6 : 0] \a4/b7/Madd_A_sum_cy ;
  wire [7 : 0] \a4/b7/n0023 ;
  wire [7 : 0] \a4/b7/A_sum ;
  wire [7 : 0] \a4/b8/Madd_n0023_Madd_Madd_lut ;
  wire [6 : 0] \a4/b8/Madd_n0023_Madd_Madd_cy ;
  wire [7 : 0] \a4/b8/Madd_A_sum_lut ;
  wire [6 : 0] \a4/b8/Madd_A_sum_cy ;
  wire [7 : 0] \a4/b8/n0023 ;
  wire [7 : 0] \a4/b8/A_sum ;
  VCC   XST_VCC (
    .P(N0)
  );
  GND   XST_GND (
    .G(\a4/b1/Madd_A_sum_cy [0])
  );
  XORCY   \a4/b1/Madd_n0023_Madd_Madd_xor<7>  (
    .CI(\a4/b1/Madd_n0023_Madd_Madd_cy [6]),
    .LI(\a4/b1/n0037<7>1 ),
    .O(\a4/b1/n0023 [7])
  );
  XORCY   \a4/b1/Madd_n0023_Madd_Madd_xor<6>  (
    .CI(\a4/b1/Madd_n0023_Madd_Madd_cy [5]),
    .LI(\a4/b1/n0037<6>1 ),
    .O(\a4/b1/n0023 [6])
  );
  MUXCY   \a4/b1/Madd_n0023_Madd_Madd_cy<6>  (
    .CI(\a4/b1/Madd_n0023_Madd_Madd_cy [5]),
    .DI(\a4/b1/Madd_A_sum_cy [0]),
    .S(\a4/b1/n0037<6>1 ),
    .O(\a4/b1/Madd_n0023_Madd_Madd_cy [6])
  );
  XORCY   \a4/b1/Madd_n0023_Madd_Madd_xor<5>  (
    .CI(\a4/b1/Madd_n0023_Madd_Madd_cy [4]),
    .LI(\a4/b1/n0037<5>1 ),
    .O(\a4/b1/n0023 [5])
  );
  MUXCY   \a4/b1/Madd_n0023_Madd_Madd_cy<5>  (
    .CI(\a4/b1/Madd_n0023_Madd_Madd_cy [4]),
    .DI(\a4/b1/Madd_A_sum_cy [0]),
    .S(\a4/b1/n0037<5>1 ),
    .O(\a4/b1/Madd_n0023_Madd_Madd_cy [5])
  );
  XORCY   \a4/b1/Madd_n0023_Madd_Madd_xor<4>  (
    .CI(\a4/b1/Madd_n0023_Madd_Madd_cy [3]),
    .LI(\a4/b1/n0037<4>1 ),
    .O(\a4/b1/n0023 [4])
  );
  MUXCY   \a4/b1/Madd_n0023_Madd_Madd_cy<4>  (
    .CI(\a4/b1/Madd_n0023_Madd_Madd_cy [3]),
    .DI(\a4/b1/Madd_A_sum_cy [0]),
    .S(\a4/b1/n0037<4>1 ),
    .O(\a4/b1/Madd_n0023_Madd_Madd_cy [4])
  );
  XORCY   \a4/b1/Madd_n0023_Madd_Madd_xor<3>  (
    .CI(\a4/b1/Madd_n0023_Madd_Madd_cy [2]),
    .LI(\a4/b1/n0037<3>1 ),
    .O(\a4/b1/n0023 [3])
  );
  MUXCY   \a4/b1/Madd_n0023_Madd_Madd_cy<3>  (
    .CI(\a4/b1/Madd_n0023_Madd_Madd_cy [2]),
    .DI(\a4/b1/Madd_A_sum_cy [0]),
    .S(\a4/b1/n0037<3>1 ),
    .O(\a4/b1/Madd_n0023_Madd_Madd_cy [3])
  );
  XORCY   \a4/b1/Madd_n0023_Madd_Madd_xor<2>  (
    .CI(\a4/b1/Madd_n0023_Madd_Madd_cy [1]),
    .LI(\a4/b1/n0037<2>1 ),
    .O(\a4/b1/n0023 [2])
  );
  MUXCY   \a4/b1/Madd_n0023_Madd_Madd_cy<2>  (
    .CI(\a4/b1/Madd_n0023_Madd_Madd_cy [1]),
    .DI(\a4/b1/Madd_A_sum_cy [0]),
    .S(\a4/b1/n0037<2>1 ),
    .O(\a4/b1/Madd_n0023_Madd_Madd_cy [2])
  );
  XORCY   \a4/b1/Madd_n0023_Madd_Madd_xor<1>  (
    .CI(\a4/b1/Madd_n0023_Madd_Madd_cy [0]),
    .LI(\a4/b1/n0037<1>1 ),
    .O(\a4/b1/n0023 [1])
  );
  MUXCY   \a4/b1/Madd_n0023_Madd_Madd_cy<1>  (
    .CI(\a4/b1/Madd_n0023_Madd_Madd_cy [0]),
    .DI(\a4/b1/Madd_A_sum_cy [0]),
    .S(\a4/b1/n0037<1>1 ),
    .O(\a4/b1/Madd_n0023_Madd_Madd_cy [1])
  );
  XORCY   \a4/b1/Madd_n0023_Madd_Madd_xor<0>  (
    .CI(N0),
    .LI(\a4/b1/n0037<0>1 ),
    .O(\a4/b1/n0023 [0])
  );
  MUXCY   \a4/b1/Madd_n0023_Madd_Madd_cy<0>  (
    .CI(N0),
    .DI(\a4/b1/Madd_A_sum_cy [0]),
    .S(\a4/b1/n0037<0>1 ),
    .O(\a4/b1/Madd_n0023_Madd_Madd_cy [0])
  );
  XORCY   \a4/b2/Madd_n0023_Madd_Madd_xor<7>  (
    .CI(\a4/b2/Madd_n0023_Madd_Madd_cy [6]),
    .LI(\a4/b2/Madd_n0023_Madd_Madd_lut [7]),
    .O(\a4/b2/n0023 [7])
  );
  XORCY   \a4/b2/Madd_n0023_Madd_Madd_xor<6>  (
    .CI(\a4/b2/Madd_n0023_Madd_Madd_cy [5]),
    .LI(\a4/b2/Madd_n0023_Madd_Madd_lut [6]),
    .O(\a4/b2/n0023 [6])
  );
  MUXCY   \a4/b2/Madd_n0023_Madd_Madd_cy<6>  (
    .CI(\a4/b2/Madd_n0023_Madd_Madd_cy [5]),
    .DI(\a4/temp_A2 [6]),
    .S(\a4/b2/Madd_n0023_Madd_Madd_lut [6]),
    .O(\a4/b2/Madd_n0023_Madd_Madd_cy [6])
  );
  XORCY   \a4/b2/Madd_n0023_Madd_Madd_xor<5>  (
    .CI(\a4/b2/Madd_n0023_Madd_Madd_cy [4]),
    .LI(\a4/b2/Madd_n0023_Madd_Madd_lut [5]),
    .O(\a4/b2/n0023 [5])
  );
  MUXCY   \a4/b2/Madd_n0023_Madd_Madd_cy<5>  (
    .CI(\a4/b2/Madd_n0023_Madd_Madd_cy [4]),
    .DI(\a4/temp_A2 [5]),
    .S(\a4/b2/Madd_n0023_Madd_Madd_lut [5]),
    .O(\a4/b2/Madd_n0023_Madd_Madd_cy [5])
  );
  XORCY   \a4/b2/Madd_n0023_Madd_Madd_xor<4>  (
    .CI(\a4/b2/Madd_n0023_Madd_Madd_cy [3]),
    .LI(\a4/b2/Madd_n0023_Madd_Madd_lut [4]),
    .O(\a4/b2/n0023 [4])
  );
  MUXCY   \a4/b2/Madd_n0023_Madd_Madd_cy<4>  (
    .CI(\a4/b2/Madd_n0023_Madd_Madd_cy [3]),
    .DI(\a4/temp_A2 [4]),
    .S(\a4/b2/Madd_n0023_Madd_Madd_lut [4]),
    .O(\a4/b2/Madd_n0023_Madd_Madd_cy [4])
  );
  XORCY   \a4/b2/Madd_n0023_Madd_Madd_xor<3>  (
    .CI(\a4/b2/Madd_n0023_Madd_Madd_cy [2]),
    .LI(\a4/b2/Madd_n0023_Madd_Madd_lut [3]),
    .O(\a4/b2/n0023 [3])
  );
  MUXCY   \a4/b2/Madd_n0023_Madd_Madd_cy<3>  (
    .CI(\a4/b2/Madd_n0023_Madd_Madd_cy [2]),
    .DI(\a4/temp_A2 [3]),
    .S(\a4/b2/Madd_n0023_Madd_Madd_lut [3]),
    .O(\a4/b2/Madd_n0023_Madd_Madd_cy [3])
  );
  XORCY   \a4/b2/Madd_n0023_Madd_Madd_xor<2>  (
    .CI(\a4/b2/Madd_n0023_Madd_Madd_cy [1]),
    .LI(\a4/b2/Madd_n0023_Madd_Madd_lut [2]),
    .O(\a4/b2/n0023 [2])
  );
  MUXCY   \a4/b2/Madd_n0023_Madd_Madd_cy<2>  (
    .CI(\a4/b2/Madd_n0023_Madd_Madd_cy [1]),
    .DI(\a4/temp_A2 [2]),
    .S(\a4/b2/Madd_n0023_Madd_Madd_lut [2]),
    .O(\a4/b2/Madd_n0023_Madd_Madd_cy [2])
  );
  XORCY   \a4/b2/Madd_n0023_Madd_Madd_xor<1>  (
    .CI(\a4/b2/Madd_n0023_Madd_Madd_cy [0]),
    .LI(\a4/b2/Madd_n0023_Madd_Madd_lut [1]),
    .O(\a4/b2/n0023 [1])
  );
  MUXCY   \a4/b2/Madd_n0023_Madd_Madd_cy<1>  (
    .CI(\a4/b2/Madd_n0023_Madd_Madd_cy [0]),
    .DI(\a4/temp_A2 [1]),
    .S(\a4/b2/Madd_n0023_Madd_Madd_lut [1]),
    .O(\a4/b2/Madd_n0023_Madd_Madd_cy [1])
  );
  XORCY   \a4/b2/Madd_n0023_Madd_Madd_xor<0>  (
    .CI(N0),
    .LI(\a4/b2/Madd_n0023_Madd_Madd_lut [0]),
    .O(\a4/b2/n0023 [0])
  );
  MUXCY   \a4/b2/Madd_n0023_Madd_Madd_cy<0>  (
    .CI(N0),
    .DI(\a4/temp_A2 [0]),
    .S(\a4/b2/Madd_n0023_Madd_Madd_lut [0]),
    .O(\a4/b2/Madd_n0023_Madd_Madd_cy [0])
  );
  XORCY   \a4/b2/Madd_A_sum_xor<7>  (
    .CI(\a4/b2/Madd_A_sum_cy [6]),
    .LI(\a4/b2/Madd_A_sum_lut [7]),
    .O(\a4/b2/A_sum [7])
  );
  XORCY   \a4/b2/Madd_A_sum_xor<6>  (
    .CI(\a4/b2/Madd_A_sum_cy [5]),
    .LI(\a4/b2/Madd_A_sum_lut [6]),
    .O(\a4/b2/A_sum [6])
  );
  MUXCY   \a4/b2/Madd_A_sum_cy<6>  (
    .CI(\a4/b2/Madd_A_sum_cy [5]),
    .DI(\a4/temp_A2 [6]),
    .S(\a4/b2/Madd_A_sum_lut [6]),
    .O(\a4/b2/Madd_A_sum_cy [6])
  );
  XORCY   \a4/b2/Madd_A_sum_xor<5>  (
    .CI(\a4/b2/Madd_A_sum_cy [4]),
    .LI(\a4/b2/Madd_A_sum_lut [5]),
    .O(\a4/b2/A_sum [5])
  );
  MUXCY   \a4/b2/Madd_A_sum_cy<5>  (
    .CI(\a4/b2/Madd_A_sum_cy [4]),
    .DI(\a4/temp_A2 [5]),
    .S(\a4/b2/Madd_A_sum_lut [5]),
    .O(\a4/b2/Madd_A_sum_cy [5])
  );
  XORCY   \a4/b2/Madd_A_sum_xor<4>  (
    .CI(\a4/b2/Madd_A_sum_cy [3]),
    .LI(\a4/b2/Madd_A_sum_lut [4]),
    .O(\a4/b2/A_sum [4])
  );
  MUXCY   \a4/b2/Madd_A_sum_cy<4>  (
    .CI(\a4/b2/Madd_A_sum_cy [3]),
    .DI(\a4/temp_A2 [4]),
    .S(\a4/b2/Madd_A_sum_lut [4]),
    .O(\a4/b2/Madd_A_sum_cy [4])
  );
  XORCY   \a4/b2/Madd_A_sum_xor<3>  (
    .CI(\a4/b2/Madd_A_sum_cy [2]),
    .LI(\a4/b2/Madd_A_sum_lut [3]),
    .O(\a4/b2/A_sum [3])
  );
  MUXCY   \a4/b2/Madd_A_sum_cy<3>  (
    .CI(\a4/b2/Madd_A_sum_cy [2]),
    .DI(\a4/temp_A2 [3]),
    .S(\a4/b2/Madd_A_sum_lut [3]),
    .O(\a4/b2/Madd_A_sum_cy [3])
  );
  XORCY   \a4/b2/Madd_A_sum_xor<2>  (
    .CI(\a4/b2/Madd_A_sum_cy [1]),
    .LI(\a4/b2/Madd_A_sum_lut [2]),
    .O(\a4/b2/A_sum [2])
  );
  MUXCY   \a4/b2/Madd_A_sum_cy<2>  (
    .CI(\a4/b2/Madd_A_sum_cy [1]),
    .DI(\a4/temp_A2 [2]),
    .S(\a4/b2/Madd_A_sum_lut [2]),
    .O(\a4/b2/Madd_A_sum_cy [2])
  );
  XORCY   \a4/b2/Madd_A_sum_xor<1>  (
    .CI(\a4/b2/Madd_A_sum_cy [0]),
    .LI(\a4/b2/Madd_A_sum_lut [1]),
    .O(\a4/b2/A_sum [1])
  );
  MUXCY   \a4/b2/Madd_A_sum_cy<1>  (
    .CI(\a4/b2/Madd_A_sum_cy [0]),
    .DI(\a4/temp_A2 [1]),
    .S(\a4/b2/Madd_A_sum_lut [1]),
    .O(\a4/b2/Madd_A_sum_cy [1])
  );
  XORCY   \a4/b2/Madd_A_sum_xor<0>  (
    .CI(\a4/b1/Madd_A_sum_cy [0]),
    .LI(\a4/b2/Madd_A_sum_lut [0]),
    .O(\a4/b2/A_sum [0])
  );
  MUXCY   \a4/b2/Madd_A_sum_cy<0>  (
    .CI(\a4/b1/Madd_A_sum_cy [0]),
    .DI(\a4/temp_A2 [0]),
    .S(\a4/b2/Madd_A_sum_lut [0]),
    .O(\a4/b2/Madd_A_sum_cy [0])
  );
  XORCY   \a4/b3/Madd_n0023_Madd_Madd_xor<7>  (
    .CI(\a4/b3/Madd_n0023_Madd_Madd_cy [6]),
    .LI(\a4/b3/Madd_n0023_Madd_Madd_lut [7]),
    .O(\a4/b3/n0023 [7])
  );
  XORCY   \a4/b3/Madd_n0023_Madd_Madd_xor<6>  (
    .CI(\a4/b3/Madd_n0023_Madd_Madd_cy [5]),
    .LI(\a4/b3/Madd_n0023_Madd_Madd_lut [6]),
    .O(\a4/b3/n0023 [6])
  );
  MUXCY   \a4/b3/Madd_n0023_Madd_Madd_cy<6>  (
    .CI(\a4/b3/Madd_n0023_Madd_Madd_cy [5]),
    .DI(\a4/temp_A3 [6]),
    .S(\a4/b3/Madd_n0023_Madd_Madd_lut [6]),
    .O(\a4/b3/Madd_n0023_Madd_Madd_cy [6])
  );
  XORCY   \a4/b3/Madd_n0023_Madd_Madd_xor<5>  (
    .CI(\a4/b3/Madd_n0023_Madd_Madd_cy [4]),
    .LI(\a4/b3/Madd_n0023_Madd_Madd_lut [5]),
    .O(\a4/b3/n0023 [5])
  );
  MUXCY   \a4/b3/Madd_n0023_Madd_Madd_cy<5>  (
    .CI(\a4/b3/Madd_n0023_Madd_Madd_cy [4]),
    .DI(\a4/temp_A3 [5]),
    .S(\a4/b3/Madd_n0023_Madd_Madd_lut [5]),
    .O(\a4/b3/Madd_n0023_Madd_Madd_cy [5])
  );
  XORCY   \a4/b3/Madd_n0023_Madd_Madd_xor<4>  (
    .CI(\a4/b3/Madd_n0023_Madd_Madd_cy [3]),
    .LI(\a4/b3/Madd_n0023_Madd_Madd_lut [4]),
    .O(\a4/b3/n0023 [4])
  );
  MUXCY   \a4/b3/Madd_n0023_Madd_Madd_cy<4>  (
    .CI(\a4/b3/Madd_n0023_Madd_Madd_cy [3]),
    .DI(\a4/temp_A3 [4]),
    .S(\a4/b3/Madd_n0023_Madd_Madd_lut [4]),
    .O(\a4/b3/Madd_n0023_Madd_Madd_cy [4])
  );
  XORCY   \a4/b3/Madd_n0023_Madd_Madd_xor<3>  (
    .CI(\a4/b3/Madd_n0023_Madd_Madd_cy [2]),
    .LI(\a4/b3/Madd_n0023_Madd_Madd_lut [3]),
    .O(\a4/b3/n0023 [3])
  );
  MUXCY   \a4/b3/Madd_n0023_Madd_Madd_cy<3>  (
    .CI(\a4/b3/Madd_n0023_Madd_Madd_cy [2]),
    .DI(\a4/temp_A3 [3]),
    .S(\a4/b3/Madd_n0023_Madd_Madd_lut [3]),
    .O(\a4/b3/Madd_n0023_Madd_Madd_cy [3])
  );
  XORCY   \a4/b3/Madd_n0023_Madd_Madd_xor<2>  (
    .CI(\a4/b3/Madd_n0023_Madd_Madd_cy [1]),
    .LI(\a4/b3/Madd_n0023_Madd_Madd_lut [2]),
    .O(\a4/b3/n0023 [2])
  );
  MUXCY   \a4/b3/Madd_n0023_Madd_Madd_cy<2>  (
    .CI(\a4/b3/Madd_n0023_Madd_Madd_cy [1]),
    .DI(\a4/temp_A3 [2]),
    .S(\a4/b3/Madd_n0023_Madd_Madd_lut [2]),
    .O(\a4/b3/Madd_n0023_Madd_Madd_cy [2])
  );
  XORCY   \a4/b3/Madd_n0023_Madd_Madd_xor<1>  (
    .CI(\a4/b3/Madd_n0023_Madd_Madd_cy [0]),
    .LI(\a4/b3/Madd_n0023_Madd_Madd_lut [1]),
    .O(\a4/b3/n0023 [1])
  );
  MUXCY   \a4/b3/Madd_n0023_Madd_Madd_cy<1>  (
    .CI(\a4/b3/Madd_n0023_Madd_Madd_cy [0]),
    .DI(\a4/temp_A3 [1]),
    .S(\a4/b3/Madd_n0023_Madd_Madd_lut [1]),
    .O(\a4/b3/Madd_n0023_Madd_Madd_cy [1])
  );
  XORCY   \a4/b3/Madd_n0023_Madd_Madd_xor<0>  (
    .CI(N0),
    .LI(\a4/b3/Madd_n0023_Madd_Madd_lut [0]),
    .O(\a4/b3/n0023 [0])
  );
  MUXCY   \a4/b3/Madd_n0023_Madd_Madd_cy<0>  (
    .CI(N0),
    .DI(\a4/temp_A3 [0]),
    .S(\a4/b3/Madd_n0023_Madd_Madd_lut [0]),
    .O(\a4/b3/Madd_n0023_Madd_Madd_cy [0])
  );
  XORCY   \a4/b3/Madd_A_sum_xor<7>  (
    .CI(\a4/b3/Madd_A_sum_cy [6]),
    .LI(\a4/b3/Madd_A_sum_lut [7]),
    .O(\a4/b3/A_sum [7])
  );
  XORCY   \a4/b3/Madd_A_sum_xor<6>  (
    .CI(\a4/b3/Madd_A_sum_cy [5]),
    .LI(\a4/b3/Madd_A_sum_lut [6]),
    .O(\a4/b3/A_sum [6])
  );
  MUXCY   \a4/b3/Madd_A_sum_cy<6>  (
    .CI(\a4/b3/Madd_A_sum_cy [5]),
    .DI(\a4/temp_A3 [6]),
    .S(\a4/b3/Madd_A_sum_lut [6]),
    .O(\a4/b3/Madd_A_sum_cy [6])
  );
  XORCY   \a4/b3/Madd_A_sum_xor<5>  (
    .CI(\a4/b3/Madd_A_sum_cy [4]),
    .LI(\a4/b3/Madd_A_sum_lut [5]),
    .O(\a4/b3/A_sum [5])
  );
  MUXCY   \a4/b3/Madd_A_sum_cy<5>  (
    .CI(\a4/b3/Madd_A_sum_cy [4]),
    .DI(\a4/temp_A3 [5]),
    .S(\a4/b3/Madd_A_sum_lut [5]),
    .O(\a4/b3/Madd_A_sum_cy [5])
  );
  XORCY   \a4/b3/Madd_A_sum_xor<4>  (
    .CI(\a4/b3/Madd_A_sum_cy [3]),
    .LI(\a4/b3/Madd_A_sum_lut [4]),
    .O(\a4/b3/A_sum [4])
  );
  MUXCY   \a4/b3/Madd_A_sum_cy<4>  (
    .CI(\a4/b3/Madd_A_sum_cy [3]),
    .DI(\a4/temp_A3 [4]),
    .S(\a4/b3/Madd_A_sum_lut [4]),
    .O(\a4/b3/Madd_A_sum_cy [4])
  );
  XORCY   \a4/b3/Madd_A_sum_xor<3>  (
    .CI(\a4/b3/Madd_A_sum_cy [2]),
    .LI(\a4/b3/Madd_A_sum_lut [3]),
    .O(\a4/b3/A_sum [3])
  );
  MUXCY   \a4/b3/Madd_A_sum_cy<3>  (
    .CI(\a4/b3/Madd_A_sum_cy [2]),
    .DI(\a4/temp_A3 [3]),
    .S(\a4/b3/Madd_A_sum_lut [3]),
    .O(\a4/b3/Madd_A_sum_cy [3])
  );
  XORCY   \a4/b3/Madd_A_sum_xor<2>  (
    .CI(\a4/b3/Madd_A_sum_cy [1]),
    .LI(\a4/b3/Madd_A_sum_lut [2]),
    .O(\a4/b3/A_sum [2])
  );
  MUXCY   \a4/b3/Madd_A_sum_cy<2>  (
    .CI(\a4/b3/Madd_A_sum_cy [1]),
    .DI(\a4/temp_A3 [2]),
    .S(\a4/b3/Madd_A_sum_lut [2]),
    .O(\a4/b3/Madd_A_sum_cy [2])
  );
  XORCY   \a4/b3/Madd_A_sum_xor<1>  (
    .CI(\a4/b3/Madd_A_sum_cy [0]),
    .LI(\a4/b3/Madd_A_sum_lut [1]),
    .O(\a4/b3/A_sum [1])
  );
  MUXCY   \a4/b3/Madd_A_sum_cy<1>  (
    .CI(\a4/b3/Madd_A_sum_cy [0]),
    .DI(\a4/temp_A3 [1]),
    .S(\a4/b3/Madd_A_sum_lut [1]),
    .O(\a4/b3/Madd_A_sum_cy [1])
  );
  XORCY   \a4/b3/Madd_A_sum_xor<0>  (
    .CI(\a4/b1/Madd_A_sum_cy [0]),
    .LI(\a4/b3/Madd_A_sum_lut [0]),
    .O(\a4/b3/A_sum [0])
  );
  MUXCY   \a4/b3/Madd_A_sum_cy<0>  (
    .CI(\a4/b1/Madd_A_sum_cy [0]),
    .DI(\a4/temp_A3 [0]),
    .S(\a4/b3/Madd_A_sum_lut [0]),
    .O(\a4/b3/Madd_A_sum_cy [0])
  );
  XORCY   \a4/b4/Madd_n0023_Madd_Madd_xor<7>  (
    .CI(\a4/b4/Madd_n0023_Madd_Madd_cy [6]),
    .LI(\a4/b4/Madd_n0023_Madd_Madd_lut [7]),
    .O(\a4/b4/n0023 [7])
  );
  XORCY   \a4/b4/Madd_n0023_Madd_Madd_xor<6>  (
    .CI(\a4/b4/Madd_n0023_Madd_Madd_cy [5]),
    .LI(\a4/b4/Madd_n0023_Madd_Madd_lut [6]),
    .O(\a4/b4/n0023 [6])
  );
  MUXCY   \a4/b4/Madd_n0023_Madd_Madd_cy<6>  (
    .CI(\a4/b4/Madd_n0023_Madd_Madd_cy [5]),
    .DI(\a4/temp_A4 [6]),
    .S(\a4/b4/Madd_n0023_Madd_Madd_lut [6]),
    .O(\a4/b4/Madd_n0023_Madd_Madd_cy [6])
  );
  XORCY   \a4/b4/Madd_n0023_Madd_Madd_xor<5>  (
    .CI(\a4/b4/Madd_n0023_Madd_Madd_cy [4]),
    .LI(\a4/b4/Madd_n0023_Madd_Madd_lut [5]),
    .O(\a4/b4/n0023 [5])
  );
  MUXCY   \a4/b4/Madd_n0023_Madd_Madd_cy<5>  (
    .CI(\a4/b4/Madd_n0023_Madd_Madd_cy [4]),
    .DI(\a4/temp_A4 [5]),
    .S(\a4/b4/Madd_n0023_Madd_Madd_lut [5]),
    .O(\a4/b4/Madd_n0023_Madd_Madd_cy [5])
  );
  XORCY   \a4/b4/Madd_n0023_Madd_Madd_xor<4>  (
    .CI(\a4/b4/Madd_n0023_Madd_Madd_cy [3]),
    .LI(\a4/b4/Madd_n0023_Madd_Madd_lut [4]),
    .O(\a4/b4/n0023 [4])
  );
  MUXCY   \a4/b4/Madd_n0023_Madd_Madd_cy<4>  (
    .CI(\a4/b4/Madd_n0023_Madd_Madd_cy [3]),
    .DI(\a4/temp_A4 [4]),
    .S(\a4/b4/Madd_n0023_Madd_Madd_lut [4]),
    .O(\a4/b4/Madd_n0023_Madd_Madd_cy [4])
  );
  XORCY   \a4/b4/Madd_n0023_Madd_Madd_xor<3>  (
    .CI(\a4/b4/Madd_n0023_Madd_Madd_cy [2]),
    .LI(\a4/b4/Madd_n0023_Madd_Madd_lut [3]),
    .O(\a4/b4/n0023 [3])
  );
  MUXCY   \a4/b4/Madd_n0023_Madd_Madd_cy<3>  (
    .CI(\a4/b4/Madd_n0023_Madd_Madd_cy [2]),
    .DI(\a4/temp_A4 [3]),
    .S(\a4/b4/Madd_n0023_Madd_Madd_lut [3]),
    .O(\a4/b4/Madd_n0023_Madd_Madd_cy [3])
  );
  XORCY   \a4/b4/Madd_n0023_Madd_Madd_xor<2>  (
    .CI(\a4/b4/Madd_n0023_Madd_Madd_cy [1]),
    .LI(\a4/b4/Madd_n0023_Madd_Madd_lut [2]),
    .O(\a4/b4/n0023 [2])
  );
  MUXCY   \a4/b4/Madd_n0023_Madd_Madd_cy<2>  (
    .CI(\a4/b4/Madd_n0023_Madd_Madd_cy [1]),
    .DI(\a4/temp_A4 [2]),
    .S(\a4/b4/Madd_n0023_Madd_Madd_lut [2]),
    .O(\a4/b4/Madd_n0023_Madd_Madd_cy [2])
  );
  XORCY   \a4/b4/Madd_n0023_Madd_Madd_xor<1>  (
    .CI(\a4/b4/Madd_n0023_Madd_Madd_cy [0]),
    .LI(\a4/b4/Madd_n0023_Madd_Madd_lut [1]),
    .O(\a4/b4/n0023 [1])
  );
  MUXCY   \a4/b4/Madd_n0023_Madd_Madd_cy<1>  (
    .CI(\a4/b4/Madd_n0023_Madd_Madd_cy [0]),
    .DI(\a4/temp_A4 [1]),
    .S(\a4/b4/Madd_n0023_Madd_Madd_lut [1]),
    .O(\a4/b4/Madd_n0023_Madd_Madd_cy [1])
  );
  XORCY   \a4/b4/Madd_n0023_Madd_Madd_xor<0>  (
    .CI(N0),
    .LI(\a4/b4/Madd_n0023_Madd_Madd_lut [0]),
    .O(\a4/b4/n0023 [0])
  );
  MUXCY   \a4/b4/Madd_n0023_Madd_Madd_cy<0>  (
    .CI(N0),
    .DI(\a4/temp_A4 [0]),
    .S(\a4/b4/Madd_n0023_Madd_Madd_lut [0]),
    .O(\a4/b4/Madd_n0023_Madd_Madd_cy [0])
  );
  XORCY   \a4/b4/Madd_A_sum_xor<7>  (
    .CI(\a4/b4/Madd_A_sum_cy [6]),
    .LI(\a4/b4/Madd_A_sum_lut [7]),
    .O(\a4/b4/A_sum [7])
  );
  XORCY   \a4/b4/Madd_A_sum_xor<6>  (
    .CI(\a4/b4/Madd_A_sum_cy [5]),
    .LI(\a4/b4/Madd_A_sum_lut [6]),
    .O(\a4/b4/A_sum [6])
  );
  MUXCY   \a4/b4/Madd_A_sum_cy<6>  (
    .CI(\a4/b4/Madd_A_sum_cy [5]),
    .DI(\a4/temp_A4 [6]),
    .S(\a4/b4/Madd_A_sum_lut [6]),
    .O(\a4/b4/Madd_A_sum_cy [6])
  );
  XORCY   \a4/b4/Madd_A_sum_xor<5>  (
    .CI(\a4/b4/Madd_A_sum_cy [4]),
    .LI(\a4/b4/Madd_A_sum_lut [5]),
    .O(\a4/b4/A_sum [5])
  );
  MUXCY   \a4/b4/Madd_A_sum_cy<5>  (
    .CI(\a4/b4/Madd_A_sum_cy [4]),
    .DI(\a4/temp_A4 [5]),
    .S(\a4/b4/Madd_A_sum_lut [5]),
    .O(\a4/b4/Madd_A_sum_cy [5])
  );
  XORCY   \a4/b4/Madd_A_sum_xor<4>  (
    .CI(\a4/b4/Madd_A_sum_cy [3]),
    .LI(\a4/b4/Madd_A_sum_lut [4]),
    .O(\a4/b4/A_sum [4])
  );
  MUXCY   \a4/b4/Madd_A_sum_cy<4>  (
    .CI(\a4/b4/Madd_A_sum_cy [3]),
    .DI(\a4/temp_A4 [4]),
    .S(\a4/b4/Madd_A_sum_lut [4]),
    .O(\a4/b4/Madd_A_sum_cy [4])
  );
  XORCY   \a4/b4/Madd_A_sum_xor<3>  (
    .CI(\a4/b4/Madd_A_sum_cy [2]),
    .LI(\a4/b4/Madd_A_sum_lut [3]),
    .O(\a4/b4/A_sum [3])
  );
  MUXCY   \a4/b4/Madd_A_sum_cy<3>  (
    .CI(\a4/b4/Madd_A_sum_cy [2]),
    .DI(\a4/temp_A4 [3]),
    .S(\a4/b4/Madd_A_sum_lut [3]),
    .O(\a4/b4/Madd_A_sum_cy [3])
  );
  XORCY   \a4/b4/Madd_A_sum_xor<2>  (
    .CI(\a4/b4/Madd_A_sum_cy [1]),
    .LI(\a4/b4/Madd_A_sum_lut [2]),
    .O(\a4/b4/A_sum [2])
  );
  MUXCY   \a4/b4/Madd_A_sum_cy<2>  (
    .CI(\a4/b4/Madd_A_sum_cy [1]),
    .DI(\a4/temp_A4 [2]),
    .S(\a4/b4/Madd_A_sum_lut [2]),
    .O(\a4/b4/Madd_A_sum_cy [2])
  );
  XORCY   \a4/b4/Madd_A_sum_xor<1>  (
    .CI(\a4/b4/Madd_A_sum_cy [0]),
    .LI(\a4/b4/Madd_A_sum_lut [1]),
    .O(\a4/b4/A_sum [1])
  );
  MUXCY   \a4/b4/Madd_A_sum_cy<1>  (
    .CI(\a4/b4/Madd_A_sum_cy [0]),
    .DI(\a4/temp_A4 [1]),
    .S(\a4/b4/Madd_A_sum_lut [1]),
    .O(\a4/b4/Madd_A_sum_cy [1])
  );
  XORCY   \a4/b4/Madd_A_sum_xor<0>  (
    .CI(\a4/b1/Madd_A_sum_cy [0]),
    .LI(\a4/b4/Madd_A_sum_lut [0]),
    .O(\a4/b4/A_sum [0])
  );
  MUXCY   \a4/b4/Madd_A_sum_cy<0>  (
    .CI(\a4/b1/Madd_A_sum_cy [0]),
    .DI(\a4/temp_A4 [0]),
    .S(\a4/b4/Madd_A_sum_lut [0]),
    .O(\a4/b4/Madd_A_sum_cy [0])
  );
  XORCY   \a4/b5/Madd_n0023_Madd_Madd_xor<7>  (
    .CI(\a4/b5/Madd_n0023_Madd_Madd_cy [6]),
    .LI(\a4/b5/Madd_n0023_Madd_Madd_lut [7]),
    .O(\a4/b5/n0023 [7])
  );
  XORCY   \a4/b5/Madd_n0023_Madd_Madd_xor<6>  (
    .CI(\a4/b5/Madd_n0023_Madd_Madd_cy [5]),
    .LI(\a4/b5/Madd_n0023_Madd_Madd_lut [6]),
    .O(\a4/b5/n0023 [6])
  );
  MUXCY   \a4/b5/Madd_n0023_Madd_Madd_cy<6>  (
    .CI(\a4/b5/Madd_n0023_Madd_Madd_cy [5]),
    .DI(\a4/temp_A5 [6]),
    .S(\a4/b5/Madd_n0023_Madd_Madd_lut [6]),
    .O(\a4/b5/Madd_n0023_Madd_Madd_cy [6])
  );
  XORCY   \a4/b5/Madd_n0023_Madd_Madd_xor<5>  (
    .CI(\a4/b5/Madd_n0023_Madd_Madd_cy [4]),
    .LI(\a4/b5/Madd_n0023_Madd_Madd_lut [5]),
    .O(\a4/b5/n0023 [5])
  );
  MUXCY   \a4/b5/Madd_n0023_Madd_Madd_cy<5>  (
    .CI(\a4/b5/Madd_n0023_Madd_Madd_cy [4]),
    .DI(\a4/temp_A5 [5]),
    .S(\a4/b5/Madd_n0023_Madd_Madd_lut [5]),
    .O(\a4/b5/Madd_n0023_Madd_Madd_cy [5])
  );
  XORCY   \a4/b5/Madd_n0023_Madd_Madd_xor<4>  (
    .CI(\a4/b5/Madd_n0023_Madd_Madd_cy [3]),
    .LI(\a4/b5/Madd_n0023_Madd_Madd_lut [4]),
    .O(\a4/b5/n0023 [4])
  );
  MUXCY   \a4/b5/Madd_n0023_Madd_Madd_cy<4>  (
    .CI(\a4/b5/Madd_n0023_Madd_Madd_cy [3]),
    .DI(\a4/temp_A5 [4]),
    .S(\a4/b5/Madd_n0023_Madd_Madd_lut [4]),
    .O(\a4/b5/Madd_n0023_Madd_Madd_cy [4])
  );
  XORCY   \a4/b5/Madd_n0023_Madd_Madd_xor<3>  (
    .CI(\a4/b5/Madd_n0023_Madd_Madd_cy [2]),
    .LI(\a4/b5/Madd_n0023_Madd_Madd_lut [3]),
    .O(\a4/b5/n0023 [3])
  );
  MUXCY   \a4/b5/Madd_n0023_Madd_Madd_cy<3>  (
    .CI(\a4/b5/Madd_n0023_Madd_Madd_cy [2]),
    .DI(\a4/temp_A5 [3]),
    .S(\a4/b5/Madd_n0023_Madd_Madd_lut [3]),
    .O(\a4/b5/Madd_n0023_Madd_Madd_cy [3])
  );
  XORCY   \a4/b5/Madd_n0023_Madd_Madd_xor<2>  (
    .CI(\a4/b5/Madd_n0023_Madd_Madd_cy [1]),
    .LI(\a4/b5/Madd_n0023_Madd_Madd_lut [2]),
    .O(\a4/b5/n0023 [2])
  );
  MUXCY   \a4/b5/Madd_n0023_Madd_Madd_cy<2>  (
    .CI(\a4/b5/Madd_n0023_Madd_Madd_cy [1]),
    .DI(\a4/temp_A5 [2]),
    .S(\a4/b5/Madd_n0023_Madd_Madd_lut [2]),
    .O(\a4/b5/Madd_n0023_Madd_Madd_cy [2])
  );
  XORCY   \a4/b5/Madd_n0023_Madd_Madd_xor<1>  (
    .CI(\a4/b5/Madd_n0023_Madd_Madd_cy [0]),
    .LI(\a4/b5/Madd_n0023_Madd_Madd_lut [1]),
    .O(\a4/b5/n0023 [1])
  );
  MUXCY   \a4/b5/Madd_n0023_Madd_Madd_cy<1>  (
    .CI(\a4/b5/Madd_n0023_Madd_Madd_cy [0]),
    .DI(\a4/temp_A5 [1]),
    .S(\a4/b5/Madd_n0023_Madd_Madd_lut [1]),
    .O(\a4/b5/Madd_n0023_Madd_Madd_cy [1])
  );
  XORCY   \a4/b5/Madd_n0023_Madd_Madd_xor<0>  (
    .CI(N0),
    .LI(\a4/b5/Madd_n0023_Madd_Madd_lut [0]),
    .O(\a4/b5/n0023 [0])
  );
  MUXCY   \a4/b5/Madd_n0023_Madd_Madd_cy<0>  (
    .CI(N0),
    .DI(\a4/temp_A5 [0]),
    .S(\a4/b5/Madd_n0023_Madd_Madd_lut [0]),
    .O(\a4/b5/Madd_n0023_Madd_Madd_cy [0])
  );
  XORCY   \a4/b5/Madd_A_sum_xor<7>  (
    .CI(\a4/b5/Madd_A_sum_cy [6]),
    .LI(\a4/b5/Madd_A_sum_lut [7]),
    .O(\a4/b5/A_sum [7])
  );
  XORCY   \a4/b5/Madd_A_sum_xor<6>  (
    .CI(\a4/b5/Madd_A_sum_cy [5]),
    .LI(\a4/b5/Madd_A_sum_lut [6]),
    .O(\a4/b5/A_sum [6])
  );
  MUXCY   \a4/b5/Madd_A_sum_cy<6>  (
    .CI(\a4/b5/Madd_A_sum_cy [5]),
    .DI(\a4/temp_A5 [6]),
    .S(\a4/b5/Madd_A_sum_lut [6]),
    .O(\a4/b5/Madd_A_sum_cy [6])
  );
  XORCY   \a4/b5/Madd_A_sum_xor<5>  (
    .CI(\a4/b5/Madd_A_sum_cy [4]),
    .LI(\a4/b5/Madd_A_sum_lut [5]),
    .O(\a4/b5/A_sum [5])
  );
  MUXCY   \a4/b5/Madd_A_sum_cy<5>  (
    .CI(\a4/b5/Madd_A_sum_cy [4]),
    .DI(\a4/temp_A5 [5]),
    .S(\a4/b5/Madd_A_sum_lut [5]),
    .O(\a4/b5/Madd_A_sum_cy [5])
  );
  XORCY   \a4/b5/Madd_A_sum_xor<4>  (
    .CI(\a4/b5/Madd_A_sum_cy [3]),
    .LI(\a4/b5/Madd_A_sum_lut [4]),
    .O(\a4/b5/A_sum [4])
  );
  MUXCY   \a4/b5/Madd_A_sum_cy<4>  (
    .CI(\a4/b5/Madd_A_sum_cy [3]),
    .DI(\a4/temp_A5 [4]),
    .S(\a4/b5/Madd_A_sum_lut [4]),
    .O(\a4/b5/Madd_A_sum_cy [4])
  );
  XORCY   \a4/b5/Madd_A_sum_xor<3>  (
    .CI(\a4/b5/Madd_A_sum_cy [2]),
    .LI(\a4/b5/Madd_A_sum_lut [3]),
    .O(\a4/b5/A_sum [3])
  );
  MUXCY   \a4/b5/Madd_A_sum_cy<3>  (
    .CI(\a4/b5/Madd_A_sum_cy [2]),
    .DI(\a4/temp_A5 [3]),
    .S(\a4/b5/Madd_A_sum_lut [3]),
    .O(\a4/b5/Madd_A_sum_cy [3])
  );
  XORCY   \a4/b5/Madd_A_sum_xor<2>  (
    .CI(\a4/b5/Madd_A_sum_cy [1]),
    .LI(\a4/b5/Madd_A_sum_lut [2]),
    .O(\a4/b5/A_sum [2])
  );
  MUXCY   \a4/b5/Madd_A_sum_cy<2>  (
    .CI(\a4/b5/Madd_A_sum_cy [1]),
    .DI(\a4/temp_A5 [2]),
    .S(\a4/b5/Madd_A_sum_lut [2]),
    .O(\a4/b5/Madd_A_sum_cy [2])
  );
  XORCY   \a4/b5/Madd_A_sum_xor<1>  (
    .CI(\a4/b5/Madd_A_sum_cy [0]),
    .LI(\a4/b5/Madd_A_sum_lut [1]),
    .O(\a4/b5/A_sum [1])
  );
  MUXCY   \a4/b5/Madd_A_sum_cy<1>  (
    .CI(\a4/b5/Madd_A_sum_cy [0]),
    .DI(\a4/temp_A5 [1]),
    .S(\a4/b5/Madd_A_sum_lut [1]),
    .O(\a4/b5/Madd_A_sum_cy [1])
  );
  XORCY   \a4/b5/Madd_A_sum_xor<0>  (
    .CI(\a4/b1/Madd_A_sum_cy [0]),
    .LI(\a4/b5/Madd_A_sum_lut [0]),
    .O(\a4/b5/A_sum [0])
  );
  MUXCY   \a4/b5/Madd_A_sum_cy<0>  (
    .CI(\a4/b1/Madd_A_sum_cy [0]),
    .DI(\a4/temp_A5 [0]),
    .S(\a4/b5/Madd_A_sum_lut [0]),
    .O(\a4/b5/Madd_A_sum_cy [0])
  );
  XORCY   \a4/b6/Madd_n0023_Madd_Madd_xor<7>  (
    .CI(\a4/b6/Madd_n0023_Madd_Madd_cy [6]),
    .LI(\a4/b6/Madd_n0023_Madd_Madd_lut [7]),
    .O(\a4/b6/n0023 [7])
  );
  XORCY   \a4/b6/Madd_n0023_Madd_Madd_xor<6>  (
    .CI(\a4/b6/Madd_n0023_Madd_Madd_cy [5]),
    .LI(\a4/b6/Madd_n0023_Madd_Madd_lut [6]),
    .O(\a4/b6/n0023 [6])
  );
  MUXCY   \a4/b6/Madd_n0023_Madd_Madd_cy<6>  (
    .CI(\a4/b6/Madd_n0023_Madd_Madd_cy [5]),
    .DI(\a4/temp_A6 [6]),
    .S(\a4/b6/Madd_n0023_Madd_Madd_lut [6]),
    .O(\a4/b6/Madd_n0023_Madd_Madd_cy [6])
  );
  XORCY   \a4/b6/Madd_n0023_Madd_Madd_xor<5>  (
    .CI(\a4/b6/Madd_n0023_Madd_Madd_cy [4]),
    .LI(\a4/b6/Madd_n0023_Madd_Madd_lut [5]),
    .O(\a4/b6/n0023 [5])
  );
  MUXCY   \a4/b6/Madd_n0023_Madd_Madd_cy<5>  (
    .CI(\a4/b6/Madd_n0023_Madd_Madd_cy [4]),
    .DI(\a4/temp_A6 [5]),
    .S(\a4/b6/Madd_n0023_Madd_Madd_lut [5]),
    .O(\a4/b6/Madd_n0023_Madd_Madd_cy [5])
  );
  XORCY   \a4/b6/Madd_n0023_Madd_Madd_xor<4>  (
    .CI(\a4/b6/Madd_n0023_Madd_Madd_cy [3]),
    .LI(\a4/b6/Madd_n0023_Madd_Madd_lut [4]),
    .O(\a4/b6/n0023 [4])
  );
  MUXCY   \a4/b6/Madd_n0023_Madd_Madd_cy<4>  (
    .CI(\a4/b6/Madd_n0023_Madd_Madd_cy [3]),
    .DI(\a4/temp_A6 [4]),
    .S(\a4/b6/Madd_n0023_Madd_Madd_lut [4]),
    .O(\a4/b6/Madd_n0023_Madd_Madd_cy [4])
  );
  XORCY   \a4/b6/Madd_n0023_Madd_Madd_xor<3>  (
    .CI(\a4/b6/Madd_n0023_Madd_Madd_cy [2]),
    .LI(\a4/b6/Madd_n0023_Madd_Madd_lut [3]),
    .O(\a4/b6/n0023 [3])
  );
  MUXCY   \a4/b6/Madd_n0023_Madd_Madd_cy<3>  (
    .CI(\a4/b6/Madd_n0023_Madd_Madd_cy [2]),
    .DI(\a4/temp_A6 [3]),
    .S(\a4/b6/Madd_n0023_Madd_Madd_lut [3]),
    .O(\a4/b6/Madd_n0023_Madd_Madd_cy [3])
  );
  XORCY   \a4/b6/Madd_n0023_Madd_Madd_xor<2>  (
    .CI(\a4/b6/Madd_n0023_Madd_Madd_cy [1]),
    .LI(\a4/b6/Madd_n0023_Madd_Madd_lut [2]),
    .O(\a4/b6/n0023 [2])
  );
  MUXCY   \a4/b6/Madd_n0023_Madd_Madd_cy<2>  (
    .CI(\a4/b6/Madd_n0023_Madd_Madd_cy [1]),
    .DI(\a4/temp_A6 [2]),
    .S(\a4/b6/Madd_n0023_Madd_Madd_lut [2]),
    .O(\a4/b6/Madd_n0023_Madd_Madd_cy [2])
  );
  XORCY   \a4/b6/Madd_n0023_Madd_Madd_xor<1>  (
    .CI(\a4/b6/Madd_n0023_Madd_Madd_cy [0]),
    .LI(\a4/b6/Madd_n0023_Madd_Madd_lut [1]),
    .O(\a4/b6/n0023 [1])
  );
  MUXCY   \a4/b6/Madd_n0023_Madd_Madd_cy<1>  (
    .CI(\a4/b6/Madd_n0023_Madd_Madd_cy [0]),
    .DI(\a4/temp_A6 [1]),
    .S(\a4/b6/Madd_n0023_Madd_Madd_lut [1]),
    .O(\a4/b6/Madd_n0023_Madd_Madd_cy [1])
  );
  XORCY   \a4/b6/Madd_n0023_Madd_Madd_xor<0>  (
    .CI(N0),
    .LI(\a4/b6/Madd_n0023_Madd_Madd_lut [0]),
    .O(\a4/b6/n0023 [0])
  );
  MUXCY   \a4/b6/Madd_n0023_Madd_Madd_cy<0>  (
    .CI(N0),
    .DI(\a4/temp_A6 [0]),
    .S(\a4/b6/Madd_n0023_Madd_Madd_lut [0]),
    .O(\a4/b6/Madd_n0023_Madd_Madd_cy [0])
  );
  XORCY   \a4/b6/Madd_A_sum_xor<7>  (
    .CI(\a4/b6/Madd_A_sum_cy [6]),
    .LI(\a4/b6/Madd_A_sum_lut [7]),
    .O(\a4/b6/A_sum [7])
  );
  XORCY   \a4/b6/Madd_A_sum_xor<6>  (
    .CI(\a4/b6/Madd_A_sum_cy [5]),
    .LI(\a4/b6/Madd_A_sum_lut [6]),
    .O(\a4/b6/A_sum [6])
  );
  MUXCY   \a4/b6/Madd_A_sum_cy<6>  (
    .CI(\a4/b6/Madd_A_sum_cy [5]),
    .DI(\a4/temp_A6 [6]),
    .S(\a4/b6/Madd_A_sum_lut [6]),
    .O(\a4/b6/Madd_A_sum_cy [6])
  );
  XORCY   \a4/b6/Madd_A_sum_xor<5>  (
    .CI(\a4/b6/Madd_A_sum_cy [4]),
    .LI(\a4/b6/Madd_A_sum_lut [5]),
    .O(\a4/b6/A_sum [5])
  );
  MUXCY   \a4/b6/Madd_A_sum_cy<5>  (
    .CI(\a4/b6/Madd_A_sum_cy [4]),
    .DI(\a4/temp_A6 [5]),
    .S(\a4/b6/Madd_A_sum_lut [5]),
    .O(\a4/b6/Madd_A_sum_cy [5])
  );
  XORCY   \a4/b6/Madd_A_sum_xor<4>  (
    .CI(\a4/b6/Madd_A_sum_cy [3]),
    .LI(\a4/b6/Madd_A_sum_lut [4]),
    .O(\a4/b6/A_sum [4])
  );
  MUXCY   \a4/b6/Madd_A_sum_cy<4>  (
    .CI(\a4/b6/Madd_A_sum_cy [3]),
    .DI(\a4/temp_A6 [4]),
    .S(\a4/b6/Madd_A_sum_lut [4]),
    .O(\a4/b6/Madd_A_sum_cy [4])
  );
  XORCY   \a4/b6/Madd_A_sum_xor<3>  (
    .CI(\a4/b6/Madd_A_sum_cy [2]),
    .LI(\a4/b6/Madd_A_sum_lut [3]),
    .O(\a4/b6/A_sum [3])
  );
  MUXCY   \a4/b6/Madd_A_sum_cy<3>  (
    .CI(\a4/b6/Madd_A_sum_cy [2]),
    .DI(\a4/temp_A6 [3]),
    .S(\a4/b6/Madd_A_sum_lut [3]),
    .O(\a4/b6/Madd_A_sum_cy [3])
  );
  XORCY   \a4/b6/Madd_A_sum_xor<2>  (
    .CI(\a4/b6/Madd_A_sum_cy [1]),
    .LI(\a4/b6/Madd_A_sum_lut [2]),
    .O(\a4/b6/A_sum [2])
  );
  MUXCY   \a4/b6/Madd_A_sum_cy<2>  (
    .CI(\a4/b6/Madd_A_sum_cy [1]),
    .DI(\a4/temp_A6 [2]),
    .S(\a4/b6/Madd_A_sum_lut [2]),
    .O(\a4/b6/Madd_A_sum_cy [2])
  );
  XORCY   \a4/b6/Madd_A_sum_xor<1>  (
    .CI(\a4/b6/Madd_A_sum_cy [0]),
    .LI(\a4/b6/Madd_A_sum_lut [1]),
    .O(\a4/b6/A_sum [1])
  );
  MUXCY   \a4/b6/Madd_A_sum_cy<1>  (
    .CI(\a4/b6/Madd_A_sum_cy [0]),
    .DI(\a4/temp_A6 [1]),
    .S(\a4/b6/Madd_A_sum_lut [1]),
    .O(\a4/b6/Madd_A_sum_cy [1])
  );
  XORCY   \a4/b6/Madd_A_sum_xor<0>  (
    .CI(\a4/b1/Madd_A_sum_cy [0]),
    .LI(\a4/b6/Madd_A_sum_lut [0]),
    .O(\a4/b6/A_sum [0])
  );
  MUXCY   \a4/b6/Madd_A_sum_cy<0>  (
    .CI(\a4/b1/Madd_A_sum_cy [0]),
    .DI(\a4/temp_A6 [0]),
    .S(\a4/b6/Madd_A_sum_lut [0]),
    .O(\a4/b6/Madd_A_sum_cy [0])
  );
  XORCY   \a4/b7/Madd_n0023_Madd_Madd_xor<7>  (
    .CI(\a4/b7/Madd_n0023_Madd_Madd_cy [6]),
    .LI(\a4/b7/Madd_n0023_Madd_Madd_lut [7]),
    .O(\a4/b7/n0023 [7])
  );
  XORCY   \a4/b7/Madd_n0023_Madd_Madd_xor<6>  (
    .CI(\a4/b7/Madd_n0023_Madd_Madd_cy [5]),
    .LI(\a4/b7/Madd_n0023_Madd_Madd_lut [6]),
    .O(\a4/b7/n0023 [6])
  );
  MUXCY   \a4/b7/Madd_n0023_Madd_Madd_cy<6>  (
    .CI(\a4/b7/Madd_n0023_Madd_Madd_cy [5]),
    .DI(\a4/temp_A7 [6]),
    .S(\a4/b7/Madd_n0023_Madd_Madd_lut [6]),
    .O(\a4/b7/Madd_n0023_Madd_Madd_cy [6])
  );
  XORCY   \a4/b7/Madd_n0023_Madd_Madd_xor<5>  (
    .CI(\a4/b7/Madd_n0023_Madd_Madd_cy [4]),
    .LI(\a4/b7/Madd_n0023_Madd_Madd_lut [5]),
    .O(\a4/b7/n0023 [5])
  );
  MUXCY   \a4/b7/Madd_n0023_Madd_Madd_cy<5>  (
    .CI(\a4/b7/Madd_n0023_Madd_Madd_cy [4]),
    .DI(\a4/temp_A7 [5]),
    .S(\a4/b7/Madd_n0023_Madd_Madd_lut [5]),
    .O(\a4/b7/Madd_n0023_Madd_Madd_cy [5])
  );
  XORCY   \a4/b7/Madd_n0023_Madd_Madd_xor<4>  (
    .CI(\a4/b7/Madd_n0023_Madd_Madd_cy [3]),
    .LI(\a4/b7/Madd_n0023_Madd_Madd_lut [4]),
    .O(\a4/b7/n0023 [4])
  );
  MUXCY   \a4/b7/Madd_n0023_Madd_Madd_cy<4>  (
    .CI(\a4/b7/Madd_n0023_Madd_Madd_cy [3]),
    .DI(\a4/temp_A7 [4]),
    .S(\a4/b7/Madd_n0023_Madd_Madd_lut [4]),
    .O(\a4/b7/Madd_n0023_Madd_Madd_cy [4])
  );
  XORCY   \a4/b7/Madd_n0023_Madd_Madd_xor<3>  (
    .CI(\a4/b7/Madd_n0023_Madd_Madd_cy [2]),
    .LI(\a4/b7/Madd_n0023_Madd_Madd_lut [3]),
    .O(\a4/b7/n0023 [3])
  );
  MUXCY   \a4/b7/Madd_n0023_Madd_Madd_cy<3>  (
    .CI(\a4/b7/Madd_n0023_Madd_Madd_cy [2]),
    .DI(\a4/temp_A7 [3]),
    .S(\a4/b7/Madd_n0023_Madd_Madd_lut [3]),
    .O(\a4/b7/Madd_n0023_Madd_Madd_cy [3])
  );
  XORCY   \a4/b7/Madd_n0023_Madd_Madd_xor<2>  (
    .CI(\a4/b7/Madd_n0023_Madd_Madd_cy [1]),
    .LI(\a4/b7/Madd_n0023_Madd_Madd_lut [2]),
    .O(\a4/b7/n0023 [2])
  );
  MUXCY   \a4/b7/Madd_n0023_Madd_Madd_cy<2>  (
    .CI(\a4/b7/Madd_n0023_Madd_Madd_cy [1]),
    .DI(\a4/temp_A7 [2]),
    .S(\a4/b7/Madd_n0023_Madd_Madd_lut [2]),
    .O(\a4/b7/Madd_n0023_Madd_Madd_cy [2])
  );
  XORCY   \a4/b7/Madd_n0023_Madd_Madd_xor<1>  (
    .CI(\a4/b7/Madd_n0023_Madd_Madd_cy [0]),
    .LI(\a4/b7/Madd_n0023_Madd_Madd_lut [1]),
    .O(\a4/b7/n0023 [1])
  );
  MUXCY   \a4/b7/Madd_n0023_Madd_Madd_cy<1>  (
    .CI(\a4/b7/Madd_n0023_Madd_Madd_cy [0]),
    .DI(\a4/temp_A7 [1]),
    .S(\a4/b7/Madd_n0023_Madd_Madd_lut [1]),
    .O(\a4/b7/Madd_n0023_Madd_Madd_cy [1])
  );
  XORCY   \a4/b7/Madd_n0023_Madd_Madd_xor<0>  (
    .CI(N0),
    .LI(\a4/b7/Madd_n0023_Madd_Madd_lut [0]),
    .O(\a4/b7/n0023 [0])
  );
  MUXCY   \a4/b7/Madd_n0023_Madd_Madd_cy<0>  (
    .CI(N0),
    .DI(\a4/temp_A7 [0]),
    .S(\a4/b7/Madd_n0023_Madd_Madd_lut [0]),
    .O(\a4/b7/Madd_n0023_Madd_Madd_cy [0])
  );
  XORCY   \a4/b7/Madd_A_sum_xor<7>  (
    .CI(\a4/b7/Madd_A_sum_cy [6]),
    .LI(\a4/b7/Madd_A_sum_lut [7]),
    .O(\a4/b7/A_sum [7])
  );
  XORCY   \a4/b7/Madd_A_sum_xor<6>  (
    .CI(\a4/b7/Madd_A_sum_cy [5]),
    .LI(\a4/b7/Madd_A_sum_lut [6]),
    .O(\a4/b7/A_sum [6])
  );
  MUXCY   \a4/b7/Madd_A_sum_cy<6>  (
    .CI(\a4/b7/Madd_A_sum_cy [5]),
    .DI(\a4/temp_A7 [6]),
    .S(\a4/b7/Madd_A_sum_lut [6]),
    .O(\a4/b7/Madd_A_sum_cy [6])
  );
  XORCY   \a4/b7/Madd_A_sum_xor<5>  (
    .CI(\a4/b7/Madd_A_sum_cy [4]),
    .LI(\a4/b7/Madd_A_sum_lut [5]),
    .O(\a4/b7/A_sum [5])
  );
  MUXCY   \a4/b7/Madd_A_sum_cy<5>  (
    .CI(\a4/b7/Madd_A_sum_cy [4]),
    .DI(\a4/temp_A7 [5]),
    .S(\a4/b7/Madd_A_sum_lut [5]),
    .O(\a4/b7/Madd_A_sum_cy [5])
  );
  XORCY   \a4/b7/Madd_A_sum_xor<4>  (
    .CI(\a4/b7/Madd_A_sum_cy [3]),
    .LI(\a4/b7/Madd_A_sum_lut [4]),
    .O(\a4/b7/A_sum [4])
  );
  MUXCY   \a4/b7/Madd_A_sum_cy<4>  (
    .CI(\a4/b7/Madd_A_sum_cy [3]),
    .DI(\a4/temp_A7 [4]),
    .S(\a4/b7/Madd_A_sum_lut [4]),
    .O(\a4/b7/Madd_A_sum_cy [4])
  );
  XORCY   \a4/b7/Madd_A_sum_xor<3>  (
    .CI(\a4/b7/Madd_A_sum_cy [2]),
    .LI(\a4/b7/Madd_A_sum_lut [3]),
    .O(\a4/b7/A_sum [3])
  );
  MUXCY   \a4/b7/Madd_A_sum_cy<3>  (
    .CI(\a4/b7/Madd_A_sum_cy [2]),
    .DI(\a4/temp_A7 [3]),
    .S(\a4/b7/Madd_A_sum_lut [3]),
    .O(\a4/b7/Madd_A_sum_cy [3])
  );
  XORCY   \a4/b7/Madd_A_sum_xor<2>  (
    .CI(\a4/b7/Madd_A_sum_cy [1]),
    .LI(\a4/b7/Madd_A_sum_lut [2]),
    .O(\a4/b7/A_sum [2])
  );
  MUXCY   \a4/b7/Madd_A_sum_cy<2>  (
    .CI(\a4/b7/Madd_A_sum_cy [1]),
    .DI(\a4/temp_A7 [2]),
    .S(\a4/b7/Madd_A_sum_lut [2]),
    .O(\a4/b7/Madd_A_sum_cy [2])
  );
  XORCY   \a4/b7/Madd_A_sum_xor<1>  (
    .CI(\a4/b7/Madd_A_sum_cy [0]),
    .LI(\a4/b7/Madd_A_sum_lut [1]),
    .O(\a4/b7/A_sum [1])
  );
  MUXCY   \a4/b7/Madd_A_sum_cy<1>  (
    .CI(\a4/b7/Madd_A_sum_cy [0]),
    .DI(\a4/temp_A7 [1]),
    .S(\a4/b7/Madd_A_sum_lut [1]),
    .O(\a4/b7/Madd_A_sum_cy [1])
  );
  XORCY   \a4/b7/Madd_A_sum_xor<0>  (
    .CI(\a4/b1/Madd_A_sum_cy [0]),
    .LI(\a4/b7/Madd_A_sum_lut [0]),
    .O(\a4/b7/A_sum [0])
  );
  MUXCY   \a4/b7/Madd_A_sum_cy<0>  (
    .CI(\a4/b1/Madd_A_sum_cy [0]),
    .DI(\a4/temp_A7 [0]),
    .S(\a4/b7/Madd_A_sum_lut [0]),
    .O(\a4/b7/Madd_A_sum_cy [0])
  );
  XORCY   \a4/b8/Madd_n0023_Madd_Madd_xor<7>  (
    .CI(\a4/b8/Madd_n0023_Madd_Madd_cy [6]),
    .LI(\a4/b8/Madd_n0023_Madd_Madd_lut [7]),
    .O(\a4/b8/n0023 [7])
  );
  XORCY   \a4/b8/Madd_n0023_Madd_Madd_xor<6>  (
    .CI(\a4/b8/Madd_n0023_Madd_Madd_cy [5]),
    .LI(\a4/b8/Madd_n0023_Madd_Madd_lut [6]),
    .O(\a4/b8/n0023 [6])
  );
  MUXCY   \a4/b8/Madd_n0023_Madd_Madd_cy<6>  (
    .CI(\a4/b8/Madd_n0023_Madd_Madd_cy [5]),
    .DI(\a4/temp_A8 [6]),
    .S(\a4/b8/Madd_n0023_Madd_Madd_lut [6]),
    .O(\a4/b8/Madd_n0023_Madd_Madd_cy [6])
  );
  XORCY   \a4/b8/Madd_n0023_Madd_Madd_xor<5>  (
    .CI(\a4/b8/Madd_n0023_Madd_Madd_cy [4]),
    .LI(\a4/b8/Madd_n0023_Madd_Madd_lut [5]),
    .O(\a4/b8/n0023 [5])
  );
  MUXCY   \a4/b8/Madd_n0023_Madd_Madd_cy<5>  (
    .CI(\a4/b8/Madd_n0023_Madd_Madd_cy [4]),
    .DI(\a4/temp_A8 [5]),
    .S(\a4/b8/Madd_n0023_Madd_Madd_lut [5]),
    .O(\a4/b8/Madd_n0023_Madd_Madd_cy [5])
  );
  XORCY   \a4/b8/Madd_n0023_Madd_Madd_xor<4>  (
    .CI(\a4/b8/Madd_n0023_Madd_Madd_cy [3]),
    .LI(\a4/b8/Madd_n0023_Madd_Madd_lut [4]),
    .O(\a4/b8/n0023 [4])
  );
  MUXCY   \a4/b8/Madd_n0023_Madd_Madd_cy<4>  (
    .CI(\a4/b8/Madd_n0023_Madd_Madd_cy [3]),
    .DI(\a4/temp_A8 [4]),
    .S(\a4/b8/Madd_n0023_Madd_Madd_lut [4]),
    .O(\a4/b8/Madd_n0023_Madd_Madd_cy [4])
  );
  XORCY   \a4/b8/Madd_n0023_Madd_Madd_xor<3>  (
    .CI(\a4/b8/Madd_n0023_Madd_Madd_cy [2]),
    .LI(\a4/b8/Madd_n0023_Madd_Madd_lut [3]),
    .O(\a4/b8/n0023 [3])
  );
  MUXCY   \a4/b8/Madd_n0023_Madd_Madd_cy<3>  (
    .CI(\a4/b8/Madd_n0023_Madd_Madd_cy [2]),
    .DI(\a4/temp_A8 [3]),
    .S(\a4/b8/Madd_n0023_Madd_Madd_lut [3]),
    .O(\a4/b8/Madd_n0023_Madd_Madd_cy [3])
  );
  XORCY   \a4/b8/Madd_n0023_Madd_Madd_xor<2>  (
    .CI(\a4/b8/Madd_n0023_Madd_Madd_cy [1]),
    .LI(\a4/b8/Madd_n0023_Madd_Madd_lut [2]),
    .O(\a4/b8/n0023 [2])
  );
  MUXCY   \a4/b8/Madd_n0023_Madd_Madd_cy<2>  (
    .CI(\a4/b8/Madd_n0023_Madd_Madd_cy [1]),
    .DI(\a4/temp_A8 [2]),
    .S(\a4/b8/Madd_n0023_Madd_Madd_lut [2]),
    .O(\a4/b8/Madd_n0023_Madd_Madd_cy [2])
  );
  XORCY   \a4/b8/Madd_n0023_Madd_Madd_xor<1>  (
    .CI(\a4/b8/Madd_n0023_Madd_Madd_cy [0]),
    .LI(\a4/b8/Madd_n0023_Madd_Madd_lut [1]),
    .O(\a4/b8/n0023 [1])
  );
  MUXCY   \a4/b8/Madd_n0023_Madd_Madd_cy<1>  (
    .CI(\a4/b8/Madd_n0023_Madd_Madd_cy [0]),
    .DI(\a4/temp_A8 [1]),
    .S(\a4/b8/Madd_n0023_Madd_Madd_lut [1]),
    .O(\a4/b8/Madd_n0023_Madd_Madd_cy [1])
  );
  XORCY   \a4/b8/Madd_n0023_Madd_Madd_xor<0>  (
    .CI(N0),
    .LI(\a4/b8/Madd_n0023_Madd_Madd_lut [0]),
    .O(\a4/b8/n0023 [0])
  );
  MUXCY   \a4/b8/Madd_n0023_Madd_Madd_cy<0>  (
    .CI(N0),
    .DI(\a4/temp_A8 [0]),
    .S(\a4/b8/Madd_n0023_Madd_Madd_lut [0]),
    .O(\a4/b8/Madd_n0023_Madd_Madd_cy [0])
  );
  XORCY   \a4/b8/Madd_A_sum_xor<7>  (
    .CI(\a4/b8/Madd_A_sum_cy [6]),
    .LI(\a4/b8/Madd_A_sum_lut [7]),
    .O(\a4/b8/A_sum [7])
  );
  XORCY   \a4/b8/Madd_A_sum_xor<6>  (
    .CI(\a4/b8/Madd_A_sum_cy [5]),
    .LI(\a4/b8/Madd_A_sum_lut [6]),
    .O(\a4/b8/A_sum [6])
  );
  MUXCY   \a4/b8/Madd_A_sum_cy<6>  (
    .CI(\a4/b8/Madd_A_sum_cy [5]),
    .DI(\a4/temp_A8 [6]),
    .S(\a4/b8/Madd_A_sum_lut [6]),
    .O(\a4/b8/Madd_A_sum_cy [6])
  );
  XORCY   \a4/b8/Madd_A_sum_xor<5>  (
    .CI(\a4/b8/Madd_A_sum_cy [4]),
    .LI(\a4/b8/Madd_A_sum_lut [5]),
    .O(\a4/b8/A_sum [5])
  );
  MUXCY   \a4/b8/Madd_A_sum_cy<5>  (
    .CI(\a4/b8/Madd_A_sum_cy [4]),
    .DI(\a4/temp_A8 [5]),
    .S(\a4/b8/Madd_A_sum_lut [5]),
    .O(\a4/b8/Madd_A_sum_cy [5])
  );
  XORCY   \a4/b8/Madd_A_sum_xor<4>  (
    .CI(\a4/b8/Madd_A_sum_cy [3]),
    .LI(\a4/b8/Madd_A_sum_lut [4]),
    .O(\a4/b8/A_sum [4])
  );
  MUXCY   \a4/b8/Madd_A_sum_cy<4>  (
    .CI(\a4/b8/Madd_A_sum_cy [3]),
    .DI(\a4/temp_A8 [4]),
    .S(\a4/b8/Madd_A_sum_lut [4]),
    .O(\a4/b8/Madd_A_sum_cy [4])
  );
  XORCY   \a4/b8/Madd_A_sum_xor<3>  (
    .CI(\a4/b8/Madd_A_sum_cy [2]),
    .LI(\a4/b8/Madd_A_sum_lut [3]),
    .O(\a4/b8/A_sum [3])
  );
  MUXCY   \a4/b8/Madd_A_sum_cy<3>  (
    .CI(\a4/b8/Madd_A_sum_cy [2]),
    .DI(\a4/temp_A8 [3]),
    .S(\a4/b8/Madd_A_sum_lut [3]),
    .O(\a4/b8/Madd_A_sum_cy [3])
  );
  XORCY   \a4/b8/Madd_A_sum_xor<2>  (
    .CI(\a4/b8/Madd_A_sum_cy [1]),
    .LI(\a4/b8/Madd_A_sum_lut [2]),
    .O(\a4/b8/A_sum [2])
  );
  MUXCY   \a4/b8/Madd_A_sum_cy<2>  (
    .CI(\a4/b8/Madd_A_sum_cy [1]),
    .DI(\a4/temp_A8 [2]),
    .S(\a4/b8/Madd_A_sum_lut [2]),
    .O(\a4/b8/Madd_A_sum_cy [2])
  );
  XORCY   \a4/b8/Madd_A_sum_xor<1>  (
    .CI(\a4/b8/Madd_A_sum_cy [0]),
    .LI(\a4/b8/Madd_A_sum_lut [1]),
    .O(\a4/b8/A_sum [1])
  );
  MUXCY   \a4/b8/Madd_A_sum_cy<1>  (
    .CI(\a4/b8/Madd_A_sum_cy [0]),
    .DI(\a4/temp_A8 [1]),
    .S(\a4/b8/Madd_A_sum_lut [1]),
    .O(\a4/b8/Madd_A_sum_cy [1])
  );
  XORCY   \a4/b8/Madd_A_sum_xor<0>  (
    .CI(\a4/b1/Madd_A_sum_cy [0]),
    .LI(\a4/b8/Madd_A_sum_lut [0]),
    .O(\a4/b8/A_sum [0])
  );
  MUXCY   \a4/b8/Madd_A_sum_cy<0>  (
    .CI(\a4/b1/Madd_A_sum_cy [0]),
    .DI(\a4/temp_A8 [0]),
    .S(\a4/b8/Madd_A_sum_lut [0]),
    .O(\a4/b8/Madd_A_sum_cy [0])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  Mmux_product71 (
    .I0(result_wire4[14]),
    .I1(opcode_1_IBUF_8),
    .I2(opcode_0_IBUF_9),
    .O(product_14_OBUF_21)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  Mmux_product17 (
    .I0(opcode_1_IBUF_8),
    .I1(opcode_0_IBUF_9),
    .I2(\a4/b1/n0023 [0]),
    .I3(intop1_0_IBUF_89),
    .O(product_0_OBUF_35)
  );
  LUT5 #(
    .INIT ( 32'h11101000 ))
  Mmux_carry11 (
    .I0(opcode_0_IBUF_9),
    .I1(opcode_1_IBUF_8),
    .I2(\a3/c_temp[6] ),
    .I3(intop1_7_IBUF_41),
    .I4(intop2_7_IBUF_0),
    .O(carry_OBUF_11)
  );
  LUT5 #(
    .INIT ( 32'h00668886 ))
  Mmux_result81 (
    .I0(intop1_7_IBUF_41),
    .I1(intop2_7_IBUF_0),
    .I2(\a3/c_temp[6] ),
    .I3(opcode_0_IBUF_9),
    .I4(opcode_1_IBUF_8),
    .O(result_7_OBUF_13)
  );
  LUT6 #(
    .INIT ( 64'h9F99068066E60680 ))
  Mmux_result61 (
    .I0(intop2_5_IBUF_2),
    .I1(intop1_5_IBUF_49),
    .I2(opcode_0_IBUF_9),
    .I3(opcode_1_IBUF_8),
    .I4(Mmux_result22),
    .I5(\a3/c_temp[4] ),
    .O(result_5_OBUF_15)
  );
  LUT6 #(
    .INIT ( 64'h9F99068066E60680 ))
  Mmux_result41 (
    .I0(intop2_3_IBUF_4),
    .I1(intop1_3_IBUF_65),
    .I2(opcode_0_IBUF_9),
    .I3(opcode_1_IBUF_8),
    .I4(Mmux_result22),
    .I5(\a3/c_temp[2] ),
    .O(result_3_OBUF_17)
  );
  LUT5 #(
    .INIT ( 32'h01000010 ))
  Mmux_overflow11 (
    .I0(opcode_0_IBUF_9),
    .I1(opcode_1_IBUF_8),
    .I2(\a3/c_temp[6] ),
    .I3(intop1_7_IBUF_41),
    .I4(intop2_7_IBUF_0),
    .O(overflow_OBUF_12)
  );
  LUT5 #(
    .INIT ( 32'h10111101 ))
  Mmux_result221 (
    .I0(opcode_0_IBUF_9),
    .I1(opcode_1_IBUF_8),
    .I2(\a3/c_temp[6] ),
    .I3(intop1_7_IBUF_41),
    .I4(intop2_7_IBUF_0),
    .O(Mmux_result22)
  );
  LUT6 #(
    .INIT ( 64'hEEE8E888E888E888 ))
  \a3/f3/c_out1  (
    .I0(intop1_2_IBUF_73),
    .I1(intop2_2_IBUF_5),
    .I2(intop1_1_IBUF_81),
    .I3(intop2_1_IBUF_6),
    .I4(intop1_0_IBUF_89),
    .I5(intop2_0_IBUF_7),
    .O(\a3/c_temp[2] )
  );
  LUT5 #(
    .INIT ( 32'hEEE8E888 ))
  \a3/f5/c_out1  (
    .I0(intop1_4_IBUF_57),
    .I1(intop2_4_IBUF_3),
    .I2(intop1_3_IBUF_65),
    .I3(intop2_3_IBUF_4),
    .I4(\a3/c_temp[2] ),
    .O(\a3/c_temp[4] )
  );
  LUT5 #(
    .INIT ( 32'hEEE8E888 ))
  \a3/f7/c_out1  (
    .I0(intop1_6_IBUF_40),
    .I1(intop2_6_IBUF_1),
    .I2(intop1_5_IBUF_49),
    .I3(intop2_5_IBUF_2),
    .I4(\a3/c_temp[4] ),
    .O(\a3/c_temp[6] )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \a4/b1/Mmux_A_temp11  (
    .I0(\a4/b1/n0023 [1]),
    .I1(intop1_0_IBUF_89),
    .O(\a4/temp_A2 [0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \a4/b1/Mmux_A_temp21  (
    .I0(\a4/b1/n0023 [2]),
    .I1(intop1_0_IBUF_89),
    .O(\a4/temp_A2 [1])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \a4/b1/Mmux_A_temp31  (
    .I0(\a4/b1/n0023 [3]),
    .I1(intop1_0_IBUF_89),
    .O(\a4/temp_A2 [2])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \a4/b1/Mmux_A_temp41  (
    .I0(\a4/b1/n0023 [4]),
    .I1(intop1_0_IBUF_89),
    .O(\a4/temp_A2 [3])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \a4/b1/Mmux_A_temp51  (
    .I0(\a4/b1/n0023 [5]),
    .I1(intop1_0_IBUF_89),
    .O(\a4/temp_A2 [4])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \a4/b1/Mmux_A_temp61  (
    .I0(\a4/b1/n0023 [6]),
    .I1(intop1_0_IBUF_89),
    .O(\a4/temp_A2 [5])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \a4/b1/A_temp<7>1  (
    .I0(\a4/b1/n0023 [7]),
    .I1(intop1_0_IBUF_89),
    .O(\a4/temp_A2 [6])
  );
  LUT5 #(
    .INIT ( 32'hF6D4B290 ))
  \a4/b3/Mmux_A_temp11  (
    .I0(intop1_1_IBUF_81),
    .I1(intop1_2_IBUF_73),
    .I2(\a4/temp_A3 [1]),
    .I3(\a4/b3/A_sum [1]),
    .I4(\a4/b3/n0023 [1]),
    .O(\a4/temp_A4 [0])
  );
  LUT5 #(
    .INIT ( 32'hF6D4B290 ))
  \a4/b3/Mmux_A_temp21  (
    .I0(intop1_1_IBUF_81),
    .I1(intop1_2_IBUF_73),
    .I2(\a4/temp_A3 [2]),
    .I3(\a4/b3/A_sum [2]),
    .I4(\a4/b3/n0023 [2]),
    .O(\a4/temp_A4 [1])
  );
  LUT5 #(
    .INIT ( 32'hF6D4B290 ))
  \a4/b3/Mmux_A_temp31  (
    .I0(intop1_1_IBUF_81),
    .I1(intop1_2_IBUF_73),
    .I2(\a4/temp_A3 [3]),
    .I3(\a4/b3/A_sum [3]),
    .I4(\a4/b3/n0023 [3]),
    .O(\a4/temp_A4 [2])
  );
  LUT5 #(
    .INIT ( 32'hF6D4B290 ))
  \a4/b3/Mmux_A_temp41  (
    .I0(intop1_1_IBUF_81),
    .I1(intop1_2_IBUF_73),
    .I2(\a4/temp_A3 [4]),
    .I3(\a4/b3/A_sum [4]),
    .I4(\a4/b3/n0023 [4]),
    .O(\a4/temp_A4 [3])
  );
  LUT5 #(
    .INIT ( 32'hF6D4B290 ))
  \a4/b3/Mmux_A_temp51  (
    .I0(intop1_1_IBUF_81),
    .I1(intop1_2_IBUF_73),
    .I2(\a4/temp_A3 [5]),
    .I3(\a4/b3/A_sum [5]),
    .I4(\a4/b3/n0023 [5]),
    .O(\a4/temp_A4 [4])
  );
  LUT5 #(
    .INIT ( 32'hF6D4B290 ))
  \a4/b3/Mmux_A_temp61  (
    .I0(intop1_1_IBUF_81),
    .I1(intop1_2_IBUF_73),
    .I2(\a4/temp_A3 [6]),
    .I3(\a4/b3/A_sum [6]),
    .I4(\a4/b3/n0023 [6]),
    .O(\a4/temp_A4 [5])
  );
  LUT5 #(
    .INIT ( 32'hF6D4B290 ))
  \a4/b3/A_temp<7>1  (
    .I0(intop1_1_IBUF_81),
    .I1(intop1_2_IBUF_73),
    .I2(\a4/temp_A3 [6]),
    .I3(\a4/b3/A_sum [7]),
    .I4(\a4/b3/n0023 [7]),
    .O(\a4/temp_A4 [6])
  );
  LUT5 #(
    .INIT ( 32'hF6D4B290 ))
  \a4/b4/Mmux_A_temp11  (
    .I0(intop1_2_IBUF_73),
    .I1(intop1_3_IBUF_65),
    .I2(\a4/temp_A4 [1]),
    .I3(\a4/b4/A_sum [1]),
    .I4(\a4/b4/n0023 [1]),
    .O(\a4/temp_A5 [0])
  );
  LUT5 #(
    .INIT ( 32'hF6D4B290 ))
  \a4/b4/Mmux_A_temp21  (
    .I0(intop1_2_IBUF_73),
    .I1(intop1_3_IBUF_65),
    .I2(\a4/temp_A4 [2]),
    .I3(\a4/b4/A_sum [2]),
    .I4(\a4/b4/n0023 [2]),
    .O(\a4/temp_A5 [1])
  );
  LUT5 #(
    .INIT ( 32'hF6D4B290 ))
  \a4/b4/Mmux_A_temp31  (
    .I0(intop1_2_IBUF_73),
    .I1(intop1_3_IBUF_65),
    .I2(\a4/temp_A4 [3]),
    .I3(\a4/b4/A_sum [3]),
    .I4(\a4/b4/n0023 [3]),
    .O(\a4/temp_A5 [2])
  );
  LUT5 #(
    .INIT ( 32'hF6D4B290 ))
  \a4/b4/Mmux_A_temp41  (
    .I0(intop1_2_IBUF_73),
    .I1(intop1_3_IBUF_65),
    .I2(\a4/temp_A4 [4]),
    .I3(\a4/b4/A_sum [4]),
    .I4(\a4/b4/n0023 [4]),
    .O(\a4/temp_A5 [3])
  );
  LUT5 #(
    .INIT ( 32'hF6D4B290 ))
  \a4/b4/Mmux_A_temp51  (
    .I0(intop1_2_IBUF_73),
    .I1(intop1_3_IBUF_65),
    .I2(\a4/temp_A4 [5]),
    .I3(\a4/b4/A_sum [5]),
    .I4(\a4/b4/n0023 [5]),
    .O(\a4/temp_A5 [4])
  );
  LUT5 #(
    .INIT ( 32'hF6D4B290 ))
  \a4/b4/Mmux_A_temp61  (
    .I0(intop1_2_IBUF_73),
    .I1(intop1_3_IBUF_65),
    .I2(\a4/temp_A4 [6]),
    .I3(\a4/b4/A_sum [6]),
    .I4(\a4/b4/n0023 [6]),
    .O(\a4/temp_A5 [5])
  );
  LUT5 #(
    .INIT ( 32'hF6D4B290 ))
  \a4/b4/A_temp<7>1  (
    .I0(intop1_2_IBUF_73),
    .I1(intop1_3_IBUF_65),
    .I2(\a4/temp_A4 [6]),
    .I3(\a4/b4/A_sum [7]),
    .I4(\a4/b4/n0023 [7]),
    .O(\a4/temp_A5 [6])
  );
  LUT5 #(
    .INIT ( 32'hF6D4B290 ))
  \a4/b5/Mmux_A_temp11  (
    .I0(intop1_3_IBUF_65),
    .I1(intop1_4_IBUF_57),
    .I2(\a4/temp_A5 [1]),
    .I3(\a4/b5/A_sum [1]),
    .I4(\a4/b5/n0023 [1]),
    .O(\a4/temp_A6 [0])
  );
  LUT5 #(
    .INIT ( 32'hF6D4B290 ))
  \a4/b5/Mmux_A_temp21  (
    .I0(intop1_3_IBUF_65),
    .I1(intop1_4_IBUF_57),
    .I2(\a4/temp_A5 [2]),
    .I3(\a4/b5/A_sum [2]),
    .I4(\a4/b5/n0023 [2]),
    .O(\a4/temp_A6 [1])
  );
  LUT5 #(
    .INIT ( 32'hF6D4B290 ))
  \a4/b5/Mmux_A_temp31  (
    .I0(intop1_3_IBUF_65),
    .I1(intop1_4_IBUF_57),
    .I2(\a4/temp_A5 [3]),
    .I3(\a4/b5/A_sum [3]),
    .I4(\a4/b5/n0023 [3]),
    .O(\a4/temp_A6 [2])
  );
  LUT5 #(
    .INIT ( 32'hF6D4B290 ))
  \a4/b5/Mmux_A_temp41  (
    .I0(intop1_3_IBUF_65),
    .I1(intop1_4_IBUF_57),
    .I2(\a4/temp_A5 [4]),
    .I3(\a4/b5/A_sum [4]),
    .I4(\a4/b5/n0023 [4]),
    .O(\a4/temp_A6 [3])
  );
  LUT5 #(
    .INIT ( 32'hF6D4B290 ))
  \a4/b5/Mmux_A_temp51  (
    .I0(intop1_3_IBUF_65),
    .I1(intop1_4_IBUF_57),
    .I2(\a4/temp_A5 [5]),
    .I3(\a4/b5/A_sum [5]),
    .I4(\a4/b5/n0023 [5]),
    .O(\a4/temp_A6 [4])
  );
  LUT5 #(
    .INIT ( 32'hF6D4B290 ))
  \a4/b5/Mmux_A_temp61  (
    .I0(intop1_3_IBUF_65),
    .I1(intop1_4_IBUF_57),
    .I2(\a4/temp_A5 [6]),
    .I3(\a4/b5/A_sum [6]),
    .I4(\a4/b5/n0023 [6]),
    .O(\a4/temp_A6 [5])
  );
  LUT5 #(
    .INIT ( 32'hF6D4B290 ))
  \a4/b5/A_temp<7>1  (
    .I0(intop1_3_IBUF_65),
    .I1(intop1_4_IBUF_57),
    .I2(\a4/temp_A5 [6]),
    .I3(\a4/b5/A_sum [7]),
    .I4(\a4/b5/n0023 [7]),
    .O(\a4/temp_A6 [6])
  );
  LUT5 #(
    .INIT ( 32'hF6D4B290 ))
  \a4/b6/Mmux_A_temp11  (
    .I0(intop1_4_IBUF_57),
    .I1(intop1_5_IBUF_49),
    .I2(\a4/temp_A6 [1]),
    .I3(\a4/b6/A_sum [1]),
    .I4(\a4/b6/n0023 [1]),
    .O(\a4/temp_A7 [0])
  );
  LUT5 #(
    .INIT ( 32'hF6D4B290 ))
  \a4/b6/Mmux_A_temp21  (
    .I0(intop1_4_IBUF_57),
    .I1(intop1_5_IBUF_49),
    .I2(\a4/temp_A6 [2]),
    .I3(\a4/b6/A_sum [2]),
    .I4(\a4/b6/n0023 [2]),
    .O(\a4/temp_A7 [1])
  );
  LUT5 #(
    .INIT ( 32'hF6D4B290 ))
  \a4/b6/Mmux_A_temp31  (
    .I0(intop1_4_IBUF_57),
    .I1(intop1_5_IBUF_49),
    .I2(\a4/temp_A6 [3]),
    .I3(\a4/b6/A_sum [3]),
    .I4(\a4/b6/n0023 [3]),
    .O(\a4/temp_A7 [2])
  );
  LUT5 #(
    .INIT ( 32'hF6D4B290 ))
  \a4/b6/Mmux_A_temp41  (
    .I0(intop1_4_IBUF_57),
    .I1(intop1_5_IBUF_49),
    .I2(\a4/temp_A6 [4]),
    .I3(\a4/b6/A_sum [4]),
    .I4(\a4/b6/n0023 [4]),
    .O(\a4/temp_A7 [3])
  );
  LUT5 #(
    .INIT ( 32'hF6D4B290 ))
  \a4/b6/Mmux_A_temp51  (
    .I0(intop1_4_IBUF_57),
    .I1(intop1_5_IBUF_49),
    .I2(\a4/temp_A6 [5]),
    .I3(\a4/b6/A_sum [5]),
    .I4(\a4/b6/n0023 [5]),
    .O(\a4/temp_A7 [4])
  );
  LUT5 #(
    .INIT ( 32'hF6D4B290 ))
  \a4/b6/Mmux_A_temp61  (
    .I0(intop1_4_IBUF_57),
    .I1(intop1_5_IBUF_49),
    .I2(\a4/temp_A6 [6]),
    .I3(\a4/b6/A_sum [6]),
    .I4(\a4/b6/n0023 [6]),
    .O(\a4/temp_A7 [5])
  );
  LUT5 #(
    .INIT ( 32'hF6D4B290 ))
  \a4/b6/A_temp<7>1  (
    .I0(intop1_4_IBUF_57),
    .I1(intop1_5_IBUF_49),
    .I2(\a4/temp_A6 [6]),
    .I3(\a4/b6/A_sum [7]),
    .I4(\a4/b6/n0023 [7]),
    .O(\a4/temp_A7 [6])
  );
  LUT5 #(
    .INIT ( 32'hF6D4B290 ))
  \a4/b7/Mmux_A_temp11  (
    .I0(intop1_5_IBUF_49),
    .I1(intop1_6_IBUF_40),
    .I2(\a4/temp_A7 [1]),
    .I3(\a4/b7/A_sum [1]),
    .I4(\a4/b7/n0023 [1]),
    .O(\a4/temp_A8 [0])
  );
  LUT5 #(
    .INIT ( 32'hF6D4B290 ))
  \a4/b7/Mmux_A_temp21  (
    .I0(intop1_5_IBUF_49),
    .I1(intop1_6_IBUF_40),
    .I2(\a4/temp_A7 [2]),
    .I3(\a4/b7/A_sum [2]),
    .I4(\a4/b7/n0023 [2]),
    .O(\a4/temp_A8 [1])
  );
  LUT5 #(
    .INIT ( 32'hF6D4B290 ))
  \a4/b7/Mmux_A_temp31  (
    .I0(intop1_5_IBUF_49),
    .I1(intop1_6_IBUF_40),
    .I2(\a4/temp_A7 [3]),
    .I3(\a4/b7/A_sum [3]),
    .I4(\a4/b7/n0023 [3]),
    .O(\a4/temp_A8 [2])
  );
  LUT5 #(
    .INIT ( 32'hF6D4B290 ))
  \a4/b7/Mmux_A_temp41  (
    .I0(intop1_5_IBUF_49),
    .I1(intop1_6_IBUF_40),
    .I2(\a4/temp_A7 [4]),
    .I3(\a4/b7/A_sum [4]),
    .I4(\a4/b7/n0023 [4]),
    .O(\a4/temp_A8 [3])
  );
  LUT5 #(
    .INIT ( 32'hF6D4B290 ))
  \a4/b7/Mmux_A_temp51  (
    .I0(intop1_5_IBUF_49),
    .I1(intop1_6_IBUF_40),
    .I2(\a4/temp_A7 [5]),
    .I3(\a4/b7/A_sum [5]),
    .I4(\a4/b7/n0023 [5]),
    .O(\a4/temp_A8 [4])
  );
  LUT5 #(
    .INIT ( 32'hF6D4B290 ))
  \a4/b7/Mmux_A_temp61  (
    .I0(intop1_5_IBUF_49),
    .I1(intop1_6_IBUF_40),
    .I2(\a4/temp_A7 [6]),
    .I3(\a4/b7/A_sum [6]),
    .I4(\a4/b7/n0023 [6]),
    .O(\a4/temp_A8 [5])
  );
  LUT5 #(
    .INIT ( 32'hF6D4B290 ))
  \a4/b7/A_temp<7>1  (
    .I0(intop1_5_IBUF_49),
    .I1(intop1_6_IBUF_40),
    .I2(\a4/temp_A7 [6]),
    .I3(\a4/b7/A_sum [7]),
    .I4(\a4/b7/n0023 [7]),
    .O(\a4/temp_A8 [6])
  );
  LUT5 #(
    .INIT ( 32'hF6D4B290 ))
  \a4/b8/A_temp<7>1  (
    .I0(intop1_6_IBUF_40),
    .I1(intop1_7_IBUF_41),
    .I2(\a4/temp_A8 [6]),
    .I3(\a4/b8/A_sum [7]),
    .I4(\a4/b8/n0023 [7]),
    .O(result_wire4[14])
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  Mmux_product16_SW0 (
    .I0(opcode_1_IBUF_8),
    .I1(opcode_0_IBUF_9),
    .O(N01)
  );
  LUT6 #(
    .INIT ( 64'h4554405445044004 ))
  Mmux_product16 (
    .I0(N01),
    .I1(\a4/temp_A8 [2]),
    .I2(intop1_7_IBUF_41),
    .I3(intop1_6_IBUF_40),
    .I4(\a4/b8/A_sum [2]),
    .I5(\a4/b8/n0023 [2]),
    .O(product_9_OBUF_26)
  );
  LUT6 #(
    .INIT ( 64'h4554405445044004 ))
  Mmux_product15 (
    .I0(N01),
    .I1(\a4/temp_A8 [1]),
    .I2(intop1_7_IBUF_41),
    .I3(intop1_6_IBUF_40),
    .I4(\a4/b8/A_sum [1]),
    .I5(\a4/b8/n0023 [1]),
    .O(product_8_OBUF_27)
  );
  LUT6 #(
    .INIT ( 64'h4554405445044004 ))
  Mmux_product14 (
    .I0(N01),
    .I1(\a4/temp_A8 [0]),
    .I2(intop1_7_IBUF_41),
    .I3(intop1_6_IBUF_40),
    .I4(\a4/b8/A_sum [0]),
    .I5(\a4/b8/n0023 [0]),
    .O(product_7_OBUF_28)
  );
  LUT6 #(
    .INIT ( 64'h4554405445044004 ))
  Mmux_product13 (
    .I0(N01),
    .I1(\a4/temp_A7 [0]),
    .I2(intop1_6_IBUF_40),
    .I3(intop1_5_IBUF_49),
    .I4(\a4/b7/A_sum [0]),
    .I5(\a4/b7/n0023 [0]),
    .O(product_6_OBUF_29)
  );
  LUT6 #(
    .INIT ( 64'h4554405445044004 ))
  Mmux_product12 (
    .I0(N01),
    .I1(\a4/temp_A6 [0]),
    .I2(intop1_5_IBUF_49),
    .I3(intop1_4_IBUF_57),
    .I4(\a4/b6/A_sum [0]),
    .I5(\a4/b6/n0023 [0]),
    .O(product_5_OBUF_30)
  );
  LUT6 #(
    .INIT ( 64'h4554405445044004 ))
  Mmux_product11 (
    .I0(N01),
    .I1(\a4/temp_A5 [0]),
    .I2(intop1_4_IBUF_57),
    .I3(intop1_3_IBUF_65),
    .I4(\a4/b5/A_sum [0]),
    .I5(\a4/b5/n0023 [0]),
    .O(product_4_OBUF_31)
  );
  LUT6 #(
    .INIT ( 64'h4554405445044004 ))
  Mmux_product10 (
    .I0(N01),
    .I1(\a4/temp_A4 [0]),
    .I2(intop1_3_IBUF_65),
    .I3(intop1_2_IBUF_73),
    .I4(\a4/b4/A_sum [0]),
    .I5(\a4/b4/n0023 [0]),
    .O(product_3_OBUF_32)
  );
  LUT6 #(
    .INIT ( 64'h4554405445044004 ))
  Mmux_product9 (
    .I0(N01),
    .I1(\a4/temp_A3 [0]),
    .I2(intop1_2_IBUF_73),
    .I3(intop1_1_IBUF_81),
    .I4(\a4/b3/A_sum [0]),
    .I5(\a4/b3/n0023 [0]),
    .O(product_2_OBUF_33)
  );
  LUT6 #(
    .INIT ( 64'h4554405445044004 ))
  Mmux_product5 (
    .I0(N01),
    .I1(\a4/temp_A8 [6]),
    .I2(intop1_7_IBUF_41),
    .I3(intop1_6_IBUF_40),
    .I4(\a4/b8/A_sum [6]),
    .I5(\a4/b8/n0023 [6]),
    .O(product_13_OBUF_22)
  );
  LUT6 #(
    .INIT ( 64'h4554405445044004 ))
  Mmux_product4 (
    .I0(N01),
    .I1(\a4/temp_A8 [5]),
    .I2(intop1_7_IBUF_41),
    .I3(intop1_6_IBUF_40),
    .I4(\a4/b8/A_sum [5]),
    .I5(\a4/b8/n0023 [5]),
    .O(product_12_OBUF_23)
  );
  LUT6 #(
    .INIT ( 64'h4554405445044004 ))
  Mmux_product3 (
    .I0(N01),
    .I1(\a4/temp_A8 [4]),
    .I2(intop1_7_IBUF_41),
    .I3(intop1_6_IBUF_40),
    .I4(\a4/b8/A_sum [4]),
    .I5(\a4/b8/n0023 [4]),
    .O(product_11_OBUF_24)
  );
  LUT6 #(
    .INIT ( 64'h4554405445044004 ))
  Mmux_product2 (
    .I0(N01),
    .I1(\a4/temp_A8 [3]),
    .I2(intop1_7_IBUF_41),
    .I3(intop1_6_IBUF_40),
    .I4(\a4/b8/A_sum [3]),
    .I5(\a4/b8/n0023 [3]),
    .O(product_10_OBUF_25)
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  Mmux_result2_SW0 (
    .I0(intop2_0_IBUF_7),
    .I1(intop1_0_IBUF_89),
    .O(N26)
  );
  LUT6 #(
    .INIT ( 64'h2882E8C23CBE2882 ))
  Mmux_result2 (
    .I0(Mmux_result22),
    .I1(intop2_1_IBUF_6),
    .I2(intop1_1_IBUF_81),
    .I3(N26),
    .I4(opcode_1_IBUF_8),
    .I5(opcode_0_IBUF_9),
    .O(result_1_OBUF_19)
  );
  LUT4 #(
    .INIT ( 16'hFFBD ))
  Mmux_result11 (
    .I0(\a3/c_temp[6] ),
    .I1(intop2_7_IBUF_0),
    .I2(intop1_7_IBUF_41),
    .I3(opcode_1_IBUF_8),
    .O(Mmux_result1)
  );
  LUT5 #(
    .INIT ( 32'h0220C220 ))
  Mmux_result12 (
    .I0(Mmux_result1),
    .I1(opcode_0_IBUF_9),
    .I2(intop2_0_IBUF_7),
    .I3(intop1_0_IBUF_89),
    .I4(opcode_1_IBUF_8),
    .O(result_0_OBUF_20)
  );
  LUT4 #(
    .INIT ( 16'h175F ))
  Mmux_result3_SW0 (
    .I0(intop2_1_IBUF_6),
    .I1(intop2_0_IBUF_7),
    .I2(intop1_1_IBUF_81),
    .I3(intop1_0_IBUF_89),
    .O(N28)
  );
  LUT6 #(
    .INIT ( 64'h2882E8C23CBE2882 ))
  Mmux_result3 (
    .I0(Mmux_result22),
    .I1(intop2_2_IBUF_5),
    .I2(intop1_2_IBUF_73),
    .I3(N28),
    .I4(opcode_1_IBUF_8),
    .I5(opcode_0_IBUF_9),
    .O(result_2_OBUF_18)
  );
  LUT3 #(
    .INIT ( 8'h17 ))
  Mmux_result5_SW0 (
    .I0(\a3/c_temp[2] ),
    .I1(intop2_3_IBUF_4),
    .I2(intop1_3_IBUF_65),
    .O(N30)
  );
  LUT6 #(
    .INIT ( 64'h2882E8C23CBE2882 ))
  Mmux_result5 (
    .I0(Mmux_result22),
    .I1(intop2_4_IBUF_3),
    .I2(intop1_4_IBUF_57),
    .I3(N30),
    .I4(opcode_1_IBUF_8),
    .I5(opcode_0_IBUF_9),
    .O(result_4_OBUF_16)
  );
  LUT3 #(
    .INIT ( 8'h17 ))
  Mmux_result7_SW0 (
    .I0(\a3/c_temp[4] ),
    .I1(intop2_5_IBUF_2),
    .I2(intop1_5_IBUF_49),
    .O(N32)
  );
  LUT6 #(
    .INIT ( 64'h2882E8C23CBE2882 ))
  Mmux_result7 (
    .I0(Mmux_result22),
    .I1(intop2_6_IBUF_1),
    .I2(intop1_6_IBUF_40),
    .I3(N32),
    .I4(opcode_1_IBUF_8),
    .I5(opcode_0_IBUF_9),
    .O(result_6_OBUF_14)
  );
  IBUF   intop1_7_IBUF (
    .I(intop1[7]),
    .O(intop1_7_IBUF_41)
  );
  IBUF   intop1_6_IBUF (
    .I(intop1[6]),
    .O(intop1_6_IBUF_40)
  );
  IBUF   intop1_5_IBUF (
    .I(intop1[5]),
    .O(intop1_5_IBUF_49)
  );
  IBUF   intop1_4_IBUF (
    .I(intop1[4]),
    .O(intop1_4_IBUF_57)
  );
  IBUF   intop1_3_IBUF (
    .I(intop1[3]),
    .O(intop1_3_IBUF_65)
  );
  IBUF   intop1_2_IBUF (
    .I(intop1[2]),
    .O(intop1_2_IBUF_73)
  );
  IBUF   intop1_1_IBUF (
    .I(intop1[1]),
    .O(intop1_1_IBUF_81)
  );
  IBUF   intop1_0_IBUF (
    .I(intop1[0]),
    .O(intop1_0_IBUF_89)
  );
  IBUF   intop2_7_IBUF (
    .I(intop2[7]),
    .O(intop2_7_IBUF_0)
  );
  IBUF   intop2_6_IBUF (
    .I(intop2[6]),
    .O(intop2_6_IBUF_1)
  );
  IBUF   intop2_5_IBUF (
    .I(intop2[5]),
    .O(intop2_5_IBUF_2)
  );
  IBUF   intop2_4_IBUF (
    .I(intop2[4]),
    .O(intop2_4_IBUF_3)
  );
  IBUF   intop2_3_IBUF (
    .I(intop2[3]),
    .O(intop2_3_IBUF_4)
  );
  IBUF   intop2_2_IBUF (
    .I(intop2[2]),
    .O(intop2_2_IBUF_5)
  );
  IBUF   intop2_1_IBUF (
    .I(intop2[1]),
    .O(intop2_1_IBUF_6)
  );
  IBUF   intop2_0_IBUF (
    .I(intop2[0]),
    .O(intop2_0_IBUF_7)
  );
  IBUF   opcode_1_IBUF (
    .I(opcode[1]),
    .O(opcode_1_IBUF_8)
  );
  IBUF   opcode_0_IBUF (
    .I(opcode[0]),
    .O(opcode_0_IBUF_9)
  );
  OBUF   result_7_OBUF (
    .I(result_7_OBUF_13),
    .O(result[7])
  );
  OBUF   result_6_OBUF (
    .I(result_6_OBUF_14),
    .O(result[6])
  );
  OBUF   result_5_OBUF (
    .I(result_5_OBUF_15),
    .O(result[5])
  );
  OBUF   result_4_OBUF (
    .I(result_4_OBUF_16),
    .O(result[4])
  );
  OBUF   result_3_OBUF (
    .I(result_3_OBUF_17),
    .O(result[3])
  );
  OBUF   result_2_OBUF (
    .I(result_2_OBUF_18),
    .O(result[2])
  );
  OBUF   result_1_OBUF (
    .I(result_1_OBUF_19),
    .O(result[1])
  );
  OBUF   result_0_OBUF (
    .I(result_0_OBUF_20),
    .O(result[0])
  );
  OBUF   product_15_OBUF (
    .I(product_14_OBUF_21),
    .O(product[15])
  );
  OBUF   product_14_OBUF (
    .I(product_14_OBUF_21),
    .O(product[14])
  );
  OBUF   product_13_OBUF (
    .I(product_13_OBUF_22),
    .O(product[13])
  );
  OBUF   product_12_OBUF (
    .I(product_12_OBUF_23),
    .O(product[12])
  );
  OBUF   product_11_OBUF (
    .I(product_11_OBUF_24),
    .O(product[11])
  );
  OBUF   product_10_OBUF (
    .I(product_10_OBUF_25),
    .O(product[10])
  );
  OBUF   product_9_OBUF (
    .I(product_9_OBUF_26),
    .O(product[9])
  );
  OBUF   product_8_OBUF (
    .I(product_8_OBUF_27),
    .O(product[8])
  );
  OBUF   product_7_OBUF (
    .I(product_7_OBUF_28),
    .O(product[7])
  );
  OBUF   product_6_OBUF (
    .I(product_6_OBUF_29),
    .O(product[6])
  );
  OBUF   product_5_OBUF (
    .I(product_5_OBUF_30),
    .O(product[5])
  );
  OBUF   product_4_OBUF (
    .I(product_4_OBUF_31),
    .O(product[4])
  );
  OBUF   product_3_OBUF (
    .I(product_3_OBUF_32),
    .O(product[3])
  );
  OBUF   product_2_OBUF (
    .I(product_2_OBUF_33),
    .O(product[2])
  );
  OBUF   product_1_OBUF (
    .I(product_1_OBUF_34),
    .O(product[1])
  );
  OBUF   product_0_OBUF (
    .I(product_0_OBUF_35),
    .O(product[0])
  );
  OBUF   overflow_OBUF (
    .I(overflow_OBUF_12),
    .O(overflow)
  );
  OBUF   carry_OBUF (
    .I(carry_OBUF_11),
    .O(carry)
  );
  LUT5 #(
    .INIT ( 32'hEC64A820 ))
  \a4/b2/Mmux_A_temp11  (
    .I0(intop1_0_IBUF_89),
    .I1(intop1_1_IBUF_81),
    .I2(\a4/b2/A_sum [1]),
    .I3(\a4/b1/n0023 [2]),
    .I4(\a4/b2/n0023 [1]),
    .O(\a4/temp_A3 [0])
  );
  LUT5 #(
    .INIT ( 32'hEC64A820 ))
  \a4/b2/Mmux_A_temp21  (
    .I0(intop1_0_IBUF_89),
    .I1(intop1_1_IBUF_81),
    .I2(\a4/b2/A_sum [2]),
    .I3(\a4/b1/n0023 [3]),
    .I4(\a4/b2/n0023 [2]),
    .O(\a4/temp_A3 [1])
  );
  LUT5 #(
    .INIT ( 32'hEC64A820 ))
  \a4/b2/Mmux_A_temp31  (
    .I0(intop1_0_IBUF_89),
    .I1(intop1_1_IBUF_81),
    .I2(\a4/b2/A_sum [3]),
    .I3(\a4/b1/n0023 [4]),
    .I4(\a4/b2/n0023 [3]),
    .O(\a4/temp_A3 [2])
  );
  LUT5 #(
    .INIT ( 32'hEC64A820 ))
  \a4/b2/Mmux_A_temp41  (
    .I0(intop1_0_IBUF_89),
    .I1(intop1_1_IBUF_81),
    .I2(\a4/b2/A_sum [4]),
    .I3(\a4/b1/n0023 [5]),
    .I4(\a4/b2/n0023 [4]),
    .O(\a4/temp_A3 [3])
  );
  LUT5 #(
    .INIT ( 32'hEC64A820 ))
  \a4/b2/Mmux_A_temp51  (
    .I0(intop1_0_IBUF_89),
    .I1(intop1_1_IBUF_81),
    .I2(\a4/b2/A_sum [5]),
    .I3(\a4/b1/n0023 [6]),
    .I4(\a4/b2/n0023 [5]),
    .O(\a4/temp_A3 [4])
  );
  LUT5 #(
    .INIT ( 32'hEC64A820 ))
  \a4/b2/Mmux_A_temp61  (
    .I0(intop1_0_IBUF_89),
    .I1(intop1_1_IBUF_81),
    .I2(\a4/b2/A_sum [6]),
    .I3(\a4/b1/n0023 [7]),
    .I4(\a4/b2/n0023 [6]),
    .O(\a4/temp_A3 [5])
  );
  LUT5 #(
    .INIT ( 32'hEC64A820 ))
  \a4/b2/A_temp<7>1  (
    .I0(intop1_0_IBUF_89),
    .I1(intop1_1_IBUF_81),
    .I2(\a4/b2/A_sum [7]),
    .I3(\a4/b1/n0023 [7]),
    .I4(\a4/b2/n0023 [7]),
    .O(\a4/temp_A3 [6])
  );
  LUT6 #(
    .INIT ( 64'h5450141044400400 ))
  Mmux_product8 (
    .I0(N01),
    .I1(intop1_0_IBUF_89),
    .I2(intop1_1_IBUF_81),
    .I3(\a4/b2/A_sum [0]),
    .I4(\a4/b1/n0023 [1]),
    .I5(\a4/b2/n0023 [0]),
    .O(product_1_OBUF_34)
  );
  LUT3 #(
    .INIT ( 8'h78 ))
  \a4/b2/Madd_A_sum_lut<7>  (
    .I0(\a4/b1/n0023 [7]),
    .I1(intop1_0_IBUF_89),
    .I2(intop2_7_IBUF_0),
    .O(\a4/b2/Madd_A_sum_lut [7])
  );
  LUT3 #(
    .INIT ( 8'h78 ))
  \a4/b2/Madd_A_sum_lut<6>  (
    .I0(\a4/b1/n0023 [7]),
    .I1(intop1_0_IBUF_89),
    .I2(intop2_6_IBUF_1),
    .O(\a4/b2/Madd_A_sum_lut [6])
  );
  LUT3 #(
    .INIT ( 8'h78 ))
  \a4/b2/Madd_A_sum_lut<5>  (
    .I0(\a4/b1/n0023 [6]),
    .I1(intop1_0_IBUF_89),
    .I2(intop2_5_IBUF_2),
    .O(\a4/b2/Madd_A_sum_lut [5])
  );
  LUT3 #(
    .INIT ( 8'h78 ))
  \a4/b2/Madd_A_sum_lut<4>  (
    .I0(\a4/b1/n0023 [5]),
    .I1(intop1_0_IBUF_89),
    .I2(intop2_4_IBUF_3),
    .O(\a4/b2/Madd_A_sum_lut [4])
  );
  LUT3 #(
    .INIT ( 8'h78 ))
  \a4/b2/Madd_A_sum_lut<3>  (
    .I0(\a4/b1/n0023 [4]),
    .I1(intop1_0_IBUF_89),
    .I2(intop2_3_IBUF_4),
    .O(\a4/b2/Madd_A_sum_lut [3])
  );
  LUT3 #(
    .INIT ( 8'h78 ))
  \a4/b2/Madd_A_sum_lut<2>  (
    .I0(\a4/b1/n0023 [3]),
    .I1(intop1_0_IBUF_89),
    .I2(intop2_2_IBUF_5),
    .O(\a4/b2/Madd_A_sum_lut [2])
  );
  LUT3 #(
    .INIT ( 8'h78 ))
  \a4/b2/Madd_A_sum_lut<1>  (
    .I0(\a4/b1/n0023 [2]),
    .I1(intop1_0_IBUF_89),
    .I2(intop2_1_IBUF_6),
    .O(\a4/b2/Madd_A_sum_lut [1])
  );
  LUT3 #(
    .INIT ( 8'h78 ))
  \a4/b2/Madd_A_sum_lut<0>  (
    .I0(\a4/b1/n0023 [1]),
    .I1(intop1_0_IBUF_89),
    .I2(intop2_0_IBUF_7),
    .O(\a4/b2/Madd_A_sum_lut [0])
  );
  LUT6 #(
    .INIT ( 64'h092B4D6FF6D4B290 ))
  \a4/b4/Madd_A_sum_lut<7>  (
    .I0(intop1_1_IBUF_81),
    .I1(intop1_2_IBUF_73),
    .I2(\a4/temp_A3 [6]),
    .I3(\a4/b3/A_sum [7]),
    .I4(\a4/b3/n0023 [7]),
    .I5(intop2_7_IBUF_0),
    .O(\a4/b4/Madd_A_sum_lut [7])
  );
  LUT6 #(
    .INIT ( 64'h092B4D6FF6D4B290 ))
  \a4/b4/Madd_A_sum_lut<6>  (
    .I0(intop1_1_IBUF_81),
    .I1(intop1_2_IBUF_73),
    .I2(\a4/temp_A3 [6]),
    .I3(\a4/b3/A_sum [7]),
    .I4(\a4/b3/n0023 [7]),
    .I5(intop2_6_IBUF_1),
    .O(\a4/b4/Madd_A_sum_lut [6])
  );
  LUT6 #(
    .INIT ( 64'h092B4D6FF6D4B290 ))
  \a4/b4/Madd_A_sum_lut<5>  (
    .I0(intop1_1_IBUF_81),
    .I1(intop1_2_IBUF_73),
    .I2(\a4/temp_A3 [6]),
    .I3(\a4/b3/A_sum [6]),
    .I4(\a4/b3/n0023 [6]),
    .I5(intop2_5_IBUF_2),
    .O(\a4/b4/Madd_A_sum_lut [5])
  );
  LUT6 #(
    .INIT ( 64'h092B4D6FF6D4B290 ))
  \a4/b4/Madd_A_sum_lut<4>  (
    .I0(intop1_1_IBUF_81),
    .I1(intop1_2_IBUF_73),
    .I2(\a4/temp_A3 [5]),
    .I3(\a4/b3/A_sum [5]),
    .I4(\a4/b3/n0023 [5]),
    .I5(intop2_4_IBUF_3),
    .O(\a4/b4/Madd_A_sum_lut [4])
  );
  LUT6 #(
    .INIT ( 64'h092B4D6FF6D4B290 ))
  \a4/b4/Madd_A_sum_lut<3>  (
    .I0(intop1_1_IBUF_81),
    .I1(intop1_2_IBUF_73),
    .I2(\a4/temp_A3 [4]),
    .I3(\a4/b3/A_sum [4]),
    .I4(\a4/b3/n0023 [4]),
    .I5(intop2_3_IBUF_4),
    .O(\a4/b4/Madd_A_sum_lut [3])
  );
  LUT6 #(
    .INIT ( 64'h092B4D6FF6D4B290 ))
  \a4/b4/Madd_A_sum_lut<2>  (
    .I0(intop1_1_IBUF_81),
    .I1(intop1_2_IBUF_73),
    .I2(\a4/temp_A3 [3]),
    .I3(\a4/b3/A_sum [3]),
    .I4(\a4/b3/n0023 [3]),
    .I5(intop2_2_IBUF_5),
    .O(\a4/b4/Madd_A_sum_lut [2])
  );
  LUT6 #(
    .INIT ( 64'h092B4D6FF6D4B290 ))
  \a4/b4/Madd_A_sum_lut<1>  (
    .I0(intop1_1_IBUF_81),
    .I1(intop1_2_IBUF_73),
    .I2(\a4/temp_A3 [2]),
    .I3(\a4/b3/A_sum [2]),
    .I4(\a4/b3/n0023 [2]),
    .I5(intop2_1_IBUF_6),
    .O(\a4/b4/Madd_A_sum_lut [1])
  );
  LUT6 #(
    .INIT ( 64'h092B4D6FF6D4B290 ))
  \a4/b4/Madd_A_sum_lut<0>  (
    .I0(intop1_1_IBUF_81),
    .I1(intop1_2_IBUF_73),
    .I2(\a4/temp_A3 [1]),
    .I3(\a4/b3/A_sum [1]),
    .I4(\a4/b3/n0023 [1]),
    .I5(intop2_0_IBUF_7),
    .O(\a4/b4/Madd_A_sum_lut [0])
  );
  LUT6 #(
    .INIT ( 64'h092B4D6FF6D4B290 ))
  \a4/b5/Madd_A_sum_lut<7>  (
    .I0(intop1_2_IBUF_73),
    .I1(intop1_3_IBUF_65),
    .I2(\a4/temp_A4 [6]),
    .I3(\a4/b4/A_sum [7]),
    .I4(\a4/b4/n0023 [7]),
    .I5(intop2_7_IBUF_0),
    .O(\a4/b5/Madd_A_sum_lut [7])
  );
  LUT6 #(
    .INIT ( 64'h092B4D6FF6D4B290 ))
  \a4/b5/Madd_A_sum_lut<6>  (
    .I0(intop1_2_IBUF_73),
    .I1(intop1_3_IBUF_65),
    .I2(\a4/temp_A4 [6]),
    .I3(\a4/b4/A_sum [7]),
    .I4(\a4/b4/n0023 [7]),
    .I5(intop2_6_IBUF_1),
    .O(\a4/b5/Madd_A_sum_lut [6])
  );
  LUT6 #(
    .INIT ( 64'h092B4D6FF6D4B290 ))
  \a4/b5/Madd_A_sum_lut<5>  (
    .I0(intop1_2_IBUF_73),
    .I1(intop1_3_IBUF_65),
    .I2(\a4/temp_A4 [6]),
    .I3(\a4/b4/A_sum [6]),
    .I4(\a4/b4/n0023 [6]),
    .I5(intop2_5_IBUF_2),
    .O(\a4/b5/Madd_A_sum_lut [5])
  );
  LUT6 #(
    .INIT ( 64'h092B4D6FF6D4B290 ))
  \a4/b5/Madd_A_sum_lut<4>  (
    .I0(intop1_2_IBUF_73),
    .I1(intop1_3_IBUF_65),
    .I2(\a4/temp_A4 [5]),
    .I3(\a4/b4/A_sum [5]),
    .I4(\a4/b4/n0023 [5]),
    .I5(intop2_4_IBUF_3),
    .O(\a4/b5/Madd_A_sum_lut [4])
  );
  LUT6 #(
    .INIT ( 64'h092B4D6FF6D4B290 ))
  \a4/b5/Madd_A_sum_lut<3>  (
    .I0(intop1_2_IBUF_73),
    .I1(intop1_3_IBUF_65),
    .I2(\a4/temp_A4 [4]),
    .I3(\a4/b4/A_sum [4]),
    .I4(\a4/b4/n0023 [4]),
    .I5(intop2_3_IBUF_4),
    .O(\a4/b5/Madd_A_sum_lut [3])
  );
  LUT6 #(
    .INIT ( 64'h092B4D6FF6D4B290 ))
  \a4/b5/Madd_A_sum_lut<2>  (
    .I0(intop1_2_IBUF_73),
    .I1(intop1_3_IBUF_65),
    .I2(\a4/temp_A4 [3]),
    .I3(\a4/b4/A_sum [3]),
    .I4(\a4/b4/n0023 [3]),
    .I5(intop2_2_IBUF_5),
    .O(\a4/b5/Madd_A_sum_lut [2])
  );
  LUT6 #(
    .INIT ( 64'h092B4D6FF6D4B290 ))
  \a4/b5/Madd_A_sum_lut<1>  (
    .I0(intop1_2_IBUF_73),
    .I1(intop1_3_IBUF_65),
    .I2(\a4/temp_A4 [2]),
    .I3(\a4/b4/A_sum [2]),
    .I4(\a4/b4/n0023 [2]),
    .I5(intop2_1_IBUF_6),
    .O(\a4/b5/Madd_A_sum_lut [1])
  );
  LUT6 #(
    .INIT ( 64'h092B4D6FF6D4B290 ))
  \a4/b5/Madd_A_sum_lut<0>  (
    .I0(intop1_2_IBUF_73),
    .I1(intop1_3_IBUF_65),
    .I2(\a4/temp_A4 [1]),
    .I3(\a4/b4/A_sum [1]),
    .I4(\a4/b4/n0023 [1]),
    .I5(intop2_0_IBUF_7),
    .O(\a4/b5/Madd_A_sum_lut [0])
  );
  LUT6 #(
    .INIT ( 64'h092B4D6FF6D4B290 ))
  \a4/b6/Madd_A_sum_lut<7>  (
    .I0(intop1_3_IBUF_65),
    .I1(intop1_4_IBUF_57),
    .I2(\a4/temp_A5 [6]),
    .I3(\a4/b5/A_sum [7]),
    .I4(\a4/b5/n0023 [7]),
    .I5(intop2_7_IBUF_0),
    .O(\a4/b6/Madd_A_sum_lut [7])
  );
  LUT6 #(
    .INIT ( 64'h092B4D6FF6D4B290 ))
  \a4/b6/Madd_A_sum_lut<6>  (
    .I0(intop1_3_IBUF_65),
    .I1(intop1_4_IBUF_57),
    .I2(\a4/temp_A5 [6]),
    .I3(\a4/b5/A_sum [7]),
    .I4(\a4/b5/n0023 [7]),
    .I5(intop2_6_IBUF_1),
    .O(\a4/b6/Madd_A_sum_lut [6])
  );
  LUT6 #(
    .INIT ( 64'h092B4D6FF6D4B290 ))
  \a4/b6/Madd_A_sum_lut<5>  (
    .I0(intop1_3_IBUF_65),
    .I1(intop1_4_IBUF_57),
    .I2(\a4/temp_A5 [6]),
    .I3(\a4/b5/A_sum [6]),
    .I4(\a4/b5/n0023 [6]),
    .I5(intop2_5_IBUF_2),
    .O(\a4/b6/Madd_A_sum_lut [5])
  );
  LUT6 #(
    .INIT ( 64'h092B4D6FF6D4B290 ))
  \a4/b6/Madd_A_sum_lut<4>  (
    .I0(intop1_3_IBUF_65),
    .I1(intop1_4_IBUF_57),
    .I2(\a4/temp_A5 [5]),
    .I3(\a4/b5/A_sum [5]),
    .I4(\a4/b5/n0023 [5]),
    .I5(intop2_4_IBUF_3),
    .O(\a4/b6/Madd_A_sum_lut [4])
  );
  LUT6 #(
    .INIT ( 64'h092B4D6FF6D4B290 ))
  \a4/b6/Madd_A_sum_lut<3>  (
    .I0(intop1_3_IBUF_65),
    .I1(intop1_4_IBUF_57),
    .I2(\a4/temp_A5 [4]),
    .I3(\a4/b5/A_sum [4]),
    .I4(\a4/b5/n0023 [4]),
    .I5(intop2_3_IBUF_4),
    .O(\a4/b6/Madd_A_sum_lut [3])
  );
  LUT6 #(
    .INIT ( 64'h092B4D6FF6D4B290 ))
  \a4/b6/Madd_A_sum_lut<2>  (
    .I0(intop1_3_IBUF_65),
    .I1(intop1_4_IBUF_57),
    .I2(\a4/temp_A5 [3]),
    .I3(\a4/b5/A_sum [3]),
    .I4(\a4/b5/n0023 [3]),
    .I5(intop2_2_IBUF_5),
    .O(\a4/b6/Madd_A_sum_lut [2])
  );
  LUT6 #(
    .INIT ( 64'h092B4D6FF6D4B290 ))
  \a4/b6/Madd_A_sum_lut<1>  (
    .I0(intop1_3_IBUF_65),
    .I1(intop1_4_IBUF_57),
    .I2(\a4/temp_A5 [2]),
    .I3(\a4/b5/A_sum [2]),
    .I4(\a4/b5/n0023 [2]),
    .I5(intop2_1_IBUF_6),
    .O(\a4/b6/Madd_A_sum_lut [1])
  );
  LUT6 #(
    .INIT ( 64'h092B4D6FF6D4B290 ))
  \a4/b6/Madd_A_sum_lut<0>  (
    .I0(intop1_3_IBUF_65),
    .I1(intop1_4_IBUF_57),
    .I2(\a4/temp_A5 [1]),
    .I3(\a4/b5/A_sum [1]),
    .I4(\a4/b5/n0023 [1]),
    .I5(intop2_0_IBUF_7),
    .O(\a4/b6/Madd_A_sum_lut [0])
  );
  LUT6 #(
    .INIT ( 64'h092B4D6FF6D4B290 ))
  \a4/b7/Madd_A_sum_lut<7>  (
    .I0(intop1_4_IBUF_57),
    .I1(intop1_5_IBUF_49),
    .I2(\a4/temp_A6 [6]),
    .I3(\a4/b6/A_sum [7]),
    .I4(\a4/b6/n0023 [7]),
    .I5(intop2_7_IBUF_0),
    .O(\a4/b7/Madd_A_sum_lut [7])
  );
  LUT6 #(
    .INIT ( 64'h092B4D6FF6D4B290 ))
  \a4/b7/Madd_A_sum_lut<6>  (
    .I0(intop1_4_IBUF_57),
    .I1(intop1_5_IBUF_49),
    .I2(\a4/temp_A6 [6]),
    .I3(\a4/b6/A_sum [7]),
    .I4(\a4/b6/n0023 [7]),
    .I5(intop2_6_IBUF_1),
    .O(\a4/b7/Madd_A_sum_lut [6])
  );
  LUT6 #(
    .INIT ( 64'h092B4D6FF6D4B290 ))
  \a4/b7/Madd_A_sum_lut<5>  (
    .I0(intop1_4_IBUF_57),
    .I1(intop1_5_IBUF_49),
    .I2(\a4/temp_A6 [6]),
    .I3(\a4/b6/A_sum [6]),
    .I4(\a4/b6/n0023 [6]),
    .I5(intop2_5_IBUF_2),
    .O(\a4/b7/Madd_A_sum_lut [5])
  );
  LUT6 #(
    .INIT ( 64'h092B4D6FF6D4B290 ))
  \a4/b7/Madd_A_sum_lut<4>  (
    .I0(intop1_4_IBUF_57),
    .I1(intop1_5_IBUF_49),
    .I2(\a4/temp_A6 [5]),
    .I3(\a4/b6/A_sum [5]),
    .I4(\a4/b6/n0023 [5]),
    .I5(intop2_4_IBUF_3),
    .O(\a4/b7/Madd_A_sum_lut [4])
  );
  LUT6 #(
    .INIT ( 64'h092B4D6FF6D4B290 ))
  \a4/b7/Madd_A_sum_lut<3>  (
    .I0(intop1_4_IBUF_57),
    .I1(intop1_5_IBUF_49),
    .I2(\a4/temp_A6 [4]),
    .I3(\a4/b6/A_sum [4]),
    .I4(\a4/b6/n0023 [4]),
    .I5(intop2_3_IBUF_4),
    .O(\a4/b7/Madd_A_sum_lut [3])
  );
  LUT6 #(
    .INIT ( 64'h092B4D6FF6D4B290 ))
  \a4/b7/Madd_A_sum_lut<2>  (
    .I0(intop1_4_IBUF_57),
    .I1(intop1_5_IBUF_49),
    .I2(\a4/temp_A6 [3]),
    .I3(\a4/b6/A_sum [3]),
    .I4(\a4/b6/n0023 [3]),
    .I5(intop2_2_IBUF_5),
    .O(\a4/b7/Madd_A_sum_lut [2])
  );
  LUT6 #(
    .INIT ( 64'h092B4D6FF6D4B290 ))
  \a4/b7/Madd_A_sum_lut<1>  (
    .I0(intop1_4_IBUF_57),
    .I1(intop1_5_IBUF_49),
    .I2(\a4/temp_A6 [2]),
    .I3(\a4/b6/A_sum [2]),
    .I4(\a4/b6/n0023 [2]),
    .I5(intop2_1_IBUF_6),
    .O(\a4/b7/Madd_A_sum_lut [1])
  );
  LUT6 #(
    .INIT ( 64'h092B4D6FF6D4B290 ))
  \a4/b7/Madd_A_sum_lut<0>  (
    .I0(intop1_4_IBUF_57),
    .I1(intop1_5_IBUF_49),
    .I2(\a4/temp_A6 [1]),
    .I3(\a4/b6/A_sum [1]),
    .I4(\a4/b6/n0023 [1]),
    .I5(intop2_0_IBUF_7),
    .O(\a4/b7/Madd_A_sum_lut [0])
  );
  LUT6 #(
    .INIT ( 64'h092B4D6FF6D4B290 ))
  \a4/b8/Madd_A_sum_lut<7>  (
    .I0(intop1_5_IBUF_49),
    .I1(intop1_6_IBUF_40),
    .I2(\a4/temp_A7 [6]),
    .I3(\a4/b7/A_sum [7]),
    .I4(\a4/b7/n0023 [7]),
    .I5(intop2_7_IBUF_0),
    .O(\a4/b8/Madd_A_sum_lut [7])
  );
  LUT6 #(
    .INIT ( 64'h092B4D6FF6D4B290 ))
  \a4/b8/Madd_A_sum_lut<6>  (
    .I0(intop1_5_IBUF_49),
    .I1(intop1_6_IBUF_40),
    .I2(\a4/temp_A7 [6]),
    .I3(\a4/b7/A_sum [7]),
    .I4(\a4/b7/n0023 [7]),
    .I5(intop2_6_IBUF_1),
    .O(\a4/b8/Madd_A_sum_lut [6])
  );
  LUT6 #(
    .INIT ( 64'h092B4D6FF6D4B290 ))
  \a4/b8/Madd_A_sum_lut<5>  (
    .I0(intop1_5_IBUF_49),
    .I1(intop1_6_IBUF_40),
    .I2(\a4/temp_A7 [6]),
    .I3(\a4/b7/A_sum [6]),
    .I4(\a4/b7/n0023 [6]),
    .I5(intop2_5_IBUF_2),
    .O(\a4/b8/Madd_A_sum_lut [5])
  );
  LUT6 #(
    .INIT ( 64'h092B4D6FF6D4B290 ))
  \a4/b8/Madd_A_sum_lut<4>  (
    .I0(intop1_5_IBUF_49),
    .I1(intop1_6_IBUF_40),
    .I2(\a4/temp_A7 [5]),
    .I3(\a4/b7/A_sum [5]),
    .I4(\a4/b7/n0023 [5]),
    .I5(intop2_4_IBUF_3),
    .O(\a4/b8/Madd_A_sum_lut [4])
  );
  LUT6 #(
    .INIT ( 64'h092B4D6FF6D4B290 ))
  \a4/b8/Madd_A_sum_lut<3>  (
    .I0(intop1_5_IBUF_49),
    .I1(intop1_6_IBUF_40),
    .I2(\a4/temp_A7 [4]),
    .I3(\a4/b7/A_sum [4]),
    .I4(\a4/b7/n0023 [4]),
    .I5(intop2_3_IBUF_4),
    .O(\a4/b8/Madd_A_sum_lut [3])
  );
  LUT6 #(
    .INIT ( 64'h092B4D6FF6D4B290 ))
  \a4/b8/Madd_A_sum_lut<2>  (
    .I0(intop1_5_IBUF_49),
    .I1(intop1_6_IBUF_40),
    .I2(\a4/temp_A7 [3]),
    .I3(\a4/b7/A_sum [3]),
    .I4(\a4/b7/n0023 [3]),
    .I5(intop2_2_IBUF_5),
    .O(\a4/b8/Madd_A_sum_lut [2])
  );
  LUT6 #(
    .INIT ( 64'h092B4D6FF6D4B290 ))
  \a4/b8/Madd_A_sum_lut<1>  (
    .I0(intop1_5_IBUF_49),
    .I1(intop1_6_IBUF_40),
    .I2(\a4/temp_A7 [2]),
    .I3(\a4/b7/A_sum [2]),
    .I4(\a4/b7/n0023 [2]),
    .I5(intop2_1_IBUF_6),
    .O(\a4/b8/Madd_A_sum_lut [1])
  );
  LUT6 #(
    .INIT ( 64'h092B4D6FF6D4B290 ))
  \a4/b8/Madd_A_sum_lut<0>  (
    .I0(intop1_5_IBUF_49),
    .I1(intop1_6_IBUF_40),
    .I2(\a4/temp_A7 [1]),
    .I3(\a4/b7/A_sum [1]),
    .I4(\a4/b7/n0023 [1]),
    .I5(intop2_0_IBUF_7),
    .O(\a4/b8/Madd_A_sum_lut [0])
  );
  LUT6 #(
    .INIT ( 64'h139B57DFEC64A820 ))
  \a4/b3/Madd_A_sum_lut<7>  (
    .I0(intop1_0_IBUF_89),
    .I1(intop1_1_IBUF_81),
    .I2(\a4/b2/A_sum [7]),
    .I3(\a4/b1/n0023 [7]),
    .I4(\a4/b2/n0023 [7]),
    .I5(intop2_7_IBUF_0),
    .O(\a4/b3/Madd_A_sum_lut [7])
  );
  LUT6 #(
    .INIT ( 64'h139B57DFEC64A820 ))
  \a4/b3/Madd_A_sum_lut<6>  (
    .I0(intop1_0_IBUF_89),
    .I1(intop1_1_IBUF_81),
    .I2(\a4/b2/A_sum [7]),
    .I3(\a4/b1/n0023 [7]),
    .I4(\a4/b2/n0023 [7]),
    .I5(intop2_6_IBUF_1),
    .O(\a4/b3/Madd_A_sum_lut [6])
  );
  LUT6 #(
    .INIT ( 64'h139B57DFEC64A820 ))
  \a4/b3/Madd_A_sum_lut<5>  (
    .I0(intop1_0_IBUF_89),
    .I1(intop1_1_IBUF_81),
    .I2(\a4/b2/A_sum [6]),
    .I3(\a4/b1/n0023 [7]),
    .I4(\a4/b2/n0023 [6]),
    .I5(intop2_5_IBUF_2),
    .O(\a4/b3/Madd_A_sum_lut [5])
  );
  LUT6 #(
    .INIT ( 64'h139B57DFEC64A820 ))
  \a4/b3/Madd_A_sum_lut<4>  (
    .I0(intop1_0_IBUF_89),
    .I1(intop1_1_IBUF_81),
    .I2(\a4/b2/A_sum [5]),
    .I3(\a4/b1/n0023 [6]),
    .I4(\a4/b2/n0023 [5]),
    .I5(intop2_4_IBUF_3),
    .O(\a4/b3/Madd_A_sum_lut [4])
  );
  LUT6 #(
    .INIT ( 64'h139B57DFEC64A820 ))
  \a4/b3/Madd_A_sum_lut<3>  (
    .I0(intop1_0_IBUF_89),
    .I1(intop1_1_IBUF_81),
    .I2(\a4/b2/A_sum [4]),
    .I3(\a4/b1/n0023 [5]),
    .I4(\a4/b2/n0023 [4]),
    .I5(intop2_3_IBUF_4),
    .O(\a4/b3/Madd_A_sum_lut [3])
  );
  LUT6 #(
    .INIT ( 64'h139B57DFEC64A820 ))
  \a4/b3/Madd_A_sum_lut<2>  (
    .I0(intop1_0_IBUF_89),
    .I1(intop1_1_IBUF_81),
    .I2(\a4/b2/A_sum [3]),
    .I3(\a4/b1/n0023 [4]),
    .I4(\a4/b2/n0023 [3]),
    .I5(intop2_2_IBUF_5),
    .O(\a4/b3/Madd_A_sum_lut [2])
  );
  LUT6 #(
    .INIT ( 64'h139B57DFEC64A820 ))
  \a4/b3/Madd_A_sum_lut<1>  (
    .I0(intop1_0_IBUF_89),
    .I1(intop1_1_IBUF_81),
    .I2(\a4/b2/A_sum [2]),
    .I3(\a4/b1/n0023 [3]),
    .I4(\a4/b2/n0023 [2]),
    .I5(intop2_1_IBUF_6),
    .O(\a4/b3/Madd_A_sum_lut [1])
  );
  LUT6 #(
    .INIT ( 64'h139B57DFEC64A820 ))
  \a4/b3/Madd_A_sum_lut<0>  (
    .I0(intop1_0_IBUF_89),
    .I1(intop1_1_IBUF_81),
    .I2(\a4/b2/A_sum [1]),
    .I3(\a4/b1/n0023 [2]),
    .I4(\a4/b2/n0023 [1]),
    .I5(intop2_0_IBUF_7),
    .O(\a4/b3/Madd_A_sum_lut [0])
  );
  LUT3 #(
    .INIT ( 8'h87 ))
  \a4/b2/Madd_n0023_Madd_Madd_lut<7>  (
    .I0(\a4/b1/n0023 [7]),
    .I1(intop1_0_IBUF_89),
    .I2(intop2_7_IBUF_0),
    .O(\a4/b2/Madd_n0023_Madd_Madd_lut [7])
  );
  LUT3 #(
    .INIT ( 8'h87 ))
  \a4/b2/Madd_n0023_Madd_Madd_lut<6>  (
    .I0(\a4/b1/n0023 [7]),
    .I1(intop1_0_IBUF_89),
    .I2(intop2_6_IBUF_1),
    .O(\a4/b2/Madd_n0023_Madd_Madd_lut [6])
  );
  LUT3 #(
    .INIT ( 8'h87 ))
  \a4/b2/Madd_n0023_Madd_Madd_lut<5>  (
    .I0(\a4/b1/n0023 [6]),
    .I1(intop1_0_IBUF_89),
    .I2(intop2_5_IBUF_2),
    .O(\a4/b2/Madd_n0023_Madd_Madd_lut [5])
  );
  LUT3 #(
    .INIT ( 8'h87 ))
  \a4/b2/Madd_n0023_Madd_Madd_lut<4>  (
    .I0(\a4/b1/n0023 [5]),
    .I1(intop1_0_IBUF_89),
    .I2(intop2_4_IBUF_3),
    .O(\a4/b2/Madd_n0023_Madd_Madd_lut [4])
  );
  LUT3 #(
    .INIT ( 8'h87 ))
  \a4/b2/Madd_n0023_Madd_Madd_lut<3>  (
    .I0(\a4/b1/n0023 [4]),
    .I1(intop1_0_IBUF_89),
    .I2(intop2_3_IBUF_4),
    .O(\a4/b2/Madd_n0023_Madd_Madd_lut [3])
  );
  LUT3 #(
    .INIT ( 8'h87 ))
  \a4/b2/Madd_n0023_Madd_Madd_lut<2>  (
    .I0(\a4/b1/n0023 [3]),
    .I1(intop1_0_IBUF_89),
    .I2(intop2_2_IBUF_5),
    .O(\a4/b2/Madd_n0023_Madd_Madd_lut [2])
  );
  LUT3 #(
    .INIT ( 8'h87 ))
  \a4/b2/Madd_n0023_Madd_Madd_lut<1>  (
    .I0(\a4/b1/n0023 [2]),
    .I1(intop1_0_IBUF_89),
    .I2(intop2_1_IBUF_6),
    .O(\a4/b2/Madd_n0023_Madd_Madd_lut [1])
  );
  LUT3 #(
    .INIT ( 8'h87 ))
  \a4/b2/Madd_n0023_Madd_Madd_lut<0>  (
    .I0(\a4/b1/n0023 [1]),
    .I1(intop1_0_IBUF_89),
    .I2(intop2_0_IBUF_7),
    .O(\a4/b2/Madd_n0023_Madd_Madd_lut [0])
  );
  LUT6 #(
    .INIT ( 64'hEC64A820139B57DF ))
  \a4/b3/Madd_n0023_Madd_Madd_lut<7>  (
    .I0(intop1_0_IBUF_89),
    .I1(intop1_1_IBUF_81),
    .I2(\a4/b2/A_sum [7]),
    .I3(\a4/b1/n0023 [7]),
    .I4(\a4/b2/n0023 [7]),
    .I5(intop2_7_IBUF_0),
    .O(\a4/b3/Madd_n0023_Madd_Madd_lut [7])
  );
  LUT6 #(
    .INIT ( 64'hEC64A820139B57DF ))
  \a4/b3/Madd_n0023_Madd_Madd_lut<6>  (
    .I0(intop1_0_IBUF_89),
    .I1(intop1_1_IBUF_81),
    .I2(\a4/b2/A_sum [7]),
    .I3(\a4/b1/n0023 [7]),
    .I4(\a4/b2/n0023 [7]),
    .I5(intop2_6_IBUF_1),
    .O(\a4/b3/Madd_n0023_Madd_Madd_lut [6])
  );
  LUT6 #(
    .INIT ( 64'hEC64A820139B57DF ))
  \a4/b3/Madd_n0023_Madd_Madd_lut<5>  (
    .I0(intop1_0_IBUF_89),
    .I1(intop1_1_IBUF_81),
    .I2(\a4/b2/A_sum [6]),
    .I3(\a4/b1/n0023 [7]),
    .I4(\a4/b2/n0023 [6]),
    .I5(intop2_5_IBUF_2),
    .O(\a4/b3/Madd_n0023_Madd_Madd_lut [5])
  );
  LUT6 #(
    .INIT ( 64'hEC64A820139B57DF ))
  \a4/b3/Madd_n0023_Madd_Madd_lut<4>  (
    .I0(intop1_0_IBUF_89),
    .I1(intop1_1_IBUF_81),
    .I2(\a4/b2/A_sum [5]),
    .I3(\a4/b1/n0023 [6]),
    .I4(\a4/b2/n0023 [5]),
    .I5(intop2_4_IBUF_3),
    .O(\a4/b3/Madd_n0023_Madd_Madd_lut [4])
  );
  LUT6 #(
    .INIT ( 64'hEC64A820139B57DF ))
  \a4/b3/Madd_n0023_Madd_Madd_lut<3>  (
    .I0(intop1_0_IBUF_89),
    .I1(intop1_1_IBUF_81),
    .I2(\a4/b2/A_sum [4]),
    .I3(\a4/b1/n0023 [5]),
    .I4(\a4/b2/n0023 [4]),
    .I5(intop2_3_IBUF_4),
    .O(\a4/b3/Madd_n0023_Madd_Madd_lut [3])
  );
  LUT6 #(
    .INIT ( 64'hEC64A820139B57DF ))
  \a4/b3/Madd_n0023_Madd_Madd_lut<2>  (
    .I0(intop1_0_IBUF_89),
    .I1(intop1_1_IBUF_81),
    .I2(\a4/b2/A_sum [3]),
    .I3(\a4/b1/n0023 [4]),
    .I4(\a4/b2/n0023 [3]),
    .I5(intop2_2_IBUF_5),
    .O(\a4/b3/Madd_n0023_Madd_Madd_lut [2])
  );
  LUT6 #(
    .INIT ( 64'hEC64A820139B57DF ))
  \a4/b3/Madd_n0023_Madd_Madd_lut<1>  (
    .I0(intop1_0_IBUF_89),
    .I1(intop1_1_IBUF_81),
    .I2(\a4/b2/A_sum [2]),
    .I3(\a4/b1/n0023 [3]),
    .I4(\a4/b2/n0023 [2]),
    .I5(intop2_1_IBUF_6),
    .O(\a4/b3/Madd_n0023_Madd_Madd_lut [1])
  );
  LUT6 #(
    .INIT ( 64'hEC64A820139B57DF ))
  \a4/b3/Madd_n0023_Madd_Madd_lut<0>  (
    .I0(intop1_0_IBUF_89),
    .I1(intop1_1_IBUF_81),
    .I2(\a4/b2/A_sum [1]),
    .I3(\a4/b1/n0023 [2]),
    .I4(\a4/b2/n0023 [1]),
    .I5(intop2_0_IBUF_7),
    .O(\a4/b3/Madd_n0023_Madd_Madd_lut [0])
  );
  LUT6 #(
    .INIT ( 64'hF6D4B290092B4D6F ))
  \a4/b4/Madd_n0023_Madd_Madd_lut<7>  (
    .I0(intop1_1_IBUF_81),
    .I1(intop1_2_IBUF_73),
    .I2(\a4/temp_A3 [6]),
    .I3(\a4/b3/A_sum [7]),
    .I4(\a4/b3/n0023 [7]),
    .I5(intop2_7_IBUF_0),
    .O(\a4/b4/Madd_n0023_Madd_Madd_lut [7])
  );
  LUT6 #(
    .INIT ( 64'hF6D4B290092B4D6F ))
  \a4/b4/Madd_n0023_Madd_Madd_lut<6>  (
    .I0(intop1_1_IBUF_81),
    .I1(intop1_2_IBUF_73),
    .I2(\a4/temp_A3 [6]),
    .I3(\a4/b3/A_sum [7]),
    .I4(\a4/b3/n0023 [7]),
    .I5(intop2_6_IBUF_1),
    .O(\a4/b4/Madd_n0023_Madd_Madd_lut [6])
  );
  LUT6 #(
    .INIT ( 64'hF6D4B290092B4D6F ))
  \a4/b4/Madd_n0023_Madd_Madd_lut<5>  (
    .I0(intop1_1_IBUF_81),
    .I1(intop1_2_IBUF_73),
    .I2(\a4/temp_A3 [6]),
    .I3(\a4/b3/A_sum [6]),
    .I4(\a4/b3/n0023 [6]),
    .I5(intop2_5_IBUF_2),
    .O(\a4/b4/Madd_n0023_Madd_Madd_lut [5])
  );
  LUT6 #(
    .INIT ( 64'hF6D4B290092B4D6F ))
  \a4/b4/Madd_n0023_Madd_Madd_lut<4>  (
    .I0(intop1_1_IBUF_81),
    .I1(intop1_2_IBUF_73),
    .I2(\a4/temp_A3 [5]),
    .I3(\a4/b3/A_sum [5]),
    .I4(\a4/b3/n0023 [5]),
    .I5(intop2_4_IBUF_3),
    .O(\a4/b4/Madd_n0023_Madd_Madd_lut [4])
  );
  LUT6 #(
    .INIT ( 64'hF6D4B290092B4D6F ))
  \a4/b4/Madd_n0023_Madd_Madd_lut<3>  (
    .I0(intop1_1_IBUF_81),
    .I1(intop1_2_IBUF_73),
    .I2(\a4/temp_A3 [4]),
    .I3(\a4/b3/A_sum [4]),
    .I4(\a4/b3/n0023 [4]),
    .I5(intop2_3_IBUF_4),
    .O(\a4/b4/Madd_n0023_Madd_Madd_lut [3])
  );
  LUT6 #(
    .INIT ( 64'hF6D4B290092B4D6F ))
  \a4/b4/Madd_n0023_Madd_Madd_lut<2>  (
    .I0(intop1_1_IBUF_81),
    .I1(intop1_2_IBUF_73),
    .I2(\a4/temp_A3 [3]),
    .I3(\a4/b3/A_sum [3]),
    .I4(\a4/b3/n0023 [3]),
    .I5(intop2_2_IBUF_5),
    .O(\a4/b4/Madd_n0023_Madd_Madd_lut [2])
  );
  LUT6 #(
    .INIT ( 64'hF6D4B290092B4D6F ))
  \a4/b4/Madd_n0023_Madd_Madd_lut<1>  (
    .I0(intop1_1_IBUF_81),
    .I1(intop1_2_IBUF_73),
    .I2(\a4/temp_A3 [2]),
    .I3(\a4/b3/A_sum [2]),
    .I4(\a4/b3/n0023 [2]),
    .I5(intop2_1_IBUF_6),
    .O(\a4/b4/Madd_n0023_Madd_Madd_lut [1])
  );
  LUT6 #(
    .INIT ( 64'hF6D4B290092B4D6F ))
  \a4/b4/Madd_n0023_Madd_Madd_lut<0>  (
    .I0(intop1_1_IBUF_81),
    .I1(intop1_2_IBUF_73),
    .I2(\a4/temp_A3 [1]),
    .I3(\a4/b3/A_sum [1]),
    .I4(\a4/b3/n0023 [1]),
    .I5(intop2_0_IBUF_7),
    .O(\a4/b4/Madd_n0023_Madd_Madd_lut [0])
  );
  LUT6 #(
    .INIT ( 64'hF6D4B290092B4D6F ))
  \a4/b5/Madd_n0023_Madd_Madd_lut<7>  (
    .I0(intop1_2_IBUF_73),
    .I1(intop1_3_IBUF_65),
    .I2(\a4/temp_A4 [6]),
    .I3(\a4/b4/A_sum [7]),
    .I4(\a4/b4/n0023 [7]),
    .I5(intop2_7_IBUF_0),
    .O(\a4/b5/Madd_n0023_Madd_Madd_lut [7])
  );
  LUT6 #(
    .INIT ( 64'hF6D4B290092B4D6F ))
  \a4/b5/Madd_n0023_Madd_Madd_lut<6>  (
    .I0(intop1_2_IBUF_73),
    .I1(intop1_3_IBUF_65),
    .I2(\a4/temp_A4 [6]),
    .I3(\a4/b4/A_sum [7]),
    .I4(\a4/b4/n0023 [7]),
    .I5(intop2_6_IBUF_1),
    .O(\a4/b5/Madd_n0023_Madd_Madd_lut [6])
  );
  LUT6 #(
    .INIT ( 64'hF6D4B290092B4D6F ))
  \a4/b5/Madd_n0023_Madd_Madd_lut<5>  (
    .I0(intop1_2_IBUF_73),
    .I1(intop1_3_IBUF_65),
    .I2(\a4/temp_A4 [6]),
    .I3(\a4/b4/A_sum [6]),
    .I4(\a4/b4/n0023 [6]),
    .I5(intop2_5_IBUF_2),
    .O(\a4/b5/Madd_n0023_Madd_Madd_lut [5])
  );
  LUT6 #(
    .INIT ( 64'hF6D4B290092B4D6F ))
  \a4/b5/Madd_n0023_Madd_Madd_lut<4>  (
    .I0(intop1_2_IBUF_73),
    .I1(intop1_3_IBUF_65),
    .I2(\a4/temp_A4 [5]),
    .I3(\a4/b4/A_sum [5]),
    .I4(\a4/b4/n0023 [5]),
    .I5(intop2_4_IBUF_3),
    .O(\a4/b5/Madd_n0023_Madd_Madd_lut [4])
  );
  LUT6 #(
    .INIT ( 64'hF6D4B290092B4D6F ))
  \a4/b5/Madd_n0023_Madd_Madd_lut<3>  (
    .I0(intop1_2_IBUF_73),
    .I1(intop1_3_IBUF_65),
    .I2(\a4/temp_A4 [4]),
    .I3(\a4/b4/A_sum [4]),
    .I4(\a4/b4/n0023 [4]),
    .I5(intop2_3_IBUF_4),
    .O(\a4/b5/Madd_n0023_Madd_Madd_lut [3])
  );
  LUT6 #(
    .INIT ( 64'hF6D4B290092B4D6F ))
  \a4/b5/Madd_n0023_Madd_Madd_lut<2>  (
    .I0(intop1_2_IBUF_73),
    .I1(intop1_3_IBUF_65),
    .I2(\a4/temp_A4 [3]),
    .I3(\a4/b4/A_sum [3]),
    .I4(\a4/b4/n0023 [3]),
    .I5(intop2_2_IBUF_5),
    .O(\a4/b5/Madd_n0023_Madd_Madd_lut [2])
  );
  LUT6 #(
    .INIT ( 64'hF6D4B290092B4D6F ))
  \a4/b5/Madd_n0023_Madd_Madd_lut<1>  (
    .I0(intop1_2_IBUF_73),
    .I1(intop1_3_IBUF_65),
    .I2(\a4/temp_A4 [2]),
    .I3(\a4/b4/A_sum [2]),
    .I4(\a4/b4/n0023 [2]),
    .I5(intop2_1_IBUF_6),
    .O(\a4/b5/Madd_n0023_Madd_Madd_lut [1])
  );
  LUT6 #(
    .INIT ( 64'hF6D4B290092B4D6F ))
  \a4/b5/Madd_n0023_Madd_Madd_lut<0>  (
    .I0(intop1_2_IBUF_73),
    .I1(intop1_3_IBUF_65),
    .I2(\a4/temp_A4 [1]),
    .I3(\a4/b4/A_sum [1]),
    .I4(\a4/b4/n0023 [1]),
    .I5(intop2_0_IBUF_7),
    .O(\a4/b5/Madd_n0023_Madd_Madd_lut [0])
  );
  LUT6 #(
    .INIT ( 64'hF6D4B290092B4D6F ))
  \a4/b6/Madd_n0023_Madd_Madd_lut<7>  (
    .I0(intop1_3_IBUF_65),
    .I1(intop1_4_IBUF_57),
    .I2(\a4/temp_A5 [6]),
    .I3(\a4/b5/A_sum [7]),
    .I4(\a4/b5/n0023 [7]),
    .I5(intop2_7_IBUF_0),
    .O(\a4/b6/Madd_n0023_Madd_Madd_lut [7])
  );
  LUT6 #(
    .INIT ( 64'hF6D4B290092B4D6F ))
  \a4/b6/Madd_n0023_Madd_Madd_lut<6>  (
    .I0(intop1_3_IBUF_65),
    .I1(intop1_4_IBUF_57),
    .I2(\a4/temp_A5 [6]),
    .I3(\a4/b5/A_sum [7]),
    .I4(\a4/b5/n0023 [7]),
    .I5(intop2_6_IBUF_1),
    .O(\a4/b6/Madd_n0023_Madd_Madd_lut [6])
  );
  LUT6 #(
    .INIT ( 64'hF6D4B290092B4D6F ))
  \a4/b6/Madd_n0023_Madd_Madd_lut<5>  (
    .I0(intop1_3_IBUF_65),
    .I1(intop1_4_IBUF_57),
    .I2(\a4/temp_A5 [6]),
    .I3(\a4/b5/A_sum [6]),
    .I4(\a4/b5/n0023 [6]),
    .I5(intop2_5_IBUF_2),
    .O(\a4/b6/Madd_n0023_Madd_Madd_lut [5])
  );
  LUT6 #(
    .INIT ( 64'hF6D4B290092B4D6F ))
  \a4/b6/Madd_n0023_Madd_Madd_lut<4>  (
    .I0(intop1_3_IBUF_65),
    .I1(intop1_4_IBUF_57),
    .I2(\a4/temp_A5 [5]),
    .I3(\a4/b5/A_sum [5]),
    .I4(\a4/b5/n0023 [5]),
    .I5(intop2_4_IBUF_3),
    .O(\a4/b6/Madd_n0023_Madd_Madd_lut [4])
  );
  LUT6 #(
    .INIT ( 64'hF6D4B290092B4D6F ))
  \a4/b6/Madd_n0023_Madd_Madd_lut<3>  (
    .I0(intop1_3_IBUF_65),
    .I1(intop1_4_IBUF_57),
    .I2(\a4/temp_A5 [4]),
    .I3(\a4/b5/A_sum [4]),
    .I4(\a4/b5/n0023 [4]),
    .I5(intop2_3_IBUF_4),
    .O(\a4/b6/Madd_n0023_Madd_Madd_lut [3])
  );
  LUT6 #(
    .INIT ( 64'hF6D4B290092B4D6F ))
  \a4/b6/Madd_n0023_Madd_Madd_lut<2>  (
    .I0(intop1_3_IBUF_65),
    .I1(intop1_4_IBUF_57),
    .I2(\a4/temp_A5 [3]),
    .I3(\a4/b5/A_sum [3]),
    .I4(\a4/b5/n0023 [3]),
    .I5(intop2_2_IBUF_5),
    .O(\a4/b6/Madd_n0023_Madd_Madd_lut [2])
  );
  LUT6 #(
    .INIT ( 64'hF6D4B290092B4D6F ))
  \a4/b6/Madd_n0023_Madd_Madd_lut<1>  (
    .I0(intop1_3_IBUF_65),
    .I1(intop1_4_IBUF_57),
    .I2(\a4/temp_A5 [2]),
    .I3(\a4/b5/A_sum [2]),
    .I4(\a4/b5/n0023 [2]),
    .I5(intop2_1_IBUF_6),
    .O(\a4/b6/Madd_n0023_Madd_Madd_lut [1])
  );
  LUT6 #(
    .INIT ( 64'hF6D4B290092B4D6F ))
  \a4/b6/Madd_n0023_Madd_Madd_lut<0>  (
    .I0(intop1_3_IBUF_65),
    .I1(intop1_4_IBUF_57),
    .I2(\a4/temp_A5 [1]),
    .I3(\a4/b5/A_sum [1]),
    .I4(\a4/b5/n0023 [1]),
    .I5(intop2_0_IBUF_7),
    .O(\a4/b6/Madd_n0023_Madd_Madd_lut [0])
  );
  LUT6 #(
    .INIT ( 64'hF6D4B290092B4D6F ))
  \a4/b7/Madd_n0023_Madd_Madd_lut<7>  (
    .I0(intop1_4_IBUF_57),
    .I1(intop1_5_IBUF_49),
    .I2(\a4/temp_A6 [6]),
    .I3(\a4/b6/A_sum [7]),
    .I4(\a4/b6/n0023 [7]),
    .I5(intop2_7_IBUF_0),
    .O(\a4/b7/Madd_n0023_Madd_Madd_lut [7])
  );
  LUT6 #(
    .INIT ( 64'hF6D4B290092B4D6F ))
  \a4/b7/Madd_n0023_Madd_Madd_lut<6>  (
    .I0(intop1_4_IBUF_57),
    .I1(intop1_5_IBUF_49),
    .I2(\a4/temp_A6 [6]),
    .I3(\a4/b6/A_sum [7]),
    .I4(\a4/b6/n0023 [7]),
    .I5(intop2_6_IBUF_1),
    .O(\a4/b7/Madd_n0023_Madd_Madd_lut [6])
  );
  LUT6 #(
    .INIT ( 64'hF6D4B290092B4D6F ))
  \a4/b7/Madd_n0023_Madd_Madd_lut<5>  (
    .I0(intop1_4_IBUF_57),
    .I1(intop1_5_IBUF_49),
    .I2(\a4/temp_A6 [6]),
    .I3(\a4/b6/A_sum [6]),
    .I4(\a4/b6/n0023 [6]),
    .I5(intop2_5_IBUF_2),
    .O(\a4/b7/Madd_n0023_Madd_Madd_lut [5])
  );
  LUT6 #(
    .INIT ( 64'hF6D4B290092B4D6F ))
  \a4/b7/Madd_n0023_Madd_Madd_lut<4>  (
    .I0(intop1_4_IBUF_57),
    .I1(intop1_5_IBUF_49),
    .I2(\a4/temp_A6 [5]),
    .I3(\a4/b6/A_sum [5]),
    .I4(\a4/b6/n0023 [5]),
    .I5(intop2_4_IBUF_3),
    .O(\a4/b7/Madd_n0023_Madd_Madd_lut [4])
  );
  LUT6 #(
    .INIT ( 64'hF6D4B290092B4D6F ))
  \a4/b7/Madd_n0023_Madd_Madd_lut<3>  (
    .I0(intop1_4_IBUF_57),
    .I1(intop1_5_IBUF_49),
    .I2(\a4/temp_A6 [4]),
    .I3(\a4/b6/A_sum [4]),
    .I4(\a4/b6/n0023 [4]),
    .I5(intop2_3_IBUF_4),
    .O(\a4/b7/Madd_n0023_Madd_Madd_lut [3])
  );
  LUT6 #(
    .INIT ( 64'hF6D4B290092B4D6F ))
  \a4/b7/Madd_n0023_Madd_Madd_lut<2>  (
    .I0(intop1_4_IBUF_57),
    .I1(intop1_5_IBUF_49),
    .I2(\a4/temp_A6 [3]),
    .I3(\a4/b6/A_sum [3]),
    .I4(\a4/b6/n0023 [3]),
    .I5(intop2_2_IBUF_5),
    .O(\a4/b7/Madd_n0023_Madd_Madd_lut [2])
  );
  LUT6 #(
    .INIT ( 64'hF6D4B290092B4D6F ))
  \a4/b7/Madd_n0023_Madd_Madd_lut<1>  (
    .I0(intop1_4_IBUF_57),
    .I1(intop1_5_IBUF_49),
    .I2(\a4/temp_A6 [2]),
    .I3(\a4/b6/A_sum [2]),
    .I4(\a4/b6/n0023 [2]),
    .I5(intop2_1_IBUF_6),
    .O(\a4/b7/Madd_n0023_Madd_Madd_lut [1])
  );
  LUT6 #(
    .INIT ( 64'hF6D4B290092B4D6F ))
  \a4/b7/Madd_n0023_Madd_Madd_lut<0>  (
    .I0(intop1_4_IBUF_57),
    .I1(intop1_5_IBUF_49),
    .I2(\a4/temp_A6 [1]),
    .I3(\a4/b6/A_sum [1]),
    .I4(\a4/b6/n0023 [1]),
    .I5(intop2_0_IBUF_7),
    .O(\a4/b7/Madd_n0023_Madd_Madd_lut [0])
  );
  LUT6 #(
    .INIT ( 64'hF6D4B290092B4D6F ))
  \a4/b8/Madd_n0023_Madd_Madd_lut<7>  (
    .I0(intop1_5_IBUF_49),
    .I1(intop1_6_IBUF_40),
    .I2(\a4/temp_A7 [6]),
    .I3(\a4/b7/A_sum [7]),
    .I4(\a4/b7/n0023 [7]),
    .I5(intop2_7_IBUF_0),
    .O(\a4/b8/Madd_n0023_Madd_Madd_lut [7])
  );
  LUT6 #(
    .INIT ( 64'hF6D4B290092B4D6F ))
  \a4/b8/Madd_n0023_Madd_Madd_lut<6>  (
    .I0(intop1_5_IBUF_49),
    .I1(intop1_6_IBUF_40),
    .I2(\a4/temp_A7 [6]),
    .I3(\a4/b7/A_sum [7]),
    .I4(\a4/b7/n0023 [7]),
    .I5(intop2_6_IBUF_1),
    .O(\a4/b8/Madd_n0023_Madd_Madd_lut [6])
  );
  LUT6 #(
    .INIT ( 64'hF6D4B290092B4D6F ))
  \a4/b8/Madd_n0023_Madd_Madd_lut<5>  (
    .I0(intop1_5_IBUF_49),
    .I1(intop1_6_IBUF_40),
    .I2(\a4/temp_A7 [6]),
    .I3(\a4/b7/A_sum [6]),
    .I4(\a4/b7/n0023 [6]),
    .I5(intop2_5_IBUF_2),
    .O(\a4/b8/Madd_n0023_Madd_Madd_lut [5])
  );
  LUT6 #(
    .INIT ( 64'hF6D4B290092B4D6F ))
  \a4/b8/Madd_n0023_Madd_Madd_lut<4>  (
    .I0(intop1_5_IBUF_49),
    .I1(intop1_6_IBUF_40),
    .I2(\a4/temp_A7 [5]),
    .I3(\a4/b7/A_sum [5]),
    .I4(\a4/b7/n0023 [5]),
    .I5(intop2_4_IBUF_3),
    .O(\a4/b8/Madd_n0023_Madd_Madd_lut [4])
  );
  LUT6 #(
    .INIT ( 64'hF6D4B290092B4D6F ))
  \a4/b8/Madd_n0023_Madd_Madd_lut<3>  (
    .I0(intop1_5_IBUF_49),
    .I1(intop1_6_IBUF_40),
    .I2(\a4/temp_A7 [4]),
    .I3(\a4/b7/A_sum [4]),
    .I4(\a4/b7/n0023 [4]),
    .I5(intop2_3_IBUF_4),
    .O(\a4/b8/Madd_n0023_Madd_Madd_lut [3])
  );
  LUT6 #(
    .INIT ( 64'hF6D4B290092B4D6F ))
  \a4/b8/Madd_n0023_Madd_Madd_lut<2>  (
    .I0(intop1_5_IBUF_49),
    .I1(intop1_6_IBUF_40),
    .I2(\a4/temp_A7 [3]),
    .I3(\a4/b7/A_sum [3]),
    .I4(\a4/b7/n0023 [3]),
    .I5(intop2_2_IBUF_5),
    .O(\a4/b8/Madd_n0023_Madd_Madd_lut [2])
  );
  LUT6 #(
    .INIT ( 64'hF6D4B290092B4D6F ))
  \a4/b8/Madd_n0023_Madd_Madd_lut<1>  (
    .I0(intop1_5_IBUF_49),
    .I1(intop1_6_IBUF_40),
    .I2(\a4/temp_A7 [2]),
    .I3(\a4/b7/A_sum [2]),
    .I4(\a4/b7/n0023 [2]),
    .I5(intop2_1_IBUF_6),
    .O(\a4/b8/Madd_n0023_Madd_Madd_lut [1])
  );
  LUT6 #(
    .INIT ( 64'hF6D4B290092B4D6F ))
  \a4/b8/Madd_n0023_Madd_Madd_lut<0>  (
    .I0(intop1_5_IBUF_49),
    .I1(intop1_6_IBUF_40),
    .I2(\a4/temp_A7 [1]),
    .I3(\a4/b7/A_sum [1]),
    .I4(\a4/b7/n0023 [1]),
    .I5(intop2_0_IBUF_7),
    .O(\a4/b8/Madd_n0023_Madd_Madd_lut [0])
  );
  INV   \a4/b1/n0037<6>11_INV_0  (
    .I(intop2_6_IBUF_1),
    .O(\a4/b1/n0037<6>1 )
  );
  INV   \a4/b1/n0037<5>11_INV_0  (
    .I(intop2_5_IBUF_2),
    .O(\a4/b1/n0037<5>1 )
  );
  INV   \a4/b1/n0037<4>11_INV_0  (
    .I(intop2_4_IBUF_3),
    .O(\a4/b1/n0037<4>1 )
  );
  INV   \a4/b1/n0037<3>11_INV_0  (
    .I(intop2_3_IBUF_4),
    .O(\a4/b1/n0037<3>1 )
  );
  INV   \a4/b1/n0037<2>11_INV_0  (
    .I(intop2_2_IBUF_5),
    .O(\a4/b1/n0037<2>1 )
  );
  INV   \a4/b1/n0037<1>11_INV_0  (
    .I(intop2_1_IBUF_6),
    .O(\a4/b1/n0037<1>1 )
  );
  INV   \a4/b1/n0037<0>11_INV_0  (
    .I(intop2_0_IBUF_7),
    .O(\a4/b1/n0037<0>1 )
  );
  INV   \a4/b1/n0037<7>11_INV_0  (
    .I(intop2_7_IBUF_0),
    .O(\a4/b1/n0037<7>1 )
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

