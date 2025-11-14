----------------------------------------------------------------------------------
-- Testbench for blink_bd_wrapper (converted from Verilog)
-- Timescale equivalent: 1ns / 1ps
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity t_blink_bd is
-- Testbench has no ports
end t_blink_bd;

architecture Behavioral of t_blink_bd is
    
    -- Component Declaration for the Unit Under Test (UUT)
    component blink_bd_wrapper is
        port (
            clk : in STD_LOGIC;
            led : out STD_LOGIC_VECTOR ( 0 to 0 )
        );
    end component;
    
    -- Testbench Signals
    signal clk : STD_LOGIC := '0';
    signal led : STD_LOGIC;
    
    -- Clock period definition
    -- In Verilog: #50 means 50 time units = 100 time units period
    -- With timescale 1ns/1ps: 100ns period = 10 MHz clock
    constant CLK_PERIOD : time := 8 ns;
    
begin

    -- Instantiate the Unit Under Test (UUT)
    uut: blink_bd_wrapper
        port map (
            clk => clk,
            led(0) => led
        );

    -- Clock generation process
    -- Equivalent to: always #50 clk = ~clk;
    clk_process: process
    begin
        clk <= '0';
        wait for CLK_PERIOD/2;  -- Wait 4ns
        clk <= '1';
        wait for CLK_PERIOD/2;  -- Wait 4ns
        -- This process runs indefinitely
    end process;

end Behavioral;