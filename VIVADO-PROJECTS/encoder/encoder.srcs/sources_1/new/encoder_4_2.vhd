library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity encoder_4_2 is
    Port ( i : in STD_LOGIC_VECTOR (3 downto 0);
           enable : in STD_LOGIC;
           y : out STD_LOGIC_VECTOR (0 to 1));
end encoder_4_2;

architecture Behavioral of encoder_4_2 is

    signal enable_output : std_logic_vector(4 downto 0);

begin
    enable_output <= enable & i;
    
    with enable_output select
        y <= --"00" when "10001",
             "01" when "10010",
             "10" when "10100",
             "11" when "11000",
             "00" when others; --XX
    

end Behavioral;
