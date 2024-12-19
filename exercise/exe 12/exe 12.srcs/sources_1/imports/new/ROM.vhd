library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY ROM_N_4 IS
    GENERIC(
        N : positive := 3
    );
    
    PORT ( 
        CLK : in std_logic;
        address : in std_logic_vector(N - 1 downto 0);
        read : in std_logic;
        dout : out std_logic_vector(3 downto 0)
    );
END ROM_N_4;

ARCHITECTURE Behavioral of ROM_N_4 is

CONSTANT len : positive := 2**N;
TYPE MEMORY_N_8 IS ARRAY (0 to len-1) OF std_logic_vector(3 downto 0);

--constant ROM_8_8 : MEMORY_N_8 := (
-- "0000",
-- "0001",
-- "0010",
-- "0011",
-- "0100",
-- "0101",
-- "0110",
-- "0111"
-- );
 
 constant ROM_8_8 : MEMORY_N_8 := (
 "0001",
 "0001",
 "0001",
 "0001",
 "0001",
 "0001",
 "0001",
 "0001"
 );

BEGIN

 main : process(CLK)
 begin
    if rising_edge(CLK) then
        if(read = '1') then
            dout <= ROM_8_8(to_integer(unsigned(address)));
        end if;
    end if;           
 
end process main;

END Behavioral;