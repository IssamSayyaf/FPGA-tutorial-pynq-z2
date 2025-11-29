-- For Demonstration purposes only
-- Code has not been fully verified or tested 
-- User assumes risk
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity T_AXIS_SLAVE_MEM is
end T_AXIS_SLAVE_MEM;

architecture TEST of T_AXIS_SLAVE_MEM is
component AXIS_SLAVE_MEM
	port (
		S_AXIS_ACLK	    : in std_logic;
		S_AXIS_ARESETN	: in std_logic;
		S_AXIS_TREADY	: out std_logic;
		S_AXIS_TDATA	: in std_logic_vector(31 downto 0);
		S_AXIS_TSTRB	: in std_logic_vector(3 downto 0);
		S_AXIS_TKEEP	: in std_logic_vector(3 downto 0);
		S_AXIS_TLAST	: in std_logic;
		S_AXIS_TVALID	: in std_logic
	);
end component;

signal  S_AXIS_ACLK	    : std_logic := '0';
signal  S_AXIS_ARESETN	: std_logic;
signal  S_AXIS_TREADY	: std_logic;
signal  S_AXIS_TDATA	: std_logic_vector(31 downto 0);
signal  S_AXIS_TSTRB	: std_logic_vector(3 downto 0);
signal  S_AXIS_TKEEP	: std_logic_vector(3 downto 0);
signal  S_AXIS_TLAST	: std_logic;
signal  S_AXIS_TVALID	: std_logic;
signal  lfsr            : std_logic_vector(5 downto 0) := "110000";
signal  tlast           : std_logic;

constant CLK_PERIOD     : time := 100 ns;

begin

UUT : AXIS_SLAVE_MEM port map (
 S_AXIS_ACLK	=> S_AXIS_ACLK,
 S_AXIS_ARESETN	=> S_AXIS_ARESETN,
 S_AXIS_TREADY	=> S_AXIS_TREADY,
 S_AXIS_TDATA	=> S_AXIS_TDATA,
 S_AXIS_TSTRB	=> S_AXIS_TSTRB,
 S_AXIS_TKEEP	=> S_AXIS_TKEEP,
 S_AXIS_TLAST	=> S_AXIS_TLAST,
 S_AXIS_TVALID	=> S_AXIS_TVALID);
 
S_AXIS_ACLK <= not S_AXIS_ACLK after CLK_PERIOD/2;

process(S_AXIS_ACLK)
begin
  if S_AXIS_ACLK'event and S_AXIS_ACLK = '1' then
    if S_AXIS_TREADY = '1' or (S_AXIS_TREADY = '0' and lfsr(5) = '0') then
      lfsr(0) <= lfsr(5) xor lfsr(4) xor '1';
      lfsr(5 downto 1) <= lfsr(4 downto 0);
	end if;
  end if;
end process;
S_AXIS_TVALID <= lfsr(5);
S_AXIS_TLAST  <= lfsr(5) and tlast;
 
 process
 begin
 S_AXIS_ARESETN <= '0';
 S_AXIS_TSTRB	<= "1111";
 S_AXIS_TKEEP	<= "1111";
 tlast      	<= '0';
 S_AXIS_TDATA   <= (others =>'0');
 wait for CLK_PERIOD;
 wait for CLK_PERIOD;
 wait for CLK_PERIOD;
 S_AXIS_ARESETN <= '1';
 wait for CLK_PERIOD;
 for J in 0 to 5 loop
   for I in 0 to 127 loop
    S_AXIS_TDATA  <= std_logic_vector(to_unsigned(I,32));
	if I= 127 then
	  tlast <= '1';
	else
	  tlast <= '0';
	end if;
    wait until S_AXIS_ACLK'event and S_AXIS_ACLK = '1' and S_AXIS_TVALID = '1' and S_AXIS_TREADY = '1';
  end loop;
 end loop;
 end process;
  
 end TEST;
