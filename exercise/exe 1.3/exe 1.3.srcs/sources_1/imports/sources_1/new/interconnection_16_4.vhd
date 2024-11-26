-- 16 input lines, 1 separate selector for the input
-- 4 output lines, 1 separate selector for the output

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.all;

entity interconnection_16_4 is
    Port ( a_8_8 : in STD_LOGIC_VECTOR (7 downto 0) := (others => 'U');
           load_first: in std_logic;
           load_second: in std_logic;
           CLK: in std_logic;
           s_in : in STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
           s_out : in STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
           y_4 : out STD_LOGIC_VECTOR (3 downto 0));
end interconnection_16_4;

architecture structural of interconnection_16_4 is

    signal trasmission: std_logic;
    signal input: STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
    
begin
    
    mux_16_1: entity work.mux_16_1
    port map (
      a_16 => input,          
      s_4 => s_in,          
      y   => trasmission
    );

    demux_1_4: entity work.demux_1_4
    port map (
      a  => trasmission,          
      s => s_out,          
      y   => y_4
    );
    
    input_cu: process(CLK)
        begin
            if rising_edge(clk) then
                if load_first = '1' then
                    input(7 downto 0) <= a_8_8;
                end if;
        
                if load_second = '1' then
                    input(15 downto 8) <= a_8_8;
                end if;
            end if;
        end process;

end structural;
