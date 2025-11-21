library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;

entity asym_blink is
  generic(blink_on  : std_logic_vector(20 downto 0) := "010000000000000000000";
          blink_off : std_logic_vector(20 downto 0) := "000000000000000000000");
  port( clk : in std_logic;
        count : in std_logic_vector(20 downto 0);
        led : out std_logic := '0'
      );
end asym_blink;

architecture rtl of asym_blink is
begin
process(clk)
begin
  if clk'event and clk='1' then
    if count = blink_on then
	  led <= '1';
	elsif count = blink_off then
	  led <= '0';
	end if;
  end if;
end process;

end rtl;
