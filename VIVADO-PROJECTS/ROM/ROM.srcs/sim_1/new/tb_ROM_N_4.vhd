LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
use work.all;

ENTITY tb_ROM_N_4 IS
-- Testbench has no ports
END tb_ROM_N_4;

ARCHITECTURE behavior OF tb_ROM_N_4 IS 
    
    -- Signal Declarations
    signal CLK : std_logic := '0';
    signal address : std_logic_vector(2 downto 0) := (others => '0');
    signal read : std_logic := '0';
    signal dout : std_logic_vector(3 downto 0);
    
    -- Clock period definition
    constant CLK_period : time := 10 ns;

BEGIN

    -- Instantiate the Unit Under Test (UUT)
    uut: entity work.ROM_N_4 PORT MAP (
          CLK => CLK,
          address => address,
          read => read,
          dout => dout
        );

    -- Clock process
    CLK_process :process
    begin
        CLK <= '0';
        wait for CLK_period/2;
        CLK <= '1';
        wait for CLK_period/2;
    end process;
    
    -- Stimulus process
    stim_proc: process
    begin	
        -- Hold reset state for 20 ns.
        wait for 20 ns;

        -- Start read operations
        read <= '1';
        
        -- Test address 0
        address <= "000";
        wait for CLK_period;
        
        -- Test address 1
        address <= "001";
        wait for CLK_period;

        -- Test address 2
        address <= "010";
        wait for CLK_period;
        
        -- Test address 3
        address <= "011";
        wait for CLK_period;
        
        -- Test address 4
        address <= "100";
        wait for CLK_period;

        -- Test address 5
        address <= "101";
        wait for CLK_period;

        -- Test address 6
        address <= "110";
        wait for CLK_period;

        -- Test address 7
        address <= "111";
        wait for CLK_period;

        -- Stop simulation
        wait;
    end process;

END;
