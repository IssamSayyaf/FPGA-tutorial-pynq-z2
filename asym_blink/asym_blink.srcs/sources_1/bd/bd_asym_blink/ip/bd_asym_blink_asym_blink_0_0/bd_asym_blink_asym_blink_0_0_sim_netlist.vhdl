-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Sat Nov 15 17:02:59 2025
-- Host        : issam-XPS-9315 running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/issam/FPGA/repo/asym_blink/asym_blink.srcs/sources_1/bd/bd_asym_blink/ip/bd_asym_blink_asym_blink_0_0/bd_asym_blink_asym_blink_0_0_sim_netlist.vhdl
-- Design      : bd_asym_blink_asym_blink_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_asym_blink_asym_blink_0_0_asym_blink is
  port (
    led : out STD_LOGIC;
    count : in STD_LOGIC_VECTOR ( 20 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bd_asym_blink_asym_blink_0_0_asym_blink : entity is "asym_blink";
end bd_asym_blink_asym_blink_0_0_asym_blink;

architecture STRUCTURE of bd_asym_blink_asym_blink_0_0_asym_blink is
  signal \^led\ : STD_LOGIC;
  signal led_i_1_n_0 : STD_LOGIC;
  signal led_i_2_n_0 : STD_LOGIC;
  signal led_i_3_n_0 : STD_LOGIC;
  signal led_i_4_n_0 : STD_LOGIC;
  signal led_i_5_n_0 : STD_LOGIC;
  signal led_i_6_n_0 : STD_LOGIC;
begin
  led <= \^led\;
led_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCC8CFCCCC"
    )
        port map (
      I0 => led_i_2_n_0,
      I1 => \^led\,
      I2 => led_i_3_n_0,
      I3 => led_i_4_n_0,
      I4 => led_i_5_n_0,
      I5 => led_i_6_n_0,
      O => led_i_1_n_0
    );
led_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => count(17),
      I1 => count(16),
      I2 => count(18),
      I3 => count(10),
      I4 => count(14),
      I5 => count(19),
      O => led_i_2_n_0
    );
led_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => count(20),
      I1 => count(5),
      I2 => count(9),
      I3 => count(4),
      I4 => count(3),
      I5 => count(15),
      O => led_i_3_n_0
    );
led_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
        port map (
      I0 => count(17),
      I1 => count(16),
      I2 => count(18),
      I3 => count(19),
      I4 => count(10),
      I5 => count(14),
      O => led_i_4_n_0
    );
led_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => count(2),
      I1 => count(1),
      I2 => count(0),
      O => led_i_5_n_0
    );
led_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => count(7),
      I1 => count(8),
      I2 => count(6),
      I3 => count(12),
      I4 => count(11),
      I5 => count(13),
      O => led_i_6_n_0
    );
led_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => led_i_1_n_0,
      Q => \^led\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_asym_blink_asym_blink_0_0 is
  port (
    clk : in STD_LOGIC;
    count : in STD_LOGIC_VECTOR ( 20 downto 0 );
    led : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of bd_asym_blink_asym_blink_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bd_asym_blink_asym_blink_0_0 : entity is "bd_asym_blink_asym_blink_0_0,asym_blink,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of bd_asym_blink_asym_blink_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of bd_asym_blink_asym_blink_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of bd_asym_blink_asym_blink_0_0 : entity is "asym_blink,Vivado 2020.1";
end bd_asym_blink_asym_blink_0_0;

architecture STRUCTURE of bd_asym_blink_asym_blink_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN bd_asym_blink_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
begin
U0: entity work.bd_asym_blink_asym_blink_0_0_asym_blink
     port map (
      clk => clk,
      count(20 downto 0) => count(20 downto 0),
      led => led
    );
end STRUCTURE;
