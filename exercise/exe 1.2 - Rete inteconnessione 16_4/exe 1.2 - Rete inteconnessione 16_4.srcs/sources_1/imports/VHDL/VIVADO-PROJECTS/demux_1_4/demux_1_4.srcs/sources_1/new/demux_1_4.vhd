library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity demux_1_4 is
  Port (
    a: in STD_LOGIC;
    s: in STD_LOGIC_VECTOR(1 downto 0);
    y: out STD_LOGIC_VECTOR(3 downto 0)
   );
end demux_1_4;

architecture dataflow of demux_1_4 is

begin

    y(0) <= a when s = "00" else '0'; 
    y(1) <= a when s = "01" else '0'; 
    y(2) <= a when s = "10" else '0'; 
    y(3) <= a when s = "11" else '0'; 

end dataflow;
