library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.all;

entity tb_B is
    -- No ports in testbench
end tb_B;

architecture behavior of tb_B is

    -- Signals for the UUT
    signal CLK_tb : STD_LOGIC := '0';
    signal RST_tb : STD_LOGIC := '0';
    signal REQ_tb : STD_LOGIC := '0';
    signal ACK_tb : STD_LOGIC;
    signal D_tb : STD_LOGIC_VECTOR(3 downto 0) := "0000";

    -- Clock period definition
    constant CLK_PERIOD : time := 10 ns;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: entity work.B
    port map (
        CLK => CLK_tb,
        RST => RST_tb,
        REQ => REQ_tb,
        ACK => ACK_tb,
        D => D_tb
    );

    -- Clock generation process
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
        -- Apply reset
--        RST_tb <= '1';
--        wait for 20 ns;
--        RST_tb <= '0';
--        wait for 20 ns;
        wait for 100ns;
        
--        -- Apply some data to D
--        D_tb <= "0101";  -- Example value
--        wait for 20 ns;

--        -- Test: Request goes high, FSM should transition
--        REQ_tb <= '1';
--        wait for 20 ns;

--        -- Wait for ACK response and deactivate REQ
--        wait for 50 ns;
--        REQ_tb <= '0';
--        wait for 20 ns;

--        -- Apply another request
--        D_tb <= "1010";  -- Another example value
--        REQ_tb <= '1';
--        wait for 20 ns;

--        -- Wait for FSM to finish and deactivate REQ
--        wait for 50 ns;
--        REQ_tb <= '0';
--        wait for 20 ns;


        D_tb <= "0001";  -- Example value
        wait for 5 ns;
        REQ_tb <= '1';
        wait for 50 ns;
        REQ_tb <= '0';
        wait for 20 ns;
        
        REQ_tb <= '1';
        wait for 50 ns;
        REQ_tb <= '0';
        wait for 20 ns;
        
        REQ_tb <= '1';
        wait for 50 ns;
        REQ_tb <= '0';
        wait for 20 ns;
        
        REQ_tb <= '1';
        wait for 50 ns;
        REQ_tb <= '0';
        wait for 20 ns;
        
        REQ_tb <= '1';
        wait for 50 ns;
        REQ_tb <= '0';
        wait for 20 ns;
        
        REQ_tb <= '1';
        wait for 50 ns;
        REQ_tb <= '0';
        wait for 20 ns;

        -- End of simulation
        wait;
    end process;

end behavior;
