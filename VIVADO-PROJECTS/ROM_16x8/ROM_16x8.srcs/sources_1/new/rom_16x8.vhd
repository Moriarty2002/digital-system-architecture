library ieee;
use ieee.std_logic_1164.all;

entity rom_16x8_one_hot is
    port (
        input_lines : in std_logic_vector(15 downto 0); -- 16 input lines (one-hot encoding)
        data_out    : out std_logic_vector(7 downto 0)  -- 8-bit data output
    );
end rom_16x8_one_hot;

architecture behavioral of rom_16x8_one_hot is
begin
    process (input_lines)
    begin
        case input_lines is
            when "0000000000000001" => data_out <= "00000001"; -- Input 0 active
            when "0000000000000010" => data_out <= "00000010"; -- Input 1 active
            when "0000000000000100" => data_out <= "00000011"; -- Input 2 active
            when "0000000000001000" => data_out <= "00000100"; -- Input 3 active
            when "0000000000010000" => data_out <= "00000101"; -- Input 4 active
            when "0000000000100000" => data_out <= "00000110"; -- Input 5 active
            when "0000000001000000" => data_out <= "00000111"; -- Input 6 active
            when "0000000010000000" => data_out <= "00001000"; -- Input 7 active
            when "0000000100000000" => data_out <= "00001001"; -- Input 8 active
            when "0000001000000000" => data_out <= "00001010"; -- Input 9 active
            when "0000010000000000" => data_out <= "00001011"; -- Input 10 active
            when "0000100000000000" => data_out <= "00001100"; -- Input 11 active
            when "0001000000000000" => data_out <= "00001101"; -- Input 12 active
            when "0010000000000000" => data_out <= "00001110"; -- Input 13 active
            when "0100000000000000" => data_out <= "00001111"; -- Input 14 active
            when "1000000000000000" => data_out <= "00010000"; -- Input 15 active
            when others => data_out <= "00000000";  -- Default case if no valid input
        end case;
    end process;
end behavioral;
