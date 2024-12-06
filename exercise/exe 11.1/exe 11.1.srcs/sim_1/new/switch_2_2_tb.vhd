library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_TEXTIO.ALL;
use std.textio.ALL;

entity tb_switch_2_2 is
    -- No ports for a testbench
end tb_switch_2_2;

architecture Behavioral of tb_switch_2_2 is

    -- Constants
    constant N : integer := 4;  -- Set message length to 4 for testing

    -- Test signals
    signal a0      : STD_LOGIC_VECTOR(N-1 downto 0);
    signal a1      : STD_LOGIC_VECTOR(N-1 downto 0);
    signal sel_in  : STD_LOGIC;
    signal y0      : STD_LOGIC_VECTOR(N-2 downto 0);
    signal y1      : STD_LOGIC_VECTOR(N-2 downto 0);

begin

    -- Instantiate the DUT (Device Under Test)
    uut: entity work.switch_2_2
    generic map (
        N => N  -- Pass the message length as 4 bits
    )
    port map (
        a0      => a0,
        a1      => a1,
        sel_in  => sel_in,
        y0      => y0,
        y1      => y1
    );

    -- Test process
    stim_proc: process
    begin
        wait for 100ns;
        
        -- Test case 1: Select a0
        a0 <= "1101";  -- Set input a0 to 4-bit vector
        sel_in <= '0'; -- Select input a0
        wait for 50 ns;

        a0 <= "0101";  -- Set input a0 to 4-bit vector
        sel_in <= '0'; -- Select input a0
        wait for 50 ns;
        a0 <= "0000";  -- Set input a0 to 4-bit vector

         
        -- Test case 2: Select a1
        a1 <= "0001";  -- New value for a1
        sel_in <= '1'; -- Select input a1
        wait for 50 ns;
        
        a1 <= "1001";  -- New value for a1
        wait for 50 ns;

        -- Stop simulation
        wait;
    end process;

end Behavioral;
