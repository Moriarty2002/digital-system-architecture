library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_decoder_4_16 is
	-- No ports for testbench
end tb_decoder_4_16;

architecture behavior of tb_decoder_4_16 is
	-- Component declaration for the Unit Under Test (UUT)
	component decoder_4_16
		port (
			w      : in std_logic_vector(3 downto 0);
			enable : in std_logic;
			y      : out std_logic_vector(0 to 15)
		);
	end component;

	-- Signals for connecting to the UUT
	signal w      : std_logic_vector(3 downto 0);
	signal enable : std_logic;
	signal y      : std_logic_vector(0 to 15);

begin
	-- Instantiate the Unit Under Test (UUT)
	UUT: decoder_4_16
		port map (
			w      => w,
			enable => enable,
			y      => y
		);

	-- Stimulus process with signal tracing
	stim_proc: process
	begin
		-- Initialize signals
		enable <= '0';
		w <= "0000";
		wait for 10 ns;

		-- Test case 1: Enable = 0, no output should be enabled
		enable <= '0';
		w <= "0000";
		wait for 10 ns;
		
		-- Test case 2: Enable = 1, input 0000
		enable <= '1';
		w <= "0000";
		wait for 10 ns;
		
		-- Test case 3: Enable = 1, input 0001
		w <= "0001";
		wait for 10 ns;

		-- Test case 4: Enable = 1, input 0010
		w <= "0010";
		wait for 10 ns;

		-- Test case 5: Enable = 1, input 0011
		w <= "0011";
		wait for 10 ns;

		-- Test case 6: Enable = 1, input 0100
		w <= "0100";
		wait for 10 ns;

		-- Test case 7: Enable = 1, input 0101
		w <= "0101";
		wait for 10 ns;

		-- Test case 8: Enable = 1, input 0110
		w <= "0110";
		wait for 10 ns;

		-- Test case 9: Enable = 1, input 0111
		w <= "0111";
		wait for 10 ns;

		-- Test case 10: Enable = 1, input 1000
		w <= "1000";
		wait for 10 ns;

		-- Test case 11: Enable = 1, input 1111
		w <= "1111";
		wait for 10 ns;

		-- Finish simulation
		wait;
	end process;

end behavior;
