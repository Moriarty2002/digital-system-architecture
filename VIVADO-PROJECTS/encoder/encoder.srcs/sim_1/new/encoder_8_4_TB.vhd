library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_encoder_8_4 is
end tb_encoder_8_4;

architecture test of tb_encoder_8_4 is
    -- Signal declarations
    signal i      : STD_LOGIC_VECTOR(7 downto 0);
    signal enable : STD_LOGIC;
    signal y      : STD_LOGIC_VECTOR(3 downto 0);

begin
    -- Instantiate the Unit Under Test (UUT)
    utt: entity work.encoder_8_4(behavioural)
        port map (
            i => i,
            enable => enable,
            y => y
        );

    -- Test process
    process
    begin
        -- Test case 1: Lower half active, input i(3 downto 0) = "0001" -> y = "0000"
        i <= "00000001"; enable <= '1';
        wait for 10 ns;

        -- Test case 2: Lower half active, input i(3 downto 0) = "0010" -> y = "0001"
        i <= "00000010"; enable <= '1';
        wait for 10 ns;

        -- Test case 3: Upper half active, input i(7 downto 4) = "0001" -> y = "1000"
        i <= "00010000"; enable <= '1';
        wait for 10 ns;

        -- Test case 4: Upper half active, input i(7 downto 4) = "0010" -> y = "1001"
        i <= "00100000"; enable <= '1';
        wait for 10 ns;

        -- Test case 5: Both halves inactive (all zeros) -> y = "0000"
        i <= "00000000"; enable <= '1';
        wait for 10 ns;

        -- Test case 6: Encoder disabled -> y = "0000"
        i <= "00000001"; enable <= '0';
        wait for 10 ns;

        -- Finish simulation
        wait;
    end process;
end test;
