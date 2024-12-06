library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY ROM_8_8 IS
    GENERIC(
        len_add : positive := 3
    );
    
    PORT ( 
        CLK_rom : in std_logic;
        address : in std_logic_vector(len_add - 1 downto 0);
        read : in std_logic;
        dout : out std_logic_vector(7 downto 0)
    );
END ROM_8_8;

ARCHITECTURE Behavioral of ROM_8_8 is

CONSTANT N : positive := 2**len_add;
TYPE MEMORY_N_8 IS ARRAY (0 to N-1) OF std_logic_vector(7 downto 0);

constant ROM_N_8 : MEMORY_N_8 := (
 "00000000",
 "00000001",
 "00000010",
 "00000011",
 "00000100",
 "00000101",
 "00000110",
 "00000111"
 );

BEGIN

 main : process(CLK_rom)
 begin
    if rising_edge(CLK_rom) then
        if(read = '1') then
            dout <= ROM_N_8(to_integer(unsigned(address)));
        end if;
    end if;           
 
end process main;

END Behavioral;
