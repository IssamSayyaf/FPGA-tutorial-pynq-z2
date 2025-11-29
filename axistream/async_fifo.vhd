-- For Demonstration purposes only
-- Code has not been fully verified or tested 
-- User assumes risk
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ASYNC_FIFO is
	port (
		WR_CLK	   : in std_logic;
		WR_EN	   : in std_logic;
		WR_DATA	   : in std_logic_vector(13 downto 0);
		RD_CLK	   : in std_logic;
		RD_EN      : in std_logic;
		RD_DATA	   : out std_logic_vector(13 downto 0);
		FIFO_EMPTY : out std_logic;
		FIFO_AFULL : out std_logic
	);
end ASYNC_FIFO;
 
architecture RTL of ASYNC_FIFO is
signal wr_addr            : std_logic_vector(3 downto 0) := "0000";
signal wr_addr_grey       : std_logic_vector(3 downto 0) := "0000";
signal wr_addr_grey_sync  : std_logic_vector(3 downto 0) := "0000";
signal wr_addr_grey_sync2 : std_logic_vector(3 downto 0) := "0000";
signal wr_addr_sync       : std_logic_vector(3 downto 0) := "0000";

signal rd_addr            : std_logic_vector(3 downto 0) := "0000";
signal rd_addr_grey       : std_logic_vector(3 downto 0) := "0000";
signal rd_addr_grey_sync  : std_logic_vector(3 downto 0) := "0000";
signal rd_addr_grey_sync2 : std_logic_vector(3 downto 0) := "0000";
signal rd_addr_sync       : std_logic_vector(3 downto 0) := "0000";

signal full  : std_logic;
signal empty : std_logic;

type fifo_memory_type is array (0 to 15) of std_logic_vector(13 downto 0);
signal fifo_memory : fifo_memory_type :=(others =>(others=>'0'));

begin

wr_addr_grey <= (wr_addr(3),wr_addr(3) xor wr_addr(2),wr_addr(2) xor wr_addr(1),wr_addr(1) xor wr_addr(0));

wr_addr_sync <= (wr_addr_grey_sync2(3),wr_addr_grey_sync2(3) xor wr_addr_grey_sync2(2),
                 wr_addr_grey_sync2(3) xor wr_addr_grey_sync2(2) xor wr_addr_grey_sync2(1),
                 wr_addr_grey_sync2(3) xor wr_addr_grey_sync2(2) xor wr_addr_grey_sync2(1) xor wr_addr_grey_sync2(0));

rd_addr_grey <= (rd_addr(3),rd_addr(3) xor rd_addr(2),rd_addr(2) xor rd_addr(1),rd_addr(1) xor rd_addr(0));

rd_addr_sync <= (rd_addr_grey_sync2(3),rd_addr_grey_sync2(3) xor rd_addr_grey_sync2(2),
                 rd_addr_grey_sync2(3) xor rd_addr_grey_sync2(2) xor rd_addr_grey_sync2(1),
                 rd_addr_grey_sync2(3) xor rd_addr_grey_sync2(2) xor rd_addr_grey_sync2(1) xor rd_addr_grey_sync2(0));

full       <= '1' when (unsigned(wr_addr) - unsigned(rd_addr_sync)) > 14 else '0';
fifo_afull <= '1' when (unsigned(wr_addr) - unsigned(rd_addr_sync)) > 13 else '0';
empty      <= '1' when rd_addr = wr_addr_sync else '0';
FIFO_EMPTY <= empty;

process(WR_CLK)
begin
  if WR_CLK'event and WR_CLK = '1' then
    if full = '0' and WR_EN = '1' then
      wr_addr <= std_logic_vector(unsigned(wr_addr)+1);
    end if;
  end if;
end process;

process(WR_CLK)
begin
  if WR_CLK'event and WR_CLK = '1' then
    rd_addr_grey_sync  <= rd_addr_grey;
    rd_addr_grey_sync2 <= rd_addr_grey_sync;
  end if;
end process;

process(WR_CLK)
begin
  if WR_CLK'event and WR_CLK = '1' then
    if full = '0' and WR_EN = '1' then
      fifo_memory(to_integer(unsigned(wr_addr))) <= WR_DATA;
    end if;
  end if;
end process;

RD_DATA <= fifo_memory(to_integer(unsigned(rd_addr)));
     
process(RD_CLK)
begin
  if RD_CLK'event and RD_CLK = '1' then
    wr_addr_grey_sync  <= wr_addr_grey;
    wr_addr_grey_sync2 <= wr_addr_grey_sync;
  end if;
end process;

process(RD_CLK)
begin
  if RD_CLK'event and RD_CLK = '1' then
    if RD_EN = '1' and empty = '0' then
      rd_addr <=std_logic_vector(unsigned(rd_addr) + 1);
    end if;
  end if;
end process;

end RTL;