library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_A_B_CLK is
    -- No ports in the testbench
end tb_A_B_CLK;

architecture behavior of tb_A_B_CLK is

    -- Signals for the UUT
    signal RST_tb : STD_LOGIC := '0';
    signal START_tb : STD_LOGIC := '0';
    signal R_tb : STD_LOGIC_VECTOR(3 downto 0);

    -- Clock period definition
    constant CLK_PERIOD_FAST : time := 5 ns;
    constant CLK_PERIOD_SLOW : time := 20 ns;
    
    signal CLK_FAST_tb : STD_LOGIC := '0';
    signal CLK_SLOW_tb : STD_LOGIC := '0';


begin

    uut: entity work.A_B
    port map (
        CLK_A => CLK_SLOW_tb,
        CLK_B => CLK_FAST_tb,
        RST => RST_tb,
        START => START_tb,
        SUM => R_tb
    );

    clk_process_fast : process
    begin
        CLK_FAST_tb <= '0';
        wait for CLK_PERIOD_FAST/2;
        CLK_FAST_tb <= '1';
        wait for CLK_PERIOD_FAST/2;
    end process;
    
    clk_process_slow : process
    begin
        CLK_SLOW_tb <= '0';
        wait for CLK_PERIOD_SLOW/2;
        CLK_SLOW_tb <= '1';
        wait for CLK_PERIOD_SLOW/2;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        wait for 100ns;
        
        -- Initial state: Ensure START is low initially
        START_tb <= '0';
        wait for 20 ns;

        -- Test Case 1: Apply START signal
        START_tb <= '1';   -- Start the process
        wait for 30 ns;
        START_tb <= '0'; 

        -- End of test
        wait;
    end process;

end behavior;
