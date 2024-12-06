library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use work.all;

entity A_B is
    Port ( CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           NXT : in STD_LOGIC;
           TMP_sum : out STD_LOGIC_VECTOR (7 downto 0)
           );
end A_B;

architecture Structural of A_B is


-- interconnection signals
signal s_ACKa: std_logic := '0';
signal s_ACKb: std_logic := '0';
signal s_REQ: std_logic := '0';
signal s_NXT: std_logic := '0';
signal s_DATA: std_logic_vector(7 downto 0) := "00000000";


begin  

    BTN: entity work.ButtonDebouncer
    generic map (                       
        CLK_period => 10, -- periodo del clock (della board) in nanosecondi
        btn_noise_time => 10000000 --10000000 -- durata stimata dell'oscillazione del bottone in nanosecondi
                                            -- il valore di default è 10 millisecondi
    )
    port map
    ( RST => RST,
           CLK => CLK,
           BTN => NXT,
           CLEARED_BTN => s_NXT
    );

    A: entity work.A 
    port map ( 
           CLK => CLK,
           RST => RST,
           NXT => s_NXT,
           ACKb => s_ACKb,
           d => s_DATA,
           REQ => s_REQ,
           ACKa => s_ACKa
    );
   
   B: entity work.B
   port map (
       CLK => CLK,
       RST => RST,
       REQ => s_REQ,
       ACKa => s_ACKa,
       d => s_DATA,
       ACKb => s_ACKb,
       TMP_sum_print => TMP_sum
   );
    

end Structural;
