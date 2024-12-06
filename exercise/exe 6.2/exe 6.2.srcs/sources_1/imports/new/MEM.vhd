library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity MEM is
    Generic (
        N : integer := 3;  -- row
        M : integer := 8  -- columns
    );
    Port ( i: in STD_LOGIC_VECTOR(M-1 downto 0);
           CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           WRITE : in STD_LOGIC;
           address: in integer;
           y : out STD_LOGIC_VECTOR(M-1 downto 0)
     );
end MEM;

architecture Behavioral of MEM is
type mem_matrix is array (0 to (N-1)) of std_logic_vector((M-1) downto 0);

begin
        
    mem_ps: process(CLK)
    variable mem: mem_matrix;
    begin
    
        if rising_edge(CLK) then
            if (RST = '1') then
                -- Initialize memory to a default value (e.g., all zeros)
                for i in 0 to N-1 loop
                    mem(i) := (others => '0');
                end loop;
                
            elsif write = '1' then
                
                mem(address) := i;
                y <= mem(address);
                
            end if;
        end if;
    
    end process;


end Behavioral;
