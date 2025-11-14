--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
--Date        : Fri Nov 14 22:07:35 2025
--Host        : issam-XPS-9315 running 64-bit Ubuntu 24.04.3 LTS
--Command     : generate_target blink_bd_wrapper.bd
--Design      : blink_bd_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity blink_bd_wrapper is
  port (
    clk : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
end blink_bd_wrapper;

architecture STRUCTURE of blink_bd_wrapper is
  component blink_bd is
  port (
    clk : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component blink_bd;
begin
blink_bd_i: component blink_bd
     port map (
      clk => clk,
      led(0) => led(0)
    );
end STRUCTURE;
