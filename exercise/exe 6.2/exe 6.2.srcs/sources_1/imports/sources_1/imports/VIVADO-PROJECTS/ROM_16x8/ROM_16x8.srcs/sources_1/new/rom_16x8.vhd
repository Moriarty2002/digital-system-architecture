library ieee;
use ieee.std_logic_1164.all;

entity rom_16x8_one_hot is
    port (
        input_lines : in std_logic_vector(15 downto 0); -- 16 input lines (one-hot encoding)
        CLK : in STD_LOGIC;
        read : in STD_LOGIC;
        data_out    : out std_logic_vector(7 downto 0)  -- 8-bit data output
    );
end rom_16x8_one_hot;

architecture behavioral of rom_16x8_one_hot is
begin
    process (CLK)
    begin
        if( rising_edge(CLK) ) then
            if read = '1' then
                case input_lines is
                    when "0000000000000001" => data_out <= "00000101"; 
                    when "0000000000000010" => data_out <= "00001010"; 
                    when "0000000000000100" => data_out <= "00001100"; 
                    when "0000000000001000" => data_out <= "00010000"; 
                    when "0000000000010000" => data_out <= "00010100"; 
                    when "0000000000100000" => data_out <= "00011000"; 
                    when "0000000001000000" => data_out <= "01011100"; 
                    when "0000000010000000" => data_out <= "10100000"; 
                    when "0000000100000000" => data_out <= "00100101"; 
                    when "0000001000000000" => data_out <= "00101010"; 
                    when "0000010000000000" => data_out <= "00101111"; 
                    when "0000100000000000" => data_out <= "00110000"; 
                    when "0001000000000000" => data_out <= "00110101"; 
                    when "0010000000000000" => data_out <= "00111010"; 
                    when "0100000000000000" => data_out <= "00111111"; 
                    when "1000000000000000" => data_out <= "00111000"; 
                    when others => data_out <= "00000000"; 
                end case;
            end if;
        end if;
    end process;
end behavioral;
