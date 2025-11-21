-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Thu Nov 20 22:59:51 2025
-- Host        : issam-XPS-9315 running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/issam/FPGA/repo/axigpio/project_1.gen/sources_1/bd/design_1/ip/design_1_axilite_slave_0_0/design_1_axilite_slave_0_0_sim_netlist.vhdl
-- Design      : design_1_axilite_slave_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axilite_slave_0_0_axilite_slave is
  port (
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BVALID : out STD_LOGIC;
    LED_OFF_COUNT : out STD_LOGIC_VECTOR ( 20 downto 0 );
    LED_ON_COUNT : out STD_LOGIC_VECTOR ( 20 downto 0 );
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 20 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 20 downto 0 );
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axilite_slave_0_0_axilite_slave : entity is "axilite_slave";
end design_1_axilite_slave_0_0_axilite_slave;

architecture STRUCTURE of design_1_axilite_slave_0_0_axilite_slave is
  signal \^led_off_count\ : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal \^led_on_count\ : STD_LOGIC_VECTOR ( 20 downto 0 );
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal \S_AXI_RDATA[20]_i_2_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[20]_i_3_n_0\ : STD_LOGIC;
  signal \S_AXI_RDATA[20]_i_4_n_0\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal \axi_araddr_reg_n_0_[0]\ : STD_LOGIC;
  signal \axi_araddr_reg_n_0_[10]\ : STD_LOGIC;
  signal \axi_araddr_reg_n_0_[11]\ : STD_LOGIC;
  signal \axi_araddr_reg_n_0_[1]\ : STD_LOGIC;
  signal \axi_araddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \axi_araddr_reg_n_0_[3]\ : STD_LOGIC;
  signal \axi_araddr_reg_n_0_[4]\ : STD_LOGIC;
  signal \axi_araddr_reg_n_0_[5]\ : STD_LOGIC;
  signal \axi_araddr_reg_n_0_[6]\ : STD_LOGIC;
  signal \axi_araddr_reg_n_0_[7]\ : STD_LOGIC;
  signal \axi_araddr_reg_n_0_[8]\ : STD_LOGIC;
  signal \axi_araddr_reg_n_0_[9]\ : STD_LOGIC;
  signal axi_arready1 : STD_LOGIC;
  signal axi_awaddr : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \axi_awaddr_reg_n_0_[10]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[11]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[4]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[5]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[6]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[7]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[8]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[9]\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_bvalid0 : STD_LOGIC;
  signal \axi_rvalid0__0\ : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal led_off_count_reg : STD_LOGIC;
  signal led_on_count_reg : STD_LOGIC;
  signal \led_on_count_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \led_on_count_reg[20]_i_3_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 20 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_bvalid_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair0";
begin
  LED_OFF_COUNT(20 downto 0) <= \^led_off_count\(20 downto 0);
  LED_ON_COUNT(20 downto 0) <= \^led_on_count\(20 downto 0);
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_BVALID <= \^s_axi_bvalid\;
  S_AXI_RVALID <= \^s_axi_rvalid\;
  S_AXI_WREADY <= \^s_axi_wready\;
\S_AXI_RDATA[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0000000C0000000"
    )
        port map (
      I0 => \^led_off_count\(0),
      I1 => \^led_on_count\(0),
      I2 => \S_AXI_RDATA[20]_i_2_n_0\,
      I3 => \S_AXI_RDATA[20]_i_3_n_0\,
      I4 => \S_AXI_RDATA[20]_i_4_n_0\,
      I5 => \axi_araddr_reg_n_0_[2]\,
      O => p_1_in(0)
    );
\S_AXI_RDATA[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0000000C0000000"
    )
        port map (
      I0 => \^led_off_count\(10),
      I1 => \^led_on_count\(10),
      I2 => \S_AXI_RDATA[20]_i_2_n_0\,
      I3 => \S_AXI_RDATA[20]_i_3_n_0\,
      I4 => \S_AXI_RDATA[20]_i_4_n_0\,
      I5 => \axi_araddr_reg_n_0_[2]\,
      O => p_1_in(10)
    );
\S_AXI_RDATA[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0000000C0000000"
    )
        port map (
      I0 => \^led_off_count\(11),
      I1 => \^led_on_count\(11),
      I2 => \S_AXI_RDATA[20]_i_2_n_0\,
      I3 => \S_AXI_RDATA[20]_i_3_n_0\,
      I4 => \S_AXI_RDATA[20]_i_4_n_0\,
      I5 => \axi_araddr_reg_n_0_[2]\,
      O => p_1_in(11)
    );
\S_AXI_RDATA[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0000000C0000000"
    )
        port map (
      I0 => \^led_off_count\(12),
      I1 => \^led_on_count\(12),
      I2 => \S_AXI_RDATA[20]_i_2_n_0\,
      I3 => \S_AXI_RDATA[20]_i_3_n_0\,
      I4 => \S_AXI_RDATA[20]_i_4_n_0\,
      I5 => \axi_araddr_reg_n_0_[2]\,
      O => p_1_in(12)
    );
\S_AXI_RDATA[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0000000C0000000"
    )
        port map (
      I0 => \^led_off_count\(13),
      I1 => \^led_on_count\(13),
      I2 => \S_AXI_RDATA[20]_i_2_n_0\,
      I3 => \S_AXI_RDATA[20]_i_3_n_0\,
      I4 => \S_AXI_RDATA[20]_i_4_n_0\,
      I5 => \axi_araddr_reg_n_0_[2]\,
      O => p_1_in(13)
    );
\S_AXI_RDATA[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0000000C0000000"
    )
        port map (
      I0 => \^led_off_count\(14),
      I1 => \^led_on_count\(14),
      I2 => \S_AXI_RDATA[20]_i_2_n_0\,
      I3 => \S_AXI_RDATA[20]_i_3_n_0\,
      I4 => \S_AXI_RDATA[20]_i_4_n_0\,
      I5 => \axi_araddr_reg_n_0_[2]\,
      O => p_1_in(14)
    );
\S_AXI_RDATA[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0000000C0000000"
    )
        port map (
      I0 => \^led_off_count\(15),
      I1 => \^led_on_count\(15),
      I2 => \S_AXI_RDATA[20]_i_2_n_0\,
      I3 => \S_AXI_RDATA[20]_i_3_n_0\,
      I4 => \S_AXI_RDATA[20]_i_4_n_0\,
      I5 => \axi_araddr_reg_n_0_[2]\,
      O => p_1_in(15)
    );
\S_AXI_RDATA[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0000000C0000000"
    )
        port map (
      I0 => \^led_off_count\(16),
      I1 => \^led_on_count\(16),
      I2 => \S_AXI_RDATA[20]_i_2_n_0\,
      I3 => \S_AXI_RDATA[20]_i_3_n_0\,
      I4 => \S_AXI_RDATA[20]_i_4_n_0\,
      I5 => \axi_araddr_reg_n_0_[2]\,
      O => p_1_in(16)
    );
\S_AXI_RDATA[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0000000C0000000"
    )
        port map (
      I0 => \^led_off_count\(17),
      I1 => \^led_on_count\(17),
      I2 => \S_AXI_RDATA[20]_i_2_n_0\,
      I3 => \S_AXI_RDATA[20]_i_3_n_0\,
      I4 => \S_AXI_RDATA[20]_i_4_n_0\,
      I5 => \axi_araddr_reg_n_0_[2]\,
      O => p_1_in(17)
    );
\S_AXI_RDATA[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0000000C0000000"
    )
        port map (
      I0 => \^led_off_count\(18),
      I1 => \^led_on_count\(18),
      I2 => \S_AXI_RDATA[20]_i_2_n_0\,
      I3 => \S_AXI_RDATA[20]_i_3_n_0\,
      I4 => \S_AXI_RDATA[20]_i_4_n_0\,
      I5 => \axi_araddr_reg_n_0_[2]\,
      O => p_1_in(18)
    );
\S_AXI_RDATA[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0000000C0000000"
    )
        port map (
      I0 => \^led_off_count\(19),
      I1 => \^led_on_count\(19),
      I2 => \S_AXI_RDATA[20]_i_2_n_0\,
      I3 => \S_AXI_RDATA[20]_i_3_n_0\,
      I4 => \S_AXI_RDATA[20]_i_4_n_0\,
      I5 => \axi_araddr_reg_n_0_[2]\,
      O => p_1_in(19)
    );
\S_AXI_RDATA[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0000000C0000000"
    )
        port map (
      I0 => \^led_off_count\(1),
      I1 => \^led_on_count\(1),
      I2 => \S_AXI_RDATA[20]_i_2_n_0\,
      I3 => \S_AXI_RDATA[20]_i_3_n_0\,
      I4 => \S_AXI_RDATA[20]_i_4_n_0\,
      I5 => \axi_araddr_reg_n_0_[2]\,
      O => p_1_in(1)
    );
\S_AXI_RDATA[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0000000C0000000"
    )
        port map (
      I0 => \^led_off_count\(20),
      I1 => \^led_on_count\(20),
      I2 => \S_AXI_RDATA[20]_i_2_n_0\,
      I3 => \S_AXI_RDATA[20]_i_3_n_0\,
      I4 => \S_AXI_RDATA[20]_i_4_n_0\,
      I5 => \axi_araddr_reg_n_0_[2]\,
      O => p_1_in(20)
    );
\S_AXI_RDATA[20]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[10]\,
      I1 => \axi_araddr_reg_n_0_[9]\,
      I2 => \axi_araddr_reg_n_0_[8]\,
      I3 => \axi_araddr_reg_n_0_[7]\,
      O => \S_AXI_RDATA[20]_i_2_n_0\
    );
\S_AXI_RDATA[20]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[1]\,
      I1 => \axi_araddr_reg_n_0_[0]\,
      I2 => \axi_araddr_reg_n_0_[11]\,
      O => \S_AXI_RDATA[20]_i_3_n_0\
    );
\S_AXI_RDATA[20]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \axi_araddr_reg_n_0_[6]\,
      I1 => \axi_araddr_reg_n_0_[5]\,
      I2 => \axi_araddr_reg_n_0_[4]\,
      I3 => \axi_araddr_reg_n_0_[3]\,
      O => \S_AXI_RDATA[20]_i_4_n_0\
    );
\S_AXI_RDATA[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0000000C0000000"
    )
        port map (
      I0 => \^led_off_count\(2),
      I1 => \^led_on_count\(2),
      I2 => \S_AXI_RDATA[20]_i_2_n_0\,
      I3 => \S_AXI_RDATA[20]_i_3_n_0\,
      I4 => \S_AXI_RDATA[20]_i_4_n_0\,
      I5 => \axi_araddr_reg_n_0_[2]\,
      O => p_1_in(2)
    );
\S_AXI_RDATA[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0000000C0000000"
    )
        port map (
      I0 => \^led_off_count\(3),
      I1 => \^led_on_count\(3),
      I2 => \S_AXI_RDATA[20]_i_2_n_0\,
      I3 => \S_AXI_RDATA[20]_i_3_n_0\,
      I4 => \S_AXI_RDATA[20]_i_4_n_0\,
      I5 => \axi_araddr_reg_n_0_[2]\,
      O => p_1_in(3)
    );
\S_AXI_RDATA[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0000000C0000000"
    )
        port map (
      I0 => \^led_off_count\(4),
      I1 => \^led_on_count\(4),
      I2 => \S_AXI_RDATA[20]_i_2_n_0\,
      I3 => \S_AXI_RDATA[20]_i_3_n_0\,
      I4 => \S_AXI_RDATA[20]_i_4_n_0\,
      I5 => \axi_araddr_reg_n_0_[2]\,
      O => p_1_in(4)
    );
\S_AXI_RDATA[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0000000C0000000"
    )
        port map (
      I0 => \^led_off_count\(5),
      I1 => \^led_on_count\(5),
      I2 => \S_AXI_RDATA[20]_i_2_n_0\,
      I3 => \S_AXI_RDATA[20]_i_3_n_0\,
      I4 => \S_AXI_RDATA[20]_i_4_n_0\,
      I5 => \axi_araddr_reg_n_0_[2]\,
      O => p_1_in(5)
    );
\S_AXI_RDATA[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0000000C0000000"
    )
        port map (
      I0 => \^led_off_count\(6),
      I1 => \^led_on_count\(6),
      I2 => \S_AXI_RDATA[20]_i_2_n_0\,
      I3 => \S_AXI_RDATA[20]_i_3_n_0\,
      I4 => \S_AXI_RDATA[20]_i_4_n_0\,
      I5 => \axi_araddr_reg_n_0_[2]\,
      O => p_1_in(6)
    );
\S_AXI_RDATA[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0000000C0000000"
    )
        port map (
      I0 => \^led_off_count\(7),
      I1 => \^led_on_count\(7),
      I2 => \S_AXI_RDATA[20]_i_2_n_0\,
      I3 => \S_AXI_RDATA[20]_i_3_n_0\,
      I4 => \S_AXI_RDATA[20]_i_4_n_0\,
      I5 => \axi_araddr_reg_n_0_[2]\,
      O => p_1_in(7)
    );
\S_AXI_RDATA[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0000000C0000000"
    )
        port map (
      I0 => \^led_off_count\(8),
      I1 => \^led_on_count\(8),
      I2 => \S_AXI_RDATA[20]_i_2_n_0\,
      I3 => \S_AXI_RDATA[20]_i_3_n_0\,
      I4 => \S_AXI_RDATA[20]_i_4_n_0\,
      I5 => \axi_araddr_reg_n_0_[2]\,
      O => p_1_in(8)
    );
\S_AXI_RDATA[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0000000C0000000"
    )
        port map (
      I0 => \^led_off_count\(9),
      I1 => \^led_on_count\(9),
      I2 => \S_AXI_RDATA[20]_i_2_n_0\,
      I3 => \S_AXI_RDATA[20]_i_3_n_0\,
      I4 => \S_AXI_RDATA[20]_i_4_n_0\,
      I5 => \axi_araddr_reg_n_0_[2]\,
      O => p_1_in(9)
    );
\S_AXI_RDATA_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(0),
      Q => S_AXI_RDATA(0),
      R => p_0_in
    );
\S_AXI_RDATA_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(10),
      Q => S_AXI_RDATA(10),
      R => p_0_in
    );
\S_AXI_RDATA_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(11),
      Q => S_AXI_RDATA(11),
      R => p_0_in
    );
\S_AXI_RDATA_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(12),
      Q => S_AXI_RDATA(12),
      R => p_0_in
    );
\S_AXI_RDATA_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(13),
      Q => S_AXI_RDATA(13),
      R => p_0_in
    );
\S_AXI_RDATA_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(14),
      Q => S_AXI_RDATA(14),
      R => p_0_in
    );
\S_AXI_RDATA_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(15),
      Q => S_AXI_RDATA(15),
      R => p_0_in
    );
\S_AXI_RDATA_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(16),
      Q => S_AXI_RDATA(16),
      R => p_0_in
    );
\S_AXI_RDATA_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(17),
      Q => S_AXI_RDATA(17),
      R => p_0_in
    );
\S_AXI_RDATA_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(18),
      Q => S_AXI_RDATA(18),
      R => p_0_in
    );
\S_AXI_RDATA_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(19),
      Q => S_AXI_RDATA(19),
      R => p_0_in
    );
\S_AXI_RDATA_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(1),
      Q => S_AXI_RDATA(1),
      R => p_0_in
    );
\S_AXI_RDATA_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(20),
      Q => S_AXI_RDATA(20),
      R => p_0_in
    );
\S_AXI_RDATA_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(2),
      Q => S_AXI_RDATA(2),
      R => p_0_in
    );
\S_AXI_RDATA_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(3),
      Q => S_AXI_RDATA(3),
      R => p_0_in
    );
\S_AXI_RDATA_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(4),
      Q => S_AXI_RDATA(4),
      R => p_0_in
    );
\S_AXI_RDATA_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(5),
      Q => S_AXI_RDATA(5),
      R => p_0_in
    );
\S_AXI_RDATA_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(6),
      Q => S_AXI_RDATA(6),
      R => p_0_in
    );
\S_AXI_RDATA_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(7),
      Q => S_AXI_RDATA(7),
      R => p_0_in
    );
\S_AXI_RDATA_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(8),
      Q => S_AXI_RDATA(8),
      R => p_0_in
    );
\S_AXI_RDATA_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => p_1_in(9),
      Q => S_AXI_RDATA(9),
      R => p_0_in
    );
\axi_araddr[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => S_AXI_ARVALID,
      I1 => \^s_axi_arready\,
      O => axi_arready1
    );
\axi_araddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_arready1,
      D => S_AXI_ARADDR(0),
      Q => \axi_araddr_reg_n_0_[0]\,
      R => p_0_in
    );
\axi_araddr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_arready1,
      D => S_AXI_ARADDR(10),
      Q => \axi_araddr_reg_n_0_[10]\,
      R => p_0_in
    );
\axi_araddr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_arready1,
      D => S_AXI_ARADDR(11),
      Q => \axi_araddr_reg_n_0_[11]\,
      R => p_0_in
    );
\axi_araddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_arready1,
      D => S_AXI_ARADDR(1),
      Q => \axi_araddr_reg_n_0_[1]\,
      R => p_0_in
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_arready1,
      D => S_AXI_ARADDR(2),
      Q => \axi_araddr_reg_n_0_[2]\,
      R => p_0_in
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_arready1,
      D => S_AXI_ARADDR(3),
      Q => \axi_araddr_reg_n_0_[3]\,
      R => p_0_in
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_arready1,
      D => S_AXI_ARADDR(4),
      Q => \axi_araddr_reg_n_0_[4]\,
      R => p_0_in
    );
\axi_araddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_arready1,
      D => S_AXI_ARADDR(5),
      Q => \axi_araddr_reg_n_0_[5]\,
      R => p_0_in
    );
\axi_araddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_arready1,
      D => S_AXI_ARADDR(6),
      Q => \axi_araddr_reg_n_0_[6]\,
      R => p_0_in
    );
\axi_araddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_arready1,
      D => S_AXI_ARADDR(7),
      Q => \axi_araddr_reg_n_0_[7]\,
      R => p_0_in
    );
\axi_araddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_arready1,
      D => S_AXI_ARADDR(8),
      Q => \axi_araddr_reg_n_0_[8]\,
      R => p_0_in
    );
\axi_araddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_arready1,
      D => S_AXI_ARADDR(9),
      Q => \axi_araddr_reg_n_0_[9]\,
      R => p_0_in
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => S_AXI_ARVALID,
      Q => \^s_axi_arready\,
      R => p_0_in
    );
\axi_awaddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready0,
      D => S_AXI_AWADDR(0),
      Q => axi_awaddr(0),
      R => p_0_in
    );
\axi_awaddr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready0,
      D => S_AXI_AWADDR(10),
      Q => \axi_awaddr_reg_n_0_[10]\,
      R => p_0_in
    );
\axi_awaddr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready0,
      D => S_AXI_AWADDR(11),
      Q => \axi_awaddr_reg_n_0_[11]\,
      R => p_0_in
    );
\axi_awaddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready0,
      D => S_AXI_AWADDR(1),
      Q => axi_awaddr(1),
      R => p_0_in
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready0,
      D => S_AXI_AWADDR(2),
      Q => axi_awaddr(2),
      R => p_0_in
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready0,
      D => S_AXI_AWADDR(3),
      Q => p_0_in0,
      R => p_0_in
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready0,
      D => S_AXI_AWADDR(4),
      Q => \axi_awaddr_reg_n_0_[4]\,
      R => p_0_in
    );
\axi_awaddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready0,
      D => S_AXI_AWADDR(5),
      Q => \axi_awaddr_reg_n_0_[5]\,
      R => p_0_in
    );
\axi_awaddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready0,
      D => S_AXI_AWADDR(6),
      Q => \axi_awaddr_reg_n_0_[6]\,
      R => p_0_in
    );
\axi_awaddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready0,
      D => S_AXI_AWADDR(7),
      Q => \axi_awaddr_reg_n_0_[7]\,
      R => p_0_in
    );
\axi_awaddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready0,
      D => S_AXI_AWADDR(8),
      Q => \axi_awaddr_reg_n_0_[8]\,
      R => p_0_in
    );
\axi_awaddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => axi_awready0,
      D => S_AXI_AWADDR(9),
      Q => \axi_awaddr_reg_n_0_[9]\,
      R => p_0_in
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXI_ARESETN,
      O => p_0_in
    );
axi_awready_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => S_AXI_AWVALID,
      I2 => S_AXI_WVALID,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => p_0_in
    );
axi_bvalid_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \^s_axi_bvalid\,
      I1 => \^s_axi_wready\,
      I2 => \^s_axi_awready\,
      I3 => S_AXI_WVALID,
      I4 => S_AXI_AWVALID,
      O => axi_bvalid0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_bvalid0,
      Q => \^s_axi_bvalid\,
      R => p_0_in
    );
axi_rvalid0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => S_AXI_ARVALID,
      I1 => \^s_axi_rvalid\,
      I2 => \^s_axi_arready\,
      O => \axi_rvalid0__0\
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => \axi_rvalid0__0\,
      Q => \^s_axi_rvalid\,
      R => p_0_in
    );
axi_wready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => S_AXI_AWVALID,
      I2 => S_AXI_WVALID,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => p_0_in
    );
\led_off_count_reg[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \led_on_count_reg[20]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[10]\,
      I2 => \axi_awaddr_reg_n_0_[8]\,
      I3 => \axi_awaddr_reg_n_0_[4]\,
      I4 => axi_awaddr(2),
      I5 => \led_on_count_reg[20]_i_3_n_0\,
      O => led_off_count_reg
    );
\led_off_count_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => led_off_count_reg,
      D => S_AXI_WDATA(0),
      Q => \^led_off_count\(0),
      R => p_0_in
    );
\led_off_count_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => led_off_count_reg,
      D => S_AXI_WDATA(10),
      Q => \^led_off_count\(10),
      R => p_0_in
    );
\led_off_count_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => led_off_count_reg,
      D => S_AXI_WDATA(11),
      Q => \^led_off_count\(11),
      R => p_0_in
    );
\led_off_count_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => led_off_count_reg,
      D => S_AXI_WDATA(12),
      Q => \^led_off_count\(12),
      R => p_0_in
    );
\led_off_count_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => led_off_count_reg,
      D => S_AXI_WDATA(13),
      Q => \^led_off_count\(13),
      R => p_0_in
    );
\led_off_count_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => led_off_count_reg,
      D => S_AXI_WDATA(14),
      Q => \^led_off_count\(14),
      R => p_0_in
    );
\led_off_count_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => led_off_count_reg,
      D => S_AXI_WDATA(15),
      Q => \^led_off_count\(15),
      R => p_0_in
    );
\led_off_count_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => led_off_count_reg,
      D => S_AXI_WDATA(16),
      Q => \^led_off_count\(16),
      R => p_0_in
    );
\led_off_count_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => led_off_count_reg,
      D => S_AXI_WDATA(17),
      Q => \^led_off_count\(17),
      R => p_0_in
    );
\led_off_count_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => led_off_count_reg,
      D => S_AXI_WDATA(18),
      Q => \^led_off_count\(18),
      R => p_0_in
    );
\led_off_count_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => led_off_count_reg,
      D => S_AXI_WDATA(19),
      Q => \^led_off_count\(19),
      R => p_0_in
    );
\led_off_count_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => led_off_count_reg,
      D => S_AXI_WDATA(1),
      Q => \^led_off_count\(1),
      R => p_0_in
    );
\led_off_count_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => led_off_count_reg,
      D => S_AXI_WDATA(20),
      Q => \^led_off_count\(20),
      R => p_0_in
    );
\led_off_count_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => led_off_count_reg,
      D => S_AXI_WDATA(2),
      Q => \^led_off_count\(2),
      R => p_0_in
    );
\led_off_count_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => led_off_count_reg,
      D => S_AXI_WDATA(3),
      Q => \^led_off_count\(3),
      R => p_0_in
    );
\led_off_count_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => led_off_count_reg,
      D => S_AXI_WDATA(4),
      Q => \^led_off_count\(4),
      R => p_0_in
    );
\led_off_count_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => led_off_count_reg,
      D => S_AXI_WDATA(5),
      Q => \^led_off_count\(5),
      R => p_0_in
    );
\led_off_count_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => led_off_count_reg,
      D => S_AXI_WDATA(6),
      Q => \^led_off_count\(6),
      R => p_0_in
    );
\led_off_count_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => led_off_count_reg,
      D => S_AXI_WDATA(7),
      Q => \^led_off_count\(7),
      R => p_0_in
    );
\led_off_count_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => led_off_count_reg,
      D => S_AXI_WDATA(8),
      Q => \^led_off_count\(8),
      R => p_0_in
    );
\led_off_count_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => led_off_count_reg,
      D => S_AXI_WDATA(9),
      Q => \^led_off_count\(9),
      R => p_0_in
    );
\led_on_count_reg[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \led_on_count_reg[20]_i_2_n_0\,
      I1 => \axi_awaddr_reg_n_0_[10]\,
      I2 => \axi_awaddr_reg_n_0_[8]\,
      I3 => \axi_awaddr_reg_n_0_[4]\,
      I4 => \led_on_count_reg[20]_i_3_n_0\,
      I5 => axi_awaddr(2),
      O => led_on_count_reg
    );
\led_on_count_reg[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[9]\,
      I1 => \axi_awaddr_reg_n_0_[5]\,
      I2 => p_0_in0,
      I3 => \axi_awaddr_reg_n_0_[11]\,
      I4 => \axi_awaddr_reg_n_0_[6]\,
      I5 => \axi_awaddr_reg_n_0_[7]\,
      O => \led_on_count_reg[20]_i_2_n_0\
    );
\led_on_count_reg[20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF7FFF"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => \^s_axi_awready\,
      I2 => S_AXI_WVALID,
      I3 => S_AXI_AWVALID,
      I4 => axi_awaddr(1),
      I5 => axi_awaddr(0),
      O => \led_on_count_reg[20]_i_3_n_0\
    );
\led_on_count_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => led_on_count_reg,
      D => S_AXI_WDATA(0),
      Q => \^led_on_count\(0),
      R => p_0_in
    );
\led_on_count_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => led_on_count_reg,
      D => S_AXI_WDATA(10),
      Q => \^led_on_count\(10),
      R => p_0_in
    );
\led_on_count_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => led_on_count_reg,
      D => S_AXI_WDATA(11),
      Q => \^led_on_count\(11),
      R => p_0_in
    );
\led_on_count_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => led_on_count_reg,
      D => S_AXI_WDATA(12),
      Q => \^led_on_count\(12),
      R => p_0_in
    );
\led_on_count_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => led_on_count_reg,
      D => S_AXI_WDATA(13),
      Q => \^led_on_count\(13),
      R => p_0_in
    );
\led_on_count_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => led_on_count_reg,
      D => S_AXI_WDATA(14),
      Q => \^led_on_count\(14),
      R => p_0_in
    );
\led_on_count_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => led_on_count_reg,
      D => S_AXI_WDATA(15),
      Q => \^led_on_count\(15),
      R => p_0_in
    );
\led_on_count_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => led_on_count_reg,
      D => S_AXI_WDATA(16),
      Q => \^led_on_count\(16),
      R => p_0_in
    );
\led_on_count_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => led_on_count_reg,
      D => S_AXI_WDATA(17),
      Q => \^led_on_count\(17),
      R => p_0_in
    );
\led_on_count_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => led_on_count_reg,
      D => S_AXI_WDATA(18),
      Q => \^led_on_count\(18),
      R => p_0_in
    );
\led_on_count_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => led_on_count_reg,
      D => S_AXI_WDATA(19),
      Q => \^led_on_count\(19),
      R => p_0_in
    );
\led_on_count_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => led_on_count_reg,
      D => S_AXI_WDATA(1),
      Q => \^led_on_count\(1),
      R => p_0_in
    );
\led_on_count_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => led_on_count_reg,
      D => S_AXI_WDATA(20),
      Q => \^led_on_count\(20),
      R => p_0_in
    );
\led_on_count_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => led_on_count_reg,
      D => S_AXI_WDATA(2),
      Q => \^led_on_count\(2),
      R => p_0_in
    );
\led_on_count_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => led_on_count_reg,
      D => S_AXI_WDATA(3),
      Q => \^led_on_count\(3),
      R => p_0_in
    );
\led_on_count_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => led_on_count_reg,
      D => S_AXI_WDATA(4),
      Q => \^led_on_count\(4),
      R => p_0_in
    );
\led_on_count_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => led_on_count_reg,
      D => S_AXI_WDATA(5),
      Q => \^led_on_count\(5),
      R => p_0_in
    );
\led_on_count_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => led_on_count_reg,
      D => S_AXI_WDATA(6),
      Q => \^led_on_count\(6),
      R => p_0_in
    );
\led_on_count_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => led_on_count_reg,
      D => S_AXI_WDATA(7),
      Q => \^led_on_count\(7),
      R => p_0_in
    );
\led_on_count_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => led_on_count_reg,
      D => S_AXI_WDATA(8),
      Q => \^led_on_count\(8),
      R => p_0_in
    );
\led_on_count_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => S_AXI_ACLK,
      CE => led_on_count_reg,
      D => S_AXI_WDATA(9),
      Q => \^led_on_count\(9),
      R => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axilite_slave_0_0 is
  port (
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    S_AXI_AWADDR : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_AWVALID : in STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_WSTRB : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_WVALID : in STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_BVALID : out STD_LOGIC;
    S_AXI_BREADY : in STD_LOGIC;
    S_AXI_ARADDR : in STD_LOGIC_VECTOR ( 11 downto 0 );
    S_AXI_ARVALID : in STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    S_AXI_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_RVALID : out STD_LOGIC;
    S_AXI_RREADY : in STD_LOGIC;
    LED_ON_COUNT : out STD_LOGIC_VECTOR ( 20 downto 0 );
    LED_OFF_COUNT : out STD_LOGIC_VECTOR ( 20 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_axilite_slave_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_axilite_slave_0_0 : entity is "design_1_axilite_slave_0_0,axilite_slave,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_axilite_slave_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_axilite_slave_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_axilite_slave_0_0 : entity is "axilite_slave,Vivado 2025.1";
end design_1_axilite_slave_0_0;

architecture STRUCTURE of design_1_axilite_slave_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 20 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of S_AXI_ACLK : signal is "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of S_AXI_ACLK : signal is "slave S_AXI_ACLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of S_AXI_ACLK : signal is "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of S_AXI_ARESETN : signal is "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST";
  attribute x_interface_mode of S_AXI_ARESETN : signal is "slave S_AXI_ARESETN";
  attribute x_interface_parameter of S_AXI_ARESETN : signal is "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of S_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute x_interface_info of S_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute x_interface_info of S_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute x_interface_info of S_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute x_interface_info of S_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute x_interface_info of S_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute x_interface_info of S_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute x_interface_info of S_AXI_RVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute x_interface_info of S_AXI_WREADY : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute x_interface_info of S_AXI_WVALID : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute x_interface_info of S_AXI_ARADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute x_interface_info of S_AXI_AWADDR : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute x_interface_mode of S_AXI_AWADDR : signal is "slave S_AXI";
  attribute x_interface_parameter of S_AXI_AWADDR : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 12, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of S_AXI_BRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute x_interface_info of S_AXI_RDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute x_interface_info of S_AXI_RRESP : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute x_interface_info of S_AXI_WDATA : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute x_interface_info of S_AXI_WSTRB : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
  S_AXI_BRESP(1) <= \<const0>\;
  S_AXI_BRESP(0) <= \<const0>\;
  S_AXI_RDATA(31) <= \<const0>\;
  S_AXI_RDATA(30) <= \<const0>\;
  S_AXI_RDATA(29) <= \<const0>\;
  S_AXI_RDATA(28) <= \<const0>\;
  S_AXI_RDATA(27) <= \<const0>\;
  S_AXI_RDATA(26) <= \<const0>\;
  S_AXI_RDATA(25) <= \<const0>\;
  S_AXI_RDATA(24) <= \<const0>\;
  S_AXI_RDATA(23) <= \<const0>\;
  S_AXI_RDATA(22) <= \<const0>\;
  S_AXI_RDATA(21) <= \<const0>\;
  S_AXI_RDATA(20 downto 0) <= \^s_axi_rdata\(20 downto 0);
  S_AXI_RRESP(1) <= \<const0>\;
  S_AXI_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.design_1_axilite_slave_0_0_axilite_slave
     port map (
      LED_OFF_COUNT(20 downto 0) => LED_OFF_COUNT(20 downto 0),
      LED_ON_COUNT(20 downto 0) => LED_ON_COUNT(20 downto 0),
      S_AXI_ACLK => S_AXI_ACLK,
      S_AXI_ARADDR(11 downto 0) => S_AXI_ARADDR(11 downto 0),
      S_AXI_ARESETN => S_AXI_ARESETN,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_ARVALID => S_AXI_ARVALID,
      S_AXI_AWADDR(11 downto 0) => S_AXI_AWADDR(11 downto 0),
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_AWVALID => S_AXI_AWVALID,
      S_AXI_BVALID => S_AXI_BVALID,
      S_AXI_RDATA(20 downto 0) => \^s_axi_rdata\(20 downto 0),
      S_AXI_RVALID => S_AXI_RVALID,
      S_AXI_WDATA(20 downto 0) => S_AXI_WDATA(20 downto 0),
      S_AXI_WREADY => S_AXI_WREADY,
      S_AXI_WVALID => S_AXI_WVALID
    );
end STRUCTURE;
