-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Sat Nov 15 17:47:02 2025
-- Host        : issam-XPS-9315 running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top bd_asym_blink_c_counter_binary_0_1 -prefix
--               bd_asym_blink_c_counter_binary_0_1_ bd_asym_blink_c_counter_binary_0_0_stub.vhdl
-- Design      : bd_asym_blink_c_counter_binary_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bd_asym_blink_c_counter_binary_0_1 is
  Port ( 
    CLK : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 20 downto 0 )
  );

end bd_asym_blink_c_counter_binary_0_1;

architecture stub of bd_asym_blink_c_counter_binary_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,Q[20:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "c_counter_binary_v12_0_14,Vivado 2020.1";
begin
end;
