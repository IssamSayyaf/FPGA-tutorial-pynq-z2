library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;

entity t_blink is
end t_blink;

architecture test of t_blink is

component blink is
  port( clk : in std_logic;
        led : out std_logic
      );
end component;

signal clk : std_logic := '0';
signal led : std_logic;

begin

uut: blink
  port map( clk => clk,
            led => led
      );


clk <= not clk after 4 ns;

end test;
