library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.all;

entity encoder_8_4 is
  Port ( i : in STD_LOGIC_VECTOR (7 downto 0);
        enable : in STD_LOGIC;
        y : out STD_LOGIC_VECTOR (0 to 3));
end encoder_8_4;

-- MAL CHE VADA USARE ARCHITETTURA BEHAVIOURAL
-- FARLO A PRESCINDERE E VEDERE SCHEMATICA

-- ALTR POSSIBILITA', alzare bit dopo i4 alti e passare input a singolo decoder
architecture structural of encoder_8_4 is

signal custom_input_1 : STD_LOGIC_VECTOR(3 downto 0);
signal custom_input_2 : STD_LOGIC_VECTOR(3 downto 0);

begin
    enc_1: entity work.encoder_4_2
    port map (
        i => custom_input_1,
        enable => enable,
        y => y(0 to 1)
    );
    -- TODO: MECCANISMO NON CORRETTO, VEDERE COME GESTIRE I 2 BLOCCHI UNITI
    enc_2: entity work.encoder_4_2
    port map (
        i => custom_input_2,
        enable => enable,
        y => y(2 to 3)
    );
    
    custom_input_1 <= i(3 downto 0) when (i(7 downto 4) = "0000");
                     -- altro when ... else

end structural;


architecture behavioural of encoder_8_4 is

    signal enable_output : std_logic_vector(8 downto 0);

begin
    
    enable_output <= enable & i;
    
    with enable_output select
        y <= --"00" when "10001",
             --"0000" when "100000001",
             "0001" when "100000010",
             "0010" when "100000100",
             "0011" when "100001000",
             "0100" when "100010000",
             "0101" when "100100000",
             "0110" when "101000000",
             "0111" when "110000000",
             "0000" when others; --XX

end behavioural;
