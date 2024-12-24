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
    signal READ_tb : STD_LOGIC := '0';
    signal y_tb   : STD_LOGIC_VECTOR(3 downto 0);

    -- Clock period definition
    constant clk_period : time := 10 ns;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: entity work.Controlled_PO_PC
        port map (
            CLK => CLK_tb,
            RST => RST_tb,
            STR_READ => READ_tb,
            MEM_OUT   => y_tb
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
--        RST_tb <= '1';  -- Assert reset
--        wait for 20 ns;

--        RST_tb <= '0';  -- Deassert reset
--        wait for 20 ns;
        
        -- Start the process by asserting STR
        READ_tb <= '1';
        wait for 50 ns;
        READ_tb <= '0';
        wait for 50 ns;
        
        READ_tb <= '1';  
        wait for 50 ns;
        READ_tb <= '0';
        wait for 50 ns;
        
        READ_tb <= '1';  
        wait for 100 ns;
        READ_tb <= '0';
        wait for 50 ns;
        
        READ_tb <= '1';  
        wait for 100 ns;
        READ_tb <= '0';
        wait for 50 ns;
        
        wait;
    end process stimulus;

end testbench;
