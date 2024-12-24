library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_A_B is
    -- No ports in the testbench
end tb_A_B;

architecture behavior of tb_A_B is

    -- Signals for the UUT
    signal CLK_tb : STD_LOGIC := '0';
    signal RST_tb : STD_LOGIC := '0';
    signal START_tb : STD_LOGIC := '0';
    signal R_tb : STD_LOGIC_VECTOR(3 downto 0);

    -- Clock period definition
    constant CLK_PERIOD : time := 10 ns;

begin

    uut: entity work.A_B
    port map (
        CLK_A => CLK_tb,
        CLK_B => CLK_tb,
        RST => RST_tb,
        START => START_tb,
        SUM => R_tb
    );

    clk_process : process
    begin
        CLK_tb <= '0';
        wait for CLK_PERIOD/2;
        CLK_tb <= '1';
        wait for CLK_PERIOD/2;
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
        wait for 20 ns;
        START_tb <= '0'; 

        -- End of test
        wait;
    end process;

end behavior;
