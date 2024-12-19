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
            when "0000000000000001" => data_out <= "00010101"; 
            when "0000000000000010" => data_out <= "00001010"; 
            when "0000000000000100" => data_out <= "00000100"; 
            when "0000000000001000" => data_out <= "00001000"; 
            when "0000000000010000" => data_out <= "00010000"; 
            when "0000000000100000" => data_out <= "00100000"; 
            when "0000000001000000" => data_out <= "01000000"; 
            when "0000000010000000" => data_out <= "10000000"; 
            when "0000000100000000" => data_out <= "00001001"; 
            when "0000001000000000" => data_out <= "00001010"; 
            when "0000010000000000" => data_out <= "00001011"; 
            when "0000100000000000" => data_out <= "00001100"; 
            when "0001000000000000" => data_out <= "00001101"; 
            when "0010000000000000" => data_out <= "00001110"; 
            when "0100000000000000" => data_out <= "00001111"; 
            when "1000000000000000" => data_out <= "00010000"; 
            when others => data_out <= "00000000";  
        end case;
    end process;
end behavioral;
