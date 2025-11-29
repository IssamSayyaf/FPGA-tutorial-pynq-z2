-- For Demonstration purposes only
-- Code has not been fully verified or tested 
-- User assumes risk
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity T_AXIS_MASTER_ADC is
end T_AXIS_MASTER_ADC;
 
architecture TEST of T_AXIS_MASTER_ADC is
component AXIS_MASTER_ADC is
	port (
    ADC_CLK         : in std_logic;
    ADC_DATA        : in std_logic_vector(13 downto 0);
		M_AXIS_ACLK	    : in std_logic;
		M_AXIS_ARESETN	: in std_logic;
		M_AXIS_TREADY	: in std_logic;
		M_AXIS_TDATA	: out std_logic_vector(15 downto 0);
		M_AXIS_TSTRB	: out std_logic_vector(1 downto 0);
		M_AXIS_TKEEP	: out std_logic_vector(1 downto 0);
		M_AXIS_TLAST	: out std_logic;
		M_AXIS_TVALID	: out std_logic
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
signal M_AXIS_TREADY	: std_logic;
signal M_AXIS_TDATA	    : std_logic_vector(15 downto 0);
signal M_AXIS_TSTRB	    : std_logic_vector(1 downto 0);
signal M_AXIS_TKEEP	    : std_logic_vector(1 downto 0);
signal M_AXIS_TLAST	    : std_logic;
signal M_AXIS_TVALID	: std_logic;
signal lfsr             : std_logic_vector(5 downto 0):= "100000";

signal data_check       : std_logic_vector(15 downto 0);
signal rem_value        : std_logic_vector(15 downto 0);
signal error            : std_logic;
signal tlast_error      : std_logic;

begin
UUT: AXIS_MASTER_ADC 
	port map (
    ADC_CLK         => ADC_CLK,
    ADC_DATA        => ADC_DATA,
		M_AXIS_ACLK	    => M_AXIS_ACLK,
		M_AXIS_ARESETN	=> M_AXIS_ARESETN,
		M_AXIS_TREADY	=> M_AXIS_TREADY,
		M_AXIS_TDATA	=> M_AXIS_TDATA,
		M_AXIS_TSTRB	=> M_AXIS_TSTRB,
		M_AXIS_TKEEP	=> M_AXIS_TKEEP,
		M_AXIS_TLAST	=> M_AXIS_TLAST,
		M_AXIS_TVALID	=> M_AXIS_TVALID
	);

ADC_SIM : ADC_MODEL
	port map(
        ADC_CLK         => ADC_CLK,
        ADC_DATA        => ADC_DATA
);

ADC_CLK        <= not ADC_CLK after 50 ns;
M_AXIS_ACLK    <= not M_AXIS_ACLK after 20 ns;
M_AXIS_ARESETN <= '0', '1' after 160 ns;

process(M_AXIS_ACLK)
begin
  if M_AXIS_ACLK'event and M_AXIS_ACLK = '0' then
    lfsr(0) <= lfsr(5) xor lfsr(4) xor '1';
    lfsr(5 downto 1) <= lfsr(4 downto 0);
  end if;
end process;
M_AXIS_TREADY <= lfsr(5);

process
begin
  wait until M_AXIS_ACLK'event and M_AXIS_ACLK = '1' and M_AXIS_TVALID = '1' and lfsr(5) = '1';
  data_check <= M_AXIS_TDATA;
  rem_value  <= M_AXIS_TDATA;
  wait for 1 ns;
  while TRUE loop
    data_check <= std_logic_vector(unsigned(data_check) + 1);
    wait until M_AXIS_ACLK'event and M_AXIS_ACLK = '1' and M_AXIS_TVALID = '1' and lfsr(5) = '1';
    if M_AXIS_TDATA /= data_check then
      error <= '1';
    else
      error <= '0';
    end if;
    if ((to_integer(unsigned(M_AXIS_TDATA)) rem 64 /= to_integer(unsigned(rem_value))) and M_AXIS_TLAST = '1') then
      tlast_error <= '1';
    else
      tlast_error <= '0';
    end if;
  end loop;
end process;
    
end TEST;