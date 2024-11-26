library ieee;
use ieee.std_logic_1164.all;
use work.all;

entity tb_mux_16_1 is
end tb_mux_16_1;

architecture tb of tb_mux_16_1 is

    -- Component declaration for mux_16_1
    component mux_16_1
        port (
            a_16 : in std_logic_vector (0 to 15);  -- Use downto for consistency
            s_4  : in std_logic_vector (3 downto 0);   -- Use downto for consistency
            y    : out std_logic
        );
    end component;

    -- Signal declarations
    signal input : std_logic_vector (15 downto 0);  -- Use downto
    signal selector  : std_logic_vector (3 downto 0);   -- Use downto
    signal output    : std_logic;

begin

    -- Instantiate the DUT (Device Under Test)
    dut : mux_16_1
    port map (
        a_16 => input,
        s_4  => selector,
        y    => output
    );

    -- Stimuli process to apply test cases
    stimuli : process
    begin
        -- Initialize signals
         wait for 100ns;
        
        -- EDIT Adapt initialization as needed
        input <= (others => 'U');
        selector <= (others => 'U');

        -- EDIT Add stimuli here
        wait for 10ns;
        
        input(0) <= '1';
        
        input(9) <= '1';
        
        wait for 10ns;
        
        selector <= "0000";

        -- End simulation
        wait;
    end process;

end tb;
