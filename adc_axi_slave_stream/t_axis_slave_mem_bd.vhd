library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity T_AXIS_SLAVE_MEM_BD is
end T_AXIS_SLAVE_MEM_BD;
 
architecture TEST of T_AXIS_SLAVE_MEM_BD is
component AXIS_SLAVE_MEM_BD_WRAPPER is
	port (
    ADC_CLK_0         : in std_logic;
    ADC_DATA_0        : in std_logic_vector(13 downto 0);
		M_AXIS_ACLK_0	    : in std_logic;
		M_AXIS_ARESETN_0	: in std_logic
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


begin
UUT: AXIS_SLAVE_MEM_BD_WRAPPER 
	port map (
    ADC_CLK_0         => ADC_CLK,
    ADC_DATA_0        => ADC_DATA,
		M_AXIS_ACLK_0	    => M_AXIS_ACLK,
		M_AXIS_ARESETN_0	=> M_AXIS_ARESETN
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