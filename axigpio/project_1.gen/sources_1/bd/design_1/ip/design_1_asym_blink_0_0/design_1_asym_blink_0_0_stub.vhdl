-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Thu Nov 20 22:59:45 2025
-- Host        : issam-XPS-9315 running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/issam/FPGA/repo/axigpio/project_1.gen/sources_1/bd/design_1/ip/design_1_asym_blink_0_0/design_1_asym_blink_0_0_stub.vhdl
-- Design      : design_1_asym_blink_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_asym_blink_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    count : in STD_LOGIC_VECTOR ( 20 downto 0 );
    blink_on : in STD_LOGIC_VECTOR ( 20 downto 0 );
    blink_off : in STD_LOGIC_VECTOR ( 20 downto 0 );
    led : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_asym_blink_0_0 : entity is "design_1_asym_blink_0_0,asym_blink,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of design_1_asym_blink_0_0 : entity is "design_1_asym_blink_0_0,asym_blink,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=asym_blink,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=VERILOG}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_asym_blink_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_asym_blink_0_0 : entity is "module_ref";
end design_1_asym_blink_0_0;

architecture stub of design_1_asym_blink_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "clk,count[20:0],blink_on[20:0],blink_off[20:0],led";
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of clk : signal is "slave clk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "asym_blink,Vivado 2025.1";
begin
end;
