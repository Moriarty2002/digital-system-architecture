library ieee;
use ieee.std_logic_1164.all;

entity tb_automa is
end tb_automa;

architecture tb of tb_automa is

    component automa
        port (input  : in std_logic;
              mode   : in std_logic;
              CLK    : in std_logic;
              RST    : in std_logic;
              output : out std_logic);
    end component;

    signal input  : std_logic;
    signal mode   : std_logic;
    signal CLK    : std_logic;
    signal RST    : std_logic;
    signal output : std_logic;

    constant CLK_period : time := 10 ns;

begin

    dut : automa
    port map (input  => input,
              mode   => mode,
              CLK    => CLK,
              RST    => RST,
              output => output);

    CLK_process :process
       begin
            CLK <= '0';
            wait for CLK_period/2;
            CLK <= '1';
            wait for CLK_period/2;
       end process;

    stimuli : process
    begin
        wait for 100 ns;
        
        -- EDIT Adapt initialization as needed
        input <= '0';
        mode <= '1';

        -- insert stimulus here 
		input<='0';
		wait for 10 ns;
		input<='0';
		wait for 10 ns;
		input<='1';
		wait for 10 ns;
		input<='0';
		wait for 10 ns;
		input<='1';
		wait for 10 ns;
		input<='1';
		wait for 10 ns;
		input<='0';
		wait for 10 ns;
		input<='0';
		
        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_automa of tb_automa is
    for tb
    end for;
end cfg_tb_automa;