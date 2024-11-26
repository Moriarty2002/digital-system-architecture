library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.all;

entity m_system is
    Port ( input : in STD_LOGIC_VECTOR (3 downto 0);
           read: in STD_LOGIC;
           output : out STD_LOGIC_VECTOR (0 to 3));
end m_system;

architecture architectural of m_system is

    signal rom_address: STD_LOGIC_VECTOR(0 to 15);
    signal rom_out: STD_LOGIC_VECTOR(7 downto 0);
    
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
    
    decoder: entity work.decoder_4_16 
    port map(
        w => input,
        enable => '1',
        y => rom_address
    );
    
    rom: entity work.rom_16x8_one_hot
    port map(
        input_lines => reverse_any_vector(rom_address),
        read => read,
        data_out => rom_out
    );
    
    m_trasform: entity work.m_trasformation -- shift input and cut it to 4 bit
    port map(
        i => rom_out,
        y => output
    );
    
    
    

end architectural;


