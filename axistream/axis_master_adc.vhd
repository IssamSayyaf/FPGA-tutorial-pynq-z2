-- For Demonstration purposes only
-- Code has not been fully verified or tested 
-- User assumes risk
library IEEE;
use IEEE.std_logic_1164.all;
entity AXIS_MASTER_ADC is
	port (
    ADC_CLK         : in std_logic;
    ADC_DATA        : in std_logic_vector(13 downto 0);
		M_AXIS_ACLK	    : in std_logic;
		M_AXIS_ARESETN	: in std_logic;
		M_AXIS_TREADY	  : in std_logic;
		M_AXIS_TDATA	  : out std_logic_vector(15 downto 0);
		M_AXIS_TSTRB	  : out std_logic_vector(1 downto 0);
		M_AXIS_TKEEP	  : out std_logic_vector(1 downto 0);
		M_AXIS_TLAST	  : out std_logic;
		M_AXIS_TVALID	  : out std_logic
	);
end AXIS_MASTER_ADC;
 
architecture RTL of AXIS_MASTER_ADC is
component ASYNC_FIFO
	port (
		WR_CLK	   : in std_logic;
		WR_EN	     : in std_logic;
		WR_DATA	   : in std_logic_vector(13 downto 0);
		RD_CLK	   : in std_logic;
		RD_EN      : in std_logic;
		RD_DATA	   : out std_logic_vector(13 downto 0);
		FIFO_EMPTY : out std_logic;
		FIFO_AFULL : out std_logic
	);
end component;

signal fifo_empty : std_logic;
signal fifo_afull : std_logic;
signal rd_en      : std_logic;
signal rd_data    : std_logic_vector(13 downto 0);

type state_type is (INIT,VALID_DATA,STALL_DATA,SLAVE_STALL);
signal state,next_state : state_type;
signal M_AXIS_ARESETN_REG : std_logic;
signal data_count : integer range 0 to 64;

signal wr_en,wr_en_sync : std_logic;

begin
fifo_comp : async_fifo port map (
 WR_CLK	    => ADC_CLK,
 WR_EN	    => WR_EN,
 WR_DATA	  => ADC_DATA,
 RD_CLK	    => M_AXIS_ACLK,
 RD_EN	    => RD_EN,
 RD_DATA	  => RD_DATA,
 FIFO_EMPTY	=> FIFO_EMPTY,
 FIFO_AFULL	=> FIFO_AFULL);

M_AXIS_TDATA(13 downto 0)  <= RD_DATA;
M_AXIS_TDATA(15 downto 14) <= "00";
M_AXIS_TKEEP               <= "11";
M_AXIS_TSTRB               <= "11";

process(ADC_CLK)
begin
  if ADC_CLK'event and ADC_CLK = '1' then
    if (state = INIT) then
      wr_en_sync <= '0';
    else
      wr_en_sync <= '1';
    end if;
    WR_EN <= wr_en_sync;
  end if;
end process;

process(state,FIFO_EMPTY,M_AXIS_TREADY,M_AXIS_ARESETN)
begin
  next_state <= state;
  case state is
    when INIT =>
      if M_AXIS_ARESETN = '0' or M_AXIS_ARESETN_REG = '0' then
        next_state <= INIT;
      elsif fifo_empty = '1' then
        next_state <= STALL_DATA;
      elsif M_AXIS_TREADY = '0' then
        next_state <= SLAVE_STALL;
      elsif fifo_empty = '0' and M_AXIS_TREADY = '1' then
        next_state <= VALID_DATA;
      end if;
    when VALID_DATA =>
      if M_AXIS_TREADY = '0' then
        next_state <= SLAVE_STALL;
      elsif fifo_empty = '1' then
        next_state <= STALL_DATA;
      end if;
    when STALL_DATA => 
      if M_AXIS_TREADY = '0' and fifo_empty = '0' then
        next_state <= SLAVE_STALL;
      elsif fifo_empty = '0' then
        next_state <= VALID_DATA;
      end if;
    when SLAVE_STALL =>
      if M_AXIS_TREADY = '1' and fifo_empty = '0' then
        next_state <= VALID_DATA;
      elsif fifo_empty = '1'  then
        next_state <= STALL_DATA;
      end if;
    when others =>
      next_state <= INIT;
  end case;
end process;

process(M_AXIS_ACLK)
begin
  if M_AXIS_ACLK'event and M_AXIS_ACLK = '1' then
    M_AXIS_ARESETN_REG <= M_AXIS_ARESETN;
    if M_AXIS_ARESETN = '0' then
      state <= INIT;
    else
      state <= next_state;
    end if;
  end if;
end process;

process(M_AXIS_ACLK)
begin
  if M_AXIS_ACLK'event and M_AXIS_ACLK = '1' then
    if next_state = INIT then
      data_count <= 0;
      M_AXIS_TLAST <= '0';
    elsif next_state = VALID_DATA and data_count = 63 then
      data_count <= 0;
      M_AXIS_TLAST <= '1';
    elsif next_state = VALID_DATA then
      data_count <= data_count + 1;
      M_AXIS_TLAST <= '0';
    end if;
  end if;
end process;

process(next_state)
begin
    case next_state is
      when INIT =>
        M_AXIS_TVALID <= '0';
        RD_EN         <= '0';
      when VALID_DATA =>
        M_AXIS_TVALID <= '1';
        RD_EN         <= '1';
      when STALL_DATA => 
        M_AXIS_TVALID <= '0';
        RD_EN         <= '0';
     when SLAVE_STALL =>
        M_AXIS_TVALID <= '1';
        RD_EN         <= '0';
    when others =>
        M_AXIS_TVALID <= '0';
        RD_EN         <= '0';
    end case;
 end process;
      
end RTL;