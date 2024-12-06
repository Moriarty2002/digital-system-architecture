library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity demux_1_2 is
    generic (
        N: integer := 1  -- Generic message length (vector size)
    );
    
    Port (
        a  : in  STD_LOGIC_VECTOR(N-1 downto 0); -- Input vector
        s  : in  STD_LOGIC;                      -- Select signal
        y0 : out STD_LOGIC_VECTOR(N-1 downto 0); -- Output 0
        y1 : out STD_LOGIC_VECTOR(N-1 downto 0)  -- Output 1
    );
end demux_1_2;

architecture dataflow of demux_1_2 is
begin
    -- Each output depends on the value of the select signal
    y0 <= a when s = '0' else (others => '0');
    y1 <= a when s = '1' else (others => '0');
    
end dataflow;

