library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;

entity blink is
  port( clk : in std_logic;
        led : out std_logic
      );
end blink;

architecture rtl of blink is

signal counter : std_logic_vector(25 downto 0) := (others => '0');

begin
process(clk)
begin
  if clk'event and clk='1' then
    counter <= counter + 1;
  end if;
end process;

led <= counter(25);

end rtl;
