-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Thu Nov 20 22:59:55 2025
-- Host        : issam-XPS-9315 running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/issam/FPGA/repo/axigpio/project_1.gen/sources_1/bd/design_1/ip/design_1_c_counter_binary_0_0/design_1_c_counter_binary_0_0_stub.vhdl
-- Design      : design_1_c_counter_binary_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_c_counter_binary_0_0 is
  Port ( 
    CLK : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 20 downto 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_c_counter_binary_0_0 : entity is "design_1_c_counter_binary_0_0,c_counter_binary_v12_0_21,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of design_1_c_counter_binary_0_0 : entity is "design_1_c_counter_binary_0_0,c_counter_binary_v12_0_21,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=c_counter_binary,x_ipVersion=12.0,x_ipCoreRevision=21,x_ipLanguage=VHDL,x_ipSimLanguage=VERILOG,C_IMPLEMENTATION=0,C_VERBOSITY=0,C_XDEVICEFAMILY=zynq,C_WIDTH=21,C_HAS_CE=0,C_HAS_SCLR=0,C_RESTRICT_COUNT=0,C_COUNT_TO=1,C_COUNT_BY=1,C_COUNT_MODE=0,C_THRESH0_VALUE=1,C_CE_OVERRIDES_SYNC=0,C_HAS_THRESH0=0,C_HAS_LOAD=0,C_LOAD_LOW=0,C_LATENCY=1,C_FB_LATENCY=0,C_AINIT_VAL=0,C_SINIT_VAL=0,C_SCLR_OVERRIDES_SSET=1,C_HAS_SSET=0,C_HAS_SINIT=0}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_c_counter_binary_0_0 : entity is "yes";
end design_1_c_counter_binary_0_0;

architecture stub of design_1_c_counter_binary_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "CLK,Q[20:0]";
  attribute x_interface_info : string;
  attribute x_interface_info of CLK : signal is "xilinx.com:signal:clock:1.0 clk_intf CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of CLK : signal is "slave clk_intf";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of CLK : signal is "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of Q : signal is "xilinx.com:signal:data:1.0 q_intf DATA";
  attribute x_interface_mode of Q : signal is "master q_intf";
  attribute x_interface_parameter of Q : signal is "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 21} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 21}";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "c_counter_binary_v12_0_21,Vivado 2025.1";
begin
end;
