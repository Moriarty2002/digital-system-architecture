library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.all;

entity m_system is
    Port ( input : in STD_LOGIC_VECTOR (3 downto 0);
           CLK : in STD_LOGIC;
           read : in STD_LOGIC;
           output : out STD_LOGIC_VECTOR (3 downto 0));
end m_system;

architecture architectural of m_system is

    signal rom_address: STD_LOGIC_VECTOR(15 downto 0);
    signal rom_out: STD_LOGIC_VECTOR(7 downto 0);

begin
    
    decoder: entity work.decoder_4_16(Behavioral)
    port map(
        input => input,
        output => rom_address
    );
    
    rom: entity work.rom_16x8_one_hot
    port map(
        input_lines => rom_address,
        CLK => CLK,
        read => read,
        data_out => rom_out
    );
    
    m_trasform: entity work.m_trasformation -- shift input and cut it to 4 bit
    port map(
        i => rom_out,
        y => output
    );
    
    
    

end architectural;


