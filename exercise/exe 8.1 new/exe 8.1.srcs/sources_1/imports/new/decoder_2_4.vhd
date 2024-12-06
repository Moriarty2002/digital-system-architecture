library ieee;
use ieee.std_logic_1164.all;

entity decoder_2_4 is
	port ( w  : in std_logic_vector(1 downto 0);
           enable : in std_logic;
           y  : out std_logic_vector(0 to 3)
          );
end decoder_2_4;

architecture behavior of decoder_2_4 is
	signal enabled_input : std_logic_vector(2 downto 0);
begin
	enabled_input <= enable & w;
	with enabled_input select
		y <= "1000" when "100",
			  "0100" when "101",
			  "0010" when "110",
			  "0001" when "111",
			  "0000" when others;
end behavior;