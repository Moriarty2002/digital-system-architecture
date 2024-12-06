library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity declaration for the testbench (no ports since this is a self-contained test environment)
entity A_tb is
end A_tb;

-- Architecture for the testbench
architecture Behavioral of A_tb is

    -- Component Declaration for the Unit Under Test (UUT)
    component A
        Port ( 
            CLK : in STD_LOGIC;
            RST : in STD_LOGIC;
            WR : in STD_LOGIC;
            TXD : out STD_LOGIC;
            RXD : in STD_LOGIC;
            ER : out STD_LOGIC
        );
    end component;

    -- Signals to connect to the UUT
    signal CLK_tb : STD_LOGIC := '0';
    signal RST_tb : STD_LOGIC := '0';
    signal WR_tb : STD_LOGIC := '0';
    signal TXD_tb : STD_LOGIC;
    signal RXD_tb : STD_LOGIC; -- Assume RXD is '1' (idle state for UART)
    signal ER_tb : STD_LOGIC;

    -- Clock period definition (assuming a 100 MHz clock)
    constant CLK_PERIOD : time := 10 ns;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: A
        Port map (
            CLK => CLK_tb,
            RST => RST_tb,
            WR => WR_tb,
            TXD => TXD_tb,
            RXD => RXD_tb,
            ER => ER_tb
        );

    -- Clock process definitions
    CLK_process : process
    begin
        while true loop
            CLK_tb <= '0';
            wait for CLK_PERIOD / 2;
            CLK_tb <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
        wait;
    end process;

    -- Stimulus process to drive inputs
    stimulus_process : process
    begin
    
     wait for 100ns;
        -- Reset the system
--        RST_tb <= '1';
--        wait for 100 ns;
--        RST_tb <= '0';

        -- Start UART transmission (writing to the system)
        WR_tb <= '1';
        wait for CLK_PERIOD;  -- Enough time to allow a transition from IDLE to READ
        WR_tb <= '0';

        -- Wait for the UART to complete the sending process
        wait for 400 ns; -- Wait for the transmission to happen

        -- Trigger another write cycle
        WR_tb <= '1';
        wait for CLK_PERIOD;
        WR_tb <= '0';

        -- Observe system for a while after sending data
        wait for 1000 ns;

        -- End simulation
        wait;
    end process;

end Behavioral;
