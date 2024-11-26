library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity B_tb is
end B_tb;

architecture sim of B_tb is
    -- Signals for UUT (Unit Under Test)
    signal CLK : std_logic := '0';
    signal RST : std_logic := '0';
    signal REQ : std_logic := '0';
    signal ACKa : std_logic := '0';
    signal d : std_logic_vector(7 downto 0) := (others => '0');
    signal ACKb : std_logic;
    signal TMP_sum_print : std_logic_vector(7 downto 0);
    signal Xi_o :  STD_LOGIC_VECTOR (7 downto 0);
    --signal Yi_o :  STD_LOGIC_VECTOR (7 downto 0);
    signal Si_o :  STD_LOGIC_VECTOR (7 downto 0);
    signal CNT_TMP : STD_LOGIC_VECTOR (3 downto 0);

    -- Clock period definition
    constant CLK_PERIOD : time := 10 ns;

begin
    -- Instantiate the Unit Under Test (UUT)
    UUT: entity work.B
        port map (
            CLK => CLK,
            RST => RST,
            REQ => REQ,
            ACKa => ACKa,
            d => d,
            ACKb => ACKb,
            TMP_sum_print => TMP_sum_print
            --Xi_o => Xi_o,
            --Yi_o => Yi_o,
            --Si_o => Si_o,
            --CNT_TMP => CNT_TMP
        );

    -- Clock process to generate clock signal
    CLK_process : process
    begin
        while true loop
            CLK <= '0';
            wait for CLK_PERIOD / 2;
            CLK <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        --RST <= '1';
        -- Stimulate REQ, ACKa and d inputs
        wait for 100 ns;
        --        RST <= '0';

        -- Test 1: Send REQ and a value of d
        REQ <= '1';
        
        wait for 30 ns;
        REQ <= '0';
        -- Test 2: ACKa is received, expecting the state to change
        ACKa <= '1';
        d <= "00000001"; -- Sending data 1
        wait for 10 ns;
        ACKa <= '0';
        wait for 50 ns;
        
        -- Test 3: Send new value of d
        REQ <= '1';
        
        wait for 30 ns;
        REQ <= '0';

        ACKa <= '1';
        --wait for 5 ns;
        d <= "00000100"; -- Sending data 
        wait for 10 ns;
        ACKa <= '0';
        
        wait for 10 ns;
        REQ <= '1';
        
        wait for 30 ns;
        REQ <= '0';

        ACKa <= '1';
        --wait for 5 ns;
        d <= "00000101"; -- Sending data 
        wait for 10 ns;
        ACKa <= '0';
        -- Test 5: Reset REQ
--        REQ <= '0';
--        wait for 40 ns;

        -- Add more tests as needed to stimulate different scenarios

        -- Finish simulation
        wait;
    end process;

end sim;
