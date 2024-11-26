library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_decoder_2_4 is
	-- No ports for testbench
end tb_decoder_2_4;

architecture behavior of tb_decoder_2_4 is
	-- Component declaration for the Unit Under Test (UUT)
	component decoder_2_4
		port (
			w      : in std_logic_vector(1 downto 0);
			enable : in std_logic;
			y      : out std_logic_vector(0 to 3)
		);
	end component;

	-- Signals for connecting to the UUT
	signal w      : std_logic_vector(1 downto 0);
	signal enable : std_logic;
	signal y      : std_logic_vector(0 to 3);

begin
	-- Instantiate the Unit Under Test (UUT)
	UUT: decoder_2_4
		port map (
			w      => w,
			enable => enable,
			y      => y
		);

	-- Stimulus process
	stim_proc: process
	begin
	   wait for 100ns;
		-- Test case 1: Enable = 0, no output should be enabled
		enable <= '0';
		w <= "00";
		wait for 10 ns;

		-- Test case 2: Enable = 1, input 00 (output y(0) should be 0)
		enable <= '1';
		w <= "00";
		wait for 10 ns;

		-- Test case 3: Enable = 1, input 01 (output y(1) should be 0)
		w <= "01";
		wait for 10 ns;

		-- Test case 4: Enable = 1, input 10 (output y(2) should be 1)
		w <= "10";
		wait for 10 ns;

		-- Test case 5: Enable = 1, input 11 (output y(3) should be 1)
		w <= "11";
		wait for 10 ns;

		-- Finish simulation
		wait;
	end process;

end behavior;
