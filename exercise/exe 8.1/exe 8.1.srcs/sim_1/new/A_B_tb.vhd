library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity A_B_tb is
-- No port declaration in the testbench
end A_B_tb;

architecture testbench of A_B_tb is

    -- Signals for the clock and stimulus
    signal CLK_tb : std_logic := '0';
    signal NXT_tb : std_logic := '0';
    signal TMP_sum_print_tb : std_logic_vector(7 downto 0);

    -- Constants for clock period
    constant CLK_PERIOD : time := 10 ns; -- 100 MHz clock

begin

    -- Instantiate the Unit Under Test (UUT)
    UUT: entity work.A_B
    port map (
        CLK => CLK_tb,
        RST => '0',  -- Ignoring the reset as requested
        NXT => NXT_tb,
        TMP_sum => TMP_sum_print_tb
    );

    -- Clock generation process
    CLK_process : process
    begin
        while true loop
            CLK_tb <= '0';
            wait for CLK_PERIOD / 2;
            CLK_tb <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
    end process;

    -- Stimulus process to apply test cases
    stimulus_process : process
    begin
        -- Wait for global reset to finish
        wait for 100 ns;

        -- Apply NXT signal -- REMEMBER TO LOW THE TRIGGER TIME OF THE DEBOUNCER BTN
        NXT_tb <= '1';
        wait for 500 ns;
        NXT_tb <= '0';
        wait for 250 ns;

        -- Apply NXT signal again
        NXT_tb <= '1';
        wait for 10 ns;
        NXT_tb <= '0';
        wait for 50 ns;

        -- More stimulus can be added here for further testing

        -- End simulation
        wait;
    end process;

end testbench;
