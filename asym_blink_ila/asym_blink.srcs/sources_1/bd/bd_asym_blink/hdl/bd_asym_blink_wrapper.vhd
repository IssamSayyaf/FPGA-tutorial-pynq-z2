--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
--Date        : Sat Nov 15 16:49:41 2025
--Host        : issam-XPS-9315 running 64-bit Ubuntu 24.04.3 LTS
--Command     : generate_target bd_asym_blink_wrapper.bd
--Design      : bd_asym_blink_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_asym_blink_wrapper is
  port (
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    led : out STD_LOGIC
  );
end bd_asym_blink_wrapper;

architecture STRUCTURE of bd_asym_blink_wrapper is
  component bd_asym_blink is
  port (
    led : out STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC
  );
  end component bd_asym_blink;
begin
bd_asym_blink_i: component bd_asym_blink
     port map (
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      led => led
    );
end STRUCTURE;
