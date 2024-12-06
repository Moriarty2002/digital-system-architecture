library ieee;
use ieee.std_logic_1164.all;

entity rom_8x8 is
    port (
        i : in std_logic_vector(2 downto 0); -- 8 input lines
        CLK : in STD_LOGIC;
        read: in STD_LOGIC;
        d : out std_logic_vector(7 downto 0)  -- 8-bit data output
    );
end rom_8x8;

architecture behavioral of rom_8x8 is
begin
    process (CLK)
    begin
        if (rising_edge(CLK) and read = '1') then
            case i is
                when "000" => d <= "00000001"; 
                when "001" => d <= "00000010"; 
                when "010" => d <= "00000011"; 
                when "011" => d <= "00000100";
                when "100" => d <= "00000101"; 
                when "101" => d <= "00000110"; 
                when "110" => d <= "00000111"; 
                when "111" => d <= "00001000"; 
                when others => d <= "00000000";  
            end case;
        end if;
    end process;
end behavioral;
