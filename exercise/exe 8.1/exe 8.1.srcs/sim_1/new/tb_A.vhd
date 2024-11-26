library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity A_tb is
end A_tb;

architecture behavior of A_tb is

    -- Component declaration of the tested entity
    component A
        Port (
            CLK   : in  STD_LOGIC;
            RST   : in  STD_LOGIC;
            NXT   : in  STD_LOGIC;
            ACKb  : in  STD_LOGIC;
            d     : out STD_LOGIC_VECTOR (7 downto 0);
            REQ   : out STD_LOGIC;
            ACKa  : out STD_LOGIC
        );
    end component;

    -- Testbench signals
    signal CLK   : std_logic := '0';
    signal RST   : std_logic := '0'; -- Ignoring reset as mentioned
    signal NXT   : std_logic := '0';
    signal ACKb  : std_logic := '0';
    signal d     : std_logic_vector(7 downto 0);
    signal REQ   : std_logic;
    signal ACKa  : std_logic;

    -- Clock period definition (adjust according to your clock frequency)
    constant CLK_PERIOD : time := 10 ns;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: A
        Port map (
            CLK   => CLK,
            RST   => RST,
            NXT   => NXT,
            ACKb  => ACKb,
            d     => d,
            REQ   => REQ,
            ACKa  => ACKa
        );

    -- Clock process definition
    clk_process :process
    begin
        CLK <= '0';
        wait for CLK_PERIOD / 2;
        CLK <= '1';
        wait for CLK_PERIOD / 2;
    end process clk_process;

    -- Stimulus process
    stim_proc: process
    begin
        -- Initial values
        NXT <= '0';
        ACKb <= '0';
        
        -- Wait for 20 ns to start simulation
        wait for 100 ns;
        
        -- 1. Test case: NXT rising to '1' to start the data request
        NXT <= '1';
        wait for 10 ns;
        
        -- 2. Test case: ACKb responds after a short delay
        NXT <= '0';
        
        wait for 17ns;
        ACKb <= '1';
        wait for 10 ns;
        
        -- 3. Test case: NXT back to '0' and ACKb to '0', wait for the system response
        NXT <= '0';
        ACKb <= '0';
        wait for 50 ns;
        
        -- 4. Test case: Another NXT pulse
        NXT <= '1';
        wait for 10 ns;
        NXT <= '0';
        ACKb <= '1';  -- ACKb goes high again
        wait for 10 ns;
        NXT <= '0';
        ACKb <= '0';
        
        -- End simulation after enough time
        wait for 100 ns;
        
        -- Stop the simulation
        wait;
    end process stim_proc;

end behavior;
