library ieee;
use ieee.std_logic_1164.all;

entity decoder_4_16 is
	port (
		w      : in std_logic_vector(3 downto 0); -- 4-bit input
		enable : in std_logic;
		y      : out std_logic_vector(0 to 15) -- 16 output lines
	);
end decoder_4_16;

architecture behavior of decoder_4_16 is
	signal y_high : std_logic_vector(0 to 3); -- Output of the high 2-to-4 decoder
	-- signal y_low  : std_logic_vector(0 to 3); -- Signals for low bits decoders
begin
	-- First 2-to-4 decoder for higher 2 bits (w(3 downto 2))
	dec_high: entity work.decoder_2_4
		port map(
			w      => w(3 downto 2),
			enable => enable,
			y      => y_high
		);

	-- Second level: 4 instances of the 2-to-4 decoders for lower 2 bits (w(1 downto 0))
	dec_low0: entity work.decoder_2_4
		port map(
			w      => w(1 downto 0),
			enable => y_high(0),
			y      => y(0 to 3)
		);
--	y(0 to 3) <= y_low when y_high(0) = '1' else (others => '0');

	dec_low1: entity work.decoder_2_4
		port map(
			w      => w(1 downto 0),
			enable => y_high(1),
			y      => y(4 to 7)
		);
--	y(4 to 7) <= y_low when y_high(1) = '1' else (others => '0');

	dec_low2: entity work.decoder_2_4
		port map(
			w      => w(1 downto 0),
			enable => y_high(2),
			y      => y(8 to 11)
		);
--	y(8 to 11) <= y_low when y_high(2) = '1' else (others => '0');

	dec_low3: entity work.decoder_2_4
		port map(
			w      => w(1 downto 0),
			enable => y_high(3),
			y      => y(12 to 15)
		);
--	y(12 to 15) <= y_low when y_high(3) = '1' else (others => '0');

end behavior;
