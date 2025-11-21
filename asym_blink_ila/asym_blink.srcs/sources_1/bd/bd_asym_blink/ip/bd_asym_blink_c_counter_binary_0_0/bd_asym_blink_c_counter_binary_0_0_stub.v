// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Sat Nov 15 16:51:14 2025
// Host        : issam-XPS-9315 running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/issam/FPGA/repo/asym_blink_ila/asym_blink.srcs/sources_1/bd/bd_asym_blink/ip/bd_asym_blink_c_counter_binary_0_0/bd_asym_blink_c_counter_binary_0_0_stub.v
// Design      : bd_asym_blink_c_counter_binary_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_counter_binary_v12_0_14,Vivado 2020.1" *)
module bd_asym_blink_c_counter_binary_0_0(CLK, Q)
/* synthesis syn_black_box black_box_pad_pin="CLK,Q[20:0]" */;
  input CLK;
  output [20:0]Q;
endmodule
