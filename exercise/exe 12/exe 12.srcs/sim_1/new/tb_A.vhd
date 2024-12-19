library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Testbench entity
entity tb_A is
end tb_A;

-- Testbench architecture
architecture sim of tb_A is

    -- Signals to connect to the Unit Under Test (UUT)
    signal CLK : std_logic := '0';
    signal RST : std_logic := '0';
    signal START : std_logic := '0';
    signal REQ : std_logic;
    signal ACK : std_logic := '0';
    signal d : std_logic_vector(3 downto 0);

    -- Clock period
    constant CLK_PERIOD : time := 10 ns;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: entity work.A
    port map (
        CLK => CLK,
        RST => RST,
        START => START,
        REQ => REQ,
        ACK => ACK,
        d => d
    );

    -- Clock process to generate a clock signal
    clk_process : process
    begin
        while true loop
            CLK <= '0';
            wait for CLK_PERIOD / 2;
            CLK <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
    end process;

    -- Stimulus process to apply test cases
    stimulus_process : process
    begin
        -- Test case 1: Reset the system
        --RST <= '1';
        START <= '0';
        wait for 20 ns;
        --RST <= '0';
        wait for 20 ns;

        -- Test case 2: Start the system
        START <= '1';
        wait for 20 ns;
        START <= '0';

        -- Wait for some time to simulate
        wait for 50 ns;

        -- Simulate ACK going high
        ACK <= '1';
        wait for 20 ns;
        ACK <= '0';
        
        -- Wait for some time to simulate
        wait for 50 ns;

        -- Simulate ACK going high
        ACK <= '1';
        wait for 20 ns;
        ACK <= '0';
        
        -- Wait for some time to simulate
        wait for 50 ns;

        -- Simulate ACK going high
        ACK <= '1';
        wait for 20 ns;
        ACK <= '0';
        
        -- Wait for some time to simulate
        wait for 50 ns;

        -- Simulate ACK going high
        ACK <= '1';
        wait for 20 ns;
        ACK <= '0';
        
        -- Wait for some time to simulate
        wait for 50 ns;

        -- Simulate ACK going high
        ACK <= '1';
        wait for 20 ns;
        ACK <= '0';
        
        -- Wait for some time to simulate
        wait for 50 ns;

        -- Simulate ACK going high
        ACK <= '1';
        wait for 20 ns;
        ACK <= '0';
        
        -- Wait for some time to simulate
        wait for 50 ns;

        -- Simulate ACK going high
        ACK <= '1';
        wait for 20 ns;
        ACK <= '0';
        
        -- Wait for some time to simulate
        wait for 50 ns;

        -- Simulate ACK going high
        ACK <= '1';
        wait for 20 ns;
        ACK <= '0';


        -- Additional stimulus if needed
        -- Wait for simulation end
        wait;
    end process;

end sim;
