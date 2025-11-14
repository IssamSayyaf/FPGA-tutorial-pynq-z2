--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
--Date        : Fri Nov 14 22:07:35 2025
--Host        : issam-XPS-9315 running 64-bit Ubuntu 24.04.3 LTS
--Command     : generate_target blink_bd.bd
--Design      : blink_bd
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity blink_bd is
  port (
    clk : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of blink_bd : entity is "blink_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=blink_bd,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of blink_bd : entity is "blink_bd.hwdef";
end blink_bd;

architecture STRUCTURE of blink_bd is
  component blink_bd_c_counter_binary_0_0 is
  port (
    CLK : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 25 downto 0 )
  );
  end component blink_bd_c_counter_binary_0_0;
  component blink_bd_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 25 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component blink_bd_xlslice_0_0;
  signal c_counter_binary_0_Q : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal clk_1 : STD_LOGIC;
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 CLK.CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN blink_bd_clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
begin
  clk_1 <= clk;
  led(0) <= xlslice_0_Dout(0);
c_counter_binary_0: component blink_bd_c_counter_binary_0_0
     port map (
      CLK => clk_1,
      Q(25 downto 0) => c_counter_binary_0_Q(25 downto 0)
    );
xlslice_0: component blink_bd_xlslice_0_0
     port map (
      Din(25 downto 0) => c_counter_binary_0_Q(25 downto 0),
      Dout(0) => xlslice_0_Dout(0)
    );
end STRUCTURE;
