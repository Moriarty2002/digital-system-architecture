library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

-- *******************************************************************************
-- MUX 2:1 --

entity mux_2_1 is
    generic (
        N: in integer := 1
    );

	port( 	a0 	: in STD_LOGIC_VECTOR(N-1 downto 0);
			a1 	: in STD_LOGIC_VECTOR(N-1 downto 0);
			s 	: in STD_LOGIC;
			y 	: out STD_LOGIC_VECTOR(N-1 downto 0)
	);
		
end mux_2_1;


architecture dataflow of mux_2_1 is

	begin
		y <= a0 when s = '0' else a1;

end dataflow;
