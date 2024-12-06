library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity m_trasformation is
    Port ( i : in STD_LOGIC_VECTOR (7 downto 0);
           y : out STD_LOGIC_VECTOR (3 downto 0));
end m_trasformation;

architecture Behavioral of m_trasformation is
    
begin

    y <= i(5 downto 2);
end Behavioral;
