library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoder_4_16 is
    Port ( input : in  STD_LOGIC_VECTOR(3 downto 0);
           output : out  STD_LOGIC_VECTOR(15 downto 0));
end decoder_4_16;

architecture Behavioral of decoder_4_16 is
begin
    process(input)
    begin
        -- Default output is all 0s
        output <= (others => '0');
        -- Enable one-hot encoding for the selected output line
        case input is
            when "0000" => output(0) <= '1';
            when "0001" => output(1) <= '1';
            when "0010" => output(2) <= '1';
            when "0011" => output(3) <= '1';
            when "0100" => output(4) <= '1';
            when "0101" => output(5) <= '1';
            when "0110" => output(6) <= '1';
            when "0111" => output(7) <= '1';
            when "1000" => output(8) <= '1';
            when "1001" => output(9) <= '1';
            when "1010" => output(10) <= '1';
            when "1011" => output(11) <= '1';
            when "1100" => output(12) <= '1';
            when "1101" => output(13) <= '1';
            when "1110" => output(14) <= '1';
            when "1111" => output(15) <= '1';
            when others => output <= (others => '0');
        end case;
    end process;
end Behavioral;
