library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.all;

entity tb_m_system is
end tb_m_system;

architecture test of tb_m_system is

    -- Signals for connecting to the Unit Under Test (UUT)
    signal input_tb: STD_LOGIC_VECTOR(3 downto 0);
    signal output_tb: STD_LOGIC_VECTOR(3 downto 0);

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: entity work.m_system
        Port map (
            input => input_tb,
            output => output_tb
        );

    -- Test process
    process
    begin
        wait for 100ns;
        
        -- Test case 1
        input_tb <= "0000";  -- Input = 0
        wait for 50 ns;      -- Wait for some time
--        assert (output_tb = "0000") report "Test case 1 failed" severity error;
        
        -- Test case 2
        input_tb <= "0001";  -- Input = 1
        wait for 50 ns;      -- Wait for some time
--        assert (output_tb = "0001") report "Test case 2 failed" severity error;

        -- Test case 3
        input_tb <= "0010";  -- Input = 2
        wait for 50 ns;      -- Wait for some time
--        assert (output_tb = "0010") report "Test case 3 failed" severity error;

        -- Test case 4
        input_tb <= "0011";  -- Input = 3
        wait for 50 ns;      -- Wait for some time
--        assert (output_tb = "0011") report "Test case 4 failed" severity error;

        -- Test case 5
        input_tb <= "0100";  -- Input = 4
        wait for 50 ns;
--        assert (output_tb = "0000") report "Test case 5 failed" severity error;

        -- Continue for other cases as needed...

        -- End simulation after all tests
        wait;
    end process;

end test;
