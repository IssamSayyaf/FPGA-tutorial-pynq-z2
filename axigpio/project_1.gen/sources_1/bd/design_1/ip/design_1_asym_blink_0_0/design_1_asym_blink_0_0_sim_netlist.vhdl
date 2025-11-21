-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Thu Nov 20 22:59:45 2025
-- Host        : issam-XPS-9315 running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/issam/FPGA/repo/axigpio/project_1.gen/sources_1/bd/design_1/ip/design_1_asym_blink_0_0/design_1_asym_blink_0_0_sim_netlist.vhdl
-- Design      : design_1_asym_blink_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_asym_blink_0_0_asym_blink is
  port (
    led : out STD_LOGIC;
    blink_on : in STD_LOGIC_VECTOR ( 20 downto 0 );
    count : in STD_LOGIC_VECTOR ( 20 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_asym_blink_0_0_asym_blink : entity is "asym_blink";
end design_1_asym_blink_0_0_asym_blink;

architecture STRUCTURE of design_1_asym_blink_0_0_asym_blink is
  signal led_i_10_n_0 : STD_LOGIC;
  signal led_i_11_n_0 : STD_LOGIC;
  signal led_i_12_n_0 : STD_LOGIC;
  signal led_i_13_n_0 : STD_LOGIC;
  signal led_i_14_n_0 : STD_LOGIC;
  signal led_i_15_n_0 : STD_LOGIC;
  signal led_i_16_n_0 : STD_LOGIC;
  signal led_i_17_n_0 : STD_LOGIC;
  signal led_i_18_n_0 : STD_LOGIC;
  signal led_i_19_n_0 : STD_LOGIC;
  signal led_i_20_n_0 : STD_LOGIC;
  signal led_i_21_n_0 : STD_LOGIC;
  signal led_i_22_n_0 : STD_LOGIC;
  signal led_i_23_n_0 : STD_LOGIC;
  signal led_i_24_n_0 : STD_LOGIC;
  signal led_i_25_n_0 : STD_LOGIC;
  signal led_i_3_n_0 : STD_LOGIC;
  signal led_i_4_n_0 : STD_LOGIC;
  signal led_i_5_n_0 : STD_LOGIC;
  signal led_i_6_n_0 : STD_LOGIC;
  signal led_i_7_n_0 : STD_LOGIC;
  signal led_i_8_n_0 : STD_LOGIC;
  signal led_reg_i_1_n_2 : STD_LOGIC;
  signal led_reg_i_1_n_3 : STD_LOGIC;
  signal led_reg_i_2_n_0 : STD_LOGIC;
  signal led_reg_i_2_n_1 : STD_LOGIC;
  signal led_reg_i_2_n_2 : STD_LOGIC;
  signal led_reg_i_2_n_3 : STD_LOGIC;
  signal led_reg_i_9_n_0 : STD_LOGIC;
  signal led_reg_i_9_n_1 : STD_LOGIC;
  signal led_reg_i_9_n_2 : STD_LOGIC;
  signal led_reg_i_9_n_3 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal NLW_led_reg_i_1_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_led_reg_i_1_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_led_reg_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_led_reg_i_9_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of led_reg_i_1 : label is 11;
  attribute COMPARATOR_THRESHOLD of led_reg_i_2 : label is 11;
  attribute COMPARATOR_THRESHOLD of led_reg_i_9 : label is 11;
begin
led_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => blink_on(14),
      I1 => count(14),
      I2 => count(15),
      I3 => blink_on(15),
      O => led_i_10_n_0
    );
led_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => blink_on(12),
      I1 => count(12),
      I2 => count(13),
      I3 => blink_on(13),
      O => led_i_11_n_0
    );
led_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => blink_on(10),
      I1 => count(10),
      I2 => count(11),
      I3 => blink_on(11),
      O => led_i_12_n_0
    );
led_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => blink_on(8),
      I1 => count(8),
      I2 => count(9),
      I3 => blink_on(9),
      O => led_i_13_n_0
    );
led_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => blink_on(14),
      I1 => count(14),
      I2 => blink_on(15),
      I3 => count(15),
      O => led_i_14_n_0
    );
led_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => blink_on(12),
      I1 => count(12),
      I2 => blink_on(13),
      I3 => count(13),
      O => led_i_15_n_0
    );
led_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => blink_on(10),
      I1 => count(10),
      I2 => blink_on(11),
      I3 => count(11),
      O => led_i_16_n_0
    );
led_i_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => blink_on(8),
      I1 => count(8),
      I2 => blink_on(9),
      I3 => count(9),
      O => led_i_17_n_0
    );
led_i_18: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => blink_on(6),
      I1 => count(6),
      I2 => count(7),
      I3 => blink_on(7),
      O => led_i_18_n_0
    );
led_i_19: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => blink_on(4),
      I1 => count(4),
      I2 => count(5),
      I3 => blink_on(5),
      O => led_i_19_n_0
    );
led_i_20: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => blink_on(2),
      I1 => count(2),
      I2 => count(3),
      I3 => blink_on(3),
      O => led_i_20_n_0
    );
led_i_21: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => blink_on(0),
      I1 => count(0),
      I2 => count(1),
      I3 => blink_on(1),
      O => led_i_21_n_0
    );
led_i_22: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => blink_on(6),
      I1 => count(6),
      I2 => blink_on(7),
      I3 => count(7),
      O => led_i_22_n_0
    );
led_i_23: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => blink_on(4),
      I1 => count(4),
      I2 => blink_on(5),
      I3 => count(5),
      O => led_i_23_n_0
    );
led_i_24: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => blink_on(2),
      I1 => count(2),
      I2 => blink_on(3),
      I3 => count(3),
      O => led_i_24_n_0
    );
led_i_25: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => blink_on(0),
      I1 => count(0),
      I2 => blink_on(1),
      I3 => count(1),
      O => led_i_25_n_0
    );
led_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => blink_on(20),
      I1 => count(20),
      O => led_i_3_n_0
    );
led_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => blink_on(18),
      I1 => count(18),
      I2 => count(19),
      I3 => blink_on(19),
      O => led_i_4_n_0
    );
led_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => blink_on(16),
      I1 => count(16),
      I2 => count(17),
      I3 => blink_on(17),
      O => led_i_5_n_0
    );
led_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => count(20),
      I1 => blink_on(20),
      O => led_i_6_n_0
    );
led_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => blink_on(18),
      I1 => count(18),
      I2 => blink_on(19),
      I3 => count(19),
      O => led_i_7_n_0
    );
led_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => blink_on(16),
      I1 => count(16),
      I2 => blink_on(17),
      I3 => count(17),
      O => led_i_8_n_0
    );
led_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in,
      Q => led,
      R => '0'
    );
led_reg_i_1: unisim.vcomponents.CARRY4
     port map (
      CI => led_reg_i_2_n_0,
      CO(3) => NLW_led_reg_i_1_CO_UNCONNECTED(3),
      CO(2) => p_0_in,
      CO(1) => led_reg_i_1_n_2,
      CO(0) => led_reg_i_1_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => led_i_3_n_0,
      DI(1) => led_i_4_n_0,
      DI(0) => led_i_5_n_0,
      O(3 downto 0) => NLW_led_reg_i_1_O_UNCONNECTED(3 downto 0),
      S(3) => '0',
      S(2) => led_i_6_n_0,
      S(1) => led_i_7_n_0,
      S(0) => led_i_8_n_0
    );
led_reg_i_2: unisim.vcomponents.CARRY4
     port map (
      CI => led_reg_i_9_n_0,
      CO(3) => led_reg_i_2_n_0,
      CO(2) => led_reg_i_2_n_1,
      CO(1) => led_reg_i_2_n_2,
      CO(0) => led_reg_i_2_n_3,
      CYINIT => '0',
      DI(3) => led_i_10_n_0,
      DI(2) => led_i_11_n_0,
      DI(1) => led_i_12_n_0,
      DI(0) => led_i_13_n_0,
      O(3 downto 0) => NLW_led_reg_i_2_O_UNCONNECTED(3 downto 0),
      S(3) => led_i_14_n_0,
      S(2) => led_i_15_n_0,
      S(1) => led_i_16_n_0,
      S(0) => led_i_17_n_0
    );
led_reg_i_9: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => led_reg_i_9_n_0,
      CO(2) => led_reg_i_9_n_1,
      CO(1) => led_reg_i_9_n_2,
      CO(0) => led_reg_i_9_n_3,
      CYINIT => '0',
      DI(3) => led_i_18_n_0,
      DI(2) => led_i_19_n_0,
      DI(1) => led_i_20_n_0,
      DI(0) => led_i_21_n_0,
      O(3 downto 0) => NLW_led_reg_i_9_O_UNCONNECTED(3 downto 0),
      S(3) => led_i_22_n_0,
      S(2) => led_i_23_n_0,
      S(1) => led_i_24_n_0,
      S(0) => led_i_25_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_asym_blink_0_0 is
  port (
    clk : in STD_LOGIC;
    count : in STD_LOGIC_VECTOR ( 20 downto 0 );
    blink_on : in STD_LOGIC_VECTOR ( 20 downto 0 );
    blink_off : in STD_LOGIC_VECTOR ( 20 downto 0 );
    led : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_asym_blink_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_asym_blink_0_0 : entity is "design_1_asym_blink_0_0,asym_blink,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_asym_blink_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_asym_blink_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_asym_blink_0_0 : entity is "asym_blink,Vivado 2025.1";
end design_1_asym_blink_0_0;

architecture STRUCTURE of design_1_asym_blink_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of clk : signal is "slave clk";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
begin
U0: entity work.design_1_asym_blink_0_0_asym_blink
     port map (
      blink_on(20 downto 0) => blink_on(20 downto 0),
      clk => clk,
      count(20 downto 0) => count(20 downto 0),
      led => led
    );
end STRUCTURE;
