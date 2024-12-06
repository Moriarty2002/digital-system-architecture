library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity memoria is
    Generic(
        len_add : positive := 3
    );
    Port(
        CLK_mem : in std_logic;
        write : in std_logic;
        address : in std_logic_vector (len_add-1 downto 0);
        inp_val : in std_logic_vector(7 downto 0);
        out_val : out std_logic_vector(7 downto 0)
    );
end memoria;

architecture Behavioral of memoria is
CONSTANT N : positive := 2**len_add;
signal address_temp : std_logic_vector(len_add-1 downto 0);

type MEMORY_N_4 is array (0 to N-1) of std_logic_vector(N-1 downto 0);
signal MEM : MEMORY_N_4;
begin
process (CLK_mem)
    begin
        if rising_edge(CLK_mem) then
            if(write = '1') then
                MEM(to_integer(unsigned(address))) <= inp_val;
                address_temp <= address;
            end if;
            out_val <= MEM(to_integer(unsigned(address_temp)));
        end if;
end process;
end Behavioral;
