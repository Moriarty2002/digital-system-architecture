library ieee;
use ieee.std_logic_1164.all;
use work.all;

entity tb_demux_1_16 is
end tb_demux_1_16;

architecture tb of tb_demux_1_16 is

    signal a : std_logic;
    signal s : std_logic_vector (3 downto 0);
    signal y : std_logic_vector (15 downto 0);

begin

    dut : entity work.demux_1_16
    port map (a => a,
              s => s,
              y => y);

    stimuli : process
    begin
        wait for 100ns;
    
        -- EDIT Adapt initialization as needed
        a <= '0';
        s <= (others => '0');

        -- EDIT Add stimuli here
        wait for 10ns;
        
        a <= '1';
        
        wait for 10ns;
        
        s(2) <= '1';

        wait;
    end process;

end tb;