library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.all;

entity A_B is
  Port ( 
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    WR : in STD_LOGIC;
    ER : out STD_LOGIC;
    TMP_OUT: out STD_LOGIC_VECTOR(7 downto 0)
  );
end A_B;

architecture Structural of A_B is

    signal s_A_to_B: STD_LOGIC;
    signal s_B_to_A: STD_LOGIC;
    
begin

    A: entity work.A 
    port map ( 
        CLK => CLK,
        RST => RST,
        WR => WR,
        TXD => s_A_to_B,
        RXD => s_B_to_A,
        ER => ER -- error flag
    );
    
    
    B: entity work.B 
    port map ( 
        CLK => CLK,
        RST => RST,
        TXD => s_B_to_A,
        RXD => s_A_to_B,
        ER => ER, -- error flag
        TMP_OUT => TMP_OUT
   );

end Structural;
