// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Sat Nov 15 17:02:59 2025
// Host        : issam-XPS-9315 running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/issam/FPGA/repo/asym_blink/asym_blink.srcs/sources_1/bd/bd_asym_blink/ip/bd_asym_blink_asym_blink_0_0/bd_asym_blink_asym_blink_0_0_stub.v
// Design      : bd_asym_blink_asym_blink_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "asym_blink,Vivado 2020.1" *)
module bd_asym_blink_asym_blink_0_0(clk, count, led)
/* synthesis syn_black_box black_box_pad_pin="clk,count[20:0],led" */;
  input clk;
  input [20:0]count;
  output led;
endmodule
