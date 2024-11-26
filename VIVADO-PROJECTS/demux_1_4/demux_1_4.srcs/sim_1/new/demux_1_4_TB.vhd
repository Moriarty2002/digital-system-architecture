library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.all;

entity demux_1_4_TB is
end demux_1_4_TB;

architecture tb of demux_1_4_TB is
    
    signal input: std_logic;
    signal selector: std_logic_vector(1 downto 0);
    signal output: std_logic_vector(3 downto 0);

begin
    
    instance: entity work.demux_1_4 port map (
        a => input,
        s => selector,
        y => output
    );
    
    tb_ps: process
    begin
        wait for 100ns;
        
        input <= '1';
        wait for 50ns;
        selector <= "00";
        
        wait for 50ns;
        selector <= "10";
        
        wait for 50ns;
        input <= '0';
        
        wait;
    end process;

end tb;
