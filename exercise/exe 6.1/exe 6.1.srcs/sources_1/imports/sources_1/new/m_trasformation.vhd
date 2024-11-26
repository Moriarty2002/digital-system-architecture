library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity m_trasformation is
    Port ( i : in STD_LOGIC_VECTOR (7 downto 0);
           y : out STD_LOGIC_VECTOR (0 to 3));
end m_trasformation;

architecture Behavioral of m_trasformation is
    
    function reverse_any_vector (a: in std_logic_vector)
        return std_logic_vector is
          variable result: std_logic_vector(a'RANGE);
          alias aa: std_logic_vector(a'REVERSE_RANGE) is a;
        begin
          for i in aa'RANGE loop
            result(i) := aa(i);
          end loop;
          return result;
        end; -- function reverse_any_vector
    
begin

    y <= reverse_any_vector( (i(5 downto 2)) );
end Behavioral;
