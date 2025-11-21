// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Thu Nov 20 22:59:45 2025
// Host        : issam-XPS-9315 running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/issam/FPGA/repo/axigpio/project_1.gen/sources_1/bd/design_1/ip/design_1_asym_blink_0_0/design_1_asym_blink_0_0_stub.v
// Design      : design_1_asym_blink_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "design_1_asym_blink_0_0,asym_blink,{}" *) (* core_generation_info = "design_1_asym_blink_0_0,asym_blink,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=asym_blink,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=VERILOG}" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* ip_definition_source = "module_ref" *) (* x_core_info = "asym_blink,Vivado 2025.1" *) 
module design_1_asym_blink_0_0(clk, count, blink_on, blink_off, led)
/* synthesis syn_black_box black_box_pad_pin="count[20:0],blink_on[20:0],blink_off[20:0],led" */
/* synthesis syn_force_seq_prim="clk" */;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_mode = "slave clk" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk /* synthesis syn_isclock = 1 */;
  input [20:0]count;
  input [20:0]blink_on;
  input [20:0]blink_off;
  output led;
endmodule
