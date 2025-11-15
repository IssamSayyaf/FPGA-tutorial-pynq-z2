----------------------------------------------------------------------------------
-- Testbench for blink_bd_wrapper
-- Purpose: Verify LED blinking functionality
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_blink_bd_wrapper is
-- Testbench has no ports
end tb_blink_bd_wrapper;

architecture Behavioral of tb_blink_bd_wrapper is

    -- Component Declaration for the Unit Under Test (UUT)
    component blink_bd_wrapper is
        port (
            clk : in STD_LOGIC;
            led : out STD_LOGIC_VECTOR ( 0 to 0 )
        );
    end component;

    -- Testbench Signals
    signal clk_tb : STD_LOGIC := '0';
    signal led_tb : STD_LOGIC_VECTOR ( 0 to 0 );

    -- Clock period definition (adjust based on your target frequency)
    -- Example: 10 ns = 100 MHz
    constant CLK_PERIOD : time := 8 ns;

    -- Simulation control
    signal sim_done : boolean := false;

    -- LED monitoring signals
    signal led_toggle_count : integer := 0;
    signal led_prev : STD_LOGIC := '0';

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: blink_bd_wrapper
        port map (
            clk => clk_tb,
            led => led_tb
        );

    -- Clock generation process
    clk_process: process
    begin
        while not sim_done loop
            clk_tb <= '0';
            wait for CLK_PERIOD/2;
            clk_tb <= '1';
            wait for CLK_PERIOD/2;
        end loop;
        wait;
    end process;

    -- LED toggle counter process
    -- Counts how many times the LED changes state
    led_monitor: process(clk_tb)
    begin
        if rising_edge(clk_tb) then
            if led_tb(0) /= led_prev then
                led_toggle_count <= led_toggle_count + 1;
                led_prev <= led_tb(0);
                report "LED toggled at time " & time'image(now) &
                       " - New state: " & std_logic'image(led_tb(0)) &
                       " (Toggle count: " & integer'image(led_toggle_count + 1) & ")";
            end if;
        end if;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        -- Initial conditions
        report "=== Testbench Started ===" severity note;
        report "Clock Period: " & time'image(CLK_PERIOD) severity note;

        -- Wait for reset/startup (if applicable)
        wait for 100 ns;

        -- Run simulation for enough time to observe multiple LED toggles
        -- Adjust this based on your blink frequency
        -- Example: if LED blinks every 1 second in real hardware,
        -- you might want to observe at least 10 toggles
        wait for 10 us;  -- Adjust this value based on your design

        -- Check if LED toggled at least once
        if led_toggle_count > 0 then
            report "SUCCESS: LED toggled " & integer'image(led_toggle_count) &
                   " times" severity note;
        else
            report "WARNING: LED did not toggle during simulation" severity warning;
        end if;

        -- End simulation
        report "=== Testbench Completed ===" severity note;
        sim_done <= true;
        wait;
    end process;

end Behavioral;
