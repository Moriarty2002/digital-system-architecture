library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.ALL;

-- Testbench for PO_PC
entity tb_PO_PC is
-- No ports in the testbench
end tb_PO_PC;

architecture testbench of tb_PO_PC is
    -- Signals to connect to PO_PC inputs/outputs
    signal CLK_tb : STD_LOGIC := '0';
    signal RST_tb : STD_LOGIC := '0';
    signal STR_tb : STD_LOGIC := '0';
    signal y_tb   : STD_LOGIC_VECTOR(3 downto 0);

    -- Clock period definition
    constant clk_period : time := 10 ns;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: entity work.PO_PC
        port map (
            CLK => CLK_tb,
            RST => RST_tb,
            STR => STR_tb,
            y   => y_tb
        );

    -- Clock process
    clk_process : process
    begin
        while true loop
            CLK_tb <= '0';
            wait for clk_period / 2;
            CLK_tb <= '1';
            wait for clk_period / 2;
        end loop;
    end process clk_process;

    -- Stimulus process
    stimulus : process
    begin
        wait for 100ns;
        -- Initialize signals
        RST_tb <= '1';  -- Assert reset
        STR_tb <= '0';
        wait for 20 ns;

        RST_tb <= '0';  -- Deassert reset
        wait for 20 ns;
        
        -- Start the process by asserting STR
        STR_tb <= '1';
        wait for CLK_PERIOD;
        STR_tb <= '0';

        
        wait for 600ns;
        STR_tb <= '1';
        wait for CLK_PERIOD;
        STR_tb <= '0';
        wait for 100ns;
        RST_TB <= '1';
        wait for CLK_PERIOD;
        RST_TB <= '0';
        
        wait;
    end process stimulus;

end testbench;
