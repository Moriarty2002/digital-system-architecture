library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.all;

entity A_B is
    Port ( CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           START : in STD_LOGIC);
end A_B;

architecture Behavioral of A_B is

signal s_REQ : STD_LOGIC := '0';
signal s_ACK : STD_LOGIC := '0';
signal s_D : STD_LOGIC_VECTOR(3 downto 0);



begin

    A: entity work.A 
    port map ( 
       CLK => CLK,
       RST => RST,
       START => START,
       REQ => s_REQ,
       ACK => s_ACK,
       d => s_D
    );
    
    B: entity work.B
    port map ( 
       CLK => CLK,
       RST => RST,
       REQ => s_REQ,
       ACK => s_ACK,
       D => s_D
    );


end Behavioral;
