-- 16 input lines, 1 separate selector for the input
-- 4 output lines, 1 separate selector for the output

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.all;

entity interconnection_16_4 is
    Port ( a_16 : in STD_LOGIC_VECTOR (15 downto 0) := (others => 'U');
           s_in : in STD_LOGIC_VECTOR (3 downto 0);
           s_out : in STD_LOGIC_VECTOR (1 downto 0);
           y_4 : out STD_LOGIC_VECTOR (3 downto 0));
end interconnection_16_4;

architecture structural of interconnection_16_4 is

    signal trasmission: std_logic;

begin
    
    mux_16_1: entity work.mux_16_1
    port map (
      a_16  => a_16,          
      s_4 => s_in,          
      y   => trasmission
    );

    demux_1_4: entity work.demux_1_4
    port map (
      a  => trasmission,          
      s => s_out,          
      y   => y_4
    );

end structural;
