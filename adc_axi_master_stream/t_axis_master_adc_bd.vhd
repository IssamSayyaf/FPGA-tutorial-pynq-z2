-- For Demonstration purposes only
-- Code has not been fully verified or tested 
-- User assumes risk
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity T_AXIS_MASTER_ADC_BD is
end T_AXIS_MASTER_ADC_BD;
 
architecture TEST of T_AXIS_MASTER_ADC_BD is
component AXIS_MASTER_ADC_BD_WRAPPER is
	port (
    ADC_CLK_0         : in std_logic;
    ADC_DATA_0        : in std_logic_vector(13 downto 0);
		M_AXIS_ACLK_0	    : in std_logic;
		M_AXIS_ARESETN_0	: in std_logic;
		M_AXIS_0_TREADY	: in std_logic;
		M_AXIS_0_TDATA	: out std_logic_vector(15 downto 0);
		M_AXIS_0_TSTRB	: out std_logic_vector(1 downto 0);
		M_AXIS_0_TKEEP	: out std_logic_vector(1 downto 0);
		M_AXIS_0_TLAST	: out std_logic;
		M_AXIS_0_TVALID	: out std_logic
	);
end component;
component ADC_MODEL
	port (
        ADC_CLK         : in std_logic;
        ADC_DATA        : out std_logic_vector(13 downto 0)
);
end component;

signal ADC_CLK          : std_logic := '0';
signal ADC_DATA         : std_logic_vector(13 downto 0);
signal M_AXIS_ACLK	    : std_logic := '0';
signal M_AXIS_ARESETN	: std_logic;
signal M_AXIS_TREADY	: std_logic := '1';
signal M_AXIS_TDATA	    : std_logic_vector(15 downto 0);
signal M_AXIS_TSTRB	    : std_logic_vector(1 downto 0);
signal M_AXIS_TKEEP	    : std_logic_vector(1 downto 0);
signal M_AXIS_TLAST	    : std_logic;
signal M_AXIS_TVALID	: std_logic;


begin
UUT: AXIS_MASTER_ADC_BD_WRAPPER 
	port map (
    ADC_CLK_0         => ADC_CLK,
    ADC_DATA_0        => ADC_DATA,
		M_AXIS_ACLK_0	    => M_AXIS_ACLK,
		M_AXIS_ARESETN_0	=> M_AXIS_ARESETN,
		M_AXIS_0_TREADY	=> M_AXIS_TREADY,
		M_AXIS_0_TDATA	=> M_AXIS_TDATA,
		M_AXIS_0_TSTRB	=> M_AXIS_TSTRB,
		M_AXIS_0_TKEEP	=> M_AXIS_TKEEP,
		M_AXIS_0_TLAST	=> M_AXIS_TLAST,
		M_AXIS_0_TVALID	=> M_AXIS_TVALID
	);

ADC_SIM : ADC_MODEL
	port map(
        ADC_CLK         => ADC_CLK,
        ADC_DATA        => ADC_DATA
);

ADC_CLK        <= not ADC_CLK after 50 ns;
M_AXIS_ACLK    <= not M_AXIS_ACLK after 20 ns;
M_AXIS_ARESETN <= '0', '1' after 160 ns;


    
end TEST;