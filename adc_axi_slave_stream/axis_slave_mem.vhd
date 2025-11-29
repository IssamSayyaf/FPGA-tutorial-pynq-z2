-- For Demonstration purposes only
-- Code has not been fully verified or tested 
-- User assumes risk
library IEEE;
use IEEE.std_logic_1164.all;
entity AXIS_SLAVE_MEM is
  generic(FLOW_SIM : boolean := TRUE);
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
end AXIS_SLAVE_MEM;
 
architecture RTL of AXIS_SLAVE_MEM is
signal memory_address : integer range 0 to 127;
type data_memory_type is array (0 to 127) of std_logic_vector(31 downto 0);
signal data_memory : data_memory_type :=(others =>(others=>'0'));
signal s_axis_aresetn_reg : std_logic;
signal lfsr : std_logic_vector(5 downto 0);
signal tready : std_logic;

begin

process(S_AXIS_ACLK)
begin
  if S_AXIS_ACLK'event and S_AXIS_ACLK = '1' then
    s_axis_aresetn_reg <= S_AXIS_ARESETN;
    if S_AXIS_ARESETN = '0' then
      lfsr <= "000111";
    elsif S_AXIS_TVALID = '1' or (S_AXIS_TVALID = '0' and lfsr(5) = '0') then
      lfsr(0) <= lfsr(5) xor lfsr(4) xor '1';
      lfsr(5 downto 1) <= lfsr(4 downto 0);
    end if;
  end if;
end process;
tready <= '0' when S_AXIS_ARESETN = '0' or s_axis_aresetn_reg = '0' else
                          lfsr(5) when FLOW_SIM else '1';
S_AXIS_TREADY <= tready;

process(S_AXIS_ACLK)
begin
  if S_AXIS_ACLK'event and S_AXIS_ACLK = '1' then
    if S_AXIS_ARESETN = '0' then
      memory_address <= 0;
    else
      if S_AXIS_TVALID = '1' and tready = '1' then
        memory_address <= memory_address + 1;
      end if;
      if S_AXIS_TLAST = '1' and S_AXIS_TVALID = '1' and tready = '1' then
        memory_address <= 0;
      end if;
    end if;
  end if;
end process;
      
process(S_AXIS_ACLK)
begin
  if S_AXIS_ACLK'event and S_AXIS_ACLK = '1' then
    if S_AXIS_TVALID = '1' and tready = '1' then
        data_memory(memory_address) <= S_AXIS_TDATA;
    end if;
  end if;
end process;
end RTL;