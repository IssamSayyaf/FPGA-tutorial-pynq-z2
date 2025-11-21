library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;    -- safer than std_logic_unsigned

entity asym_blink is
  port(
    clk       : in  std_logic;
    count     : in  std_logic_vector(20 downto 0);
    blink_on  : in  std_logic_vector(20 downto 0);
    blink_off : in  std_logic_vector(20 downto 0);
    led       : out std_logic
  );
end asym_blink;

architecture rtl of asym_blink is
begin
  process(clk)
  begin
    if rising_edge(clk) then
      -- Convert to unsigned for safe comparison
      if unsigned(count) < unsigned(blink_on) then
        led <= '1';  -- LED ON interval

      elsif unsigned(count) < unsigned(blink_off) then
        led <= '0';  -- LED OFF interval

      else
        led <= '0';  -- after blink_off, wait for count reset
      end if;
    end if;
  end process;
end rtl;
