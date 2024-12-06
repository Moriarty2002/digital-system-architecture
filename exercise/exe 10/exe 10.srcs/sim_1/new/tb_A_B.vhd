library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Entity Declaration of the Testbench (No ports)
entity tb_A_B is
end tb_A_B;

-- Architecture of the Testbench
architecture sim of tb_A_B is

    -- Component Declaration for the Unit Under Test (UUT)
    component A_B is
        Port (
            CLK : in STD_LOGIC;
            RST : in STD_LOGIC;
            WR  : in STD_LOGIC;
            ER  : out STD_LOGIC
        );
    end component;

    -- Signal Declarations for Testbench
    signal CLK_tb : STD_LOGIC := '0';
    signal RST_tb : STD_LOGIC := '0';
    signal WR_tb  : STD_LOGIC := '0';
    signal ER_tb  : STD_LOGIC;

    -- Clock Period definition (for 100 MHz clock, period = 10 ns)
    constant clk_period : time := 10 ns;

begin

    -- Instantiate the Unit Under Test (UUT)
    UUT: A_B
        port map (
            CLK => CLK_tb,
            RST => RST_tb,
            WR  => WR_tb,
            ER  => ER_tb
        );

    -- Clock Process Definitions
    clk_process : process
    begin
        while true loop
            CLK_tb <= '0';
            wait for clk_period / 2;
            CLK_tb <= '1';
            wait for clk_period / 2;
        end loop;
        wait;
    end process;

    -- Stimulus Process
    stim_proc: process
    begin
        wait for 100ns;
        -- Initialize Inputs
--        RST_tb <= '1'; -- Assert Reset
--        WR_tb <= '0';
--        wait for 20 ns;
        
        -- Deassert Reset after some time
--        RST_tb <= '0';
--        wait for 20 ns;
        
        -- Write operation simulation
        WR_tb <= '1';  -- Enable write
        wait for CLK_PERIOD;
        
        WR_tb <= '0';  -- Disable write
        wait for 200 ns;
        
        -- Simulate another write
        WR_tb <= '1'; 
        wait for 40 ns;
        
        WR_tb <= '0'; 
        wait for 40 ns;

        -- Simulation End
        wait;
    end process;

end sim;
