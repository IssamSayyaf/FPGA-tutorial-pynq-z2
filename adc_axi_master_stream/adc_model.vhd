-- For Demonstration purposes only
-- Code has not been fully verified or tested 
-- User assumes risk
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
entity ADC_MODEL is
	port (
        ADC_CLK         : in std_logic;
        ADC_DATA        : out std_logic_vector(13 downto 0)
);
end ADC_MODEL;
 
architecture BEHAV of ADC_MODEL is

signal int_adc_data : std_logic_vector(13 downto 0) := (others => '0');

begin
process(ADC_CLK)
begin
  if ADC_CLK'event and ADC_CLK = '0' then
    int_adc_data <= std_logic_vector(unsigned(int_adc_data) + 1);
  end if;
end process;
ADC_DATA <= int_adc_data;
     
end BEHAV;