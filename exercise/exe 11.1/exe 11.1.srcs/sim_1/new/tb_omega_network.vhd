library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_omega_network is
    -- No ports for a testbench
end tb_omega_network;

architecture Behavioral of tb_omega_network is

    -- Constants
    constant N : integer := 4;  -- Message length set to 4 bits

    -- Test signals
    signal node_i_0     : STD_LOGIC_VECTOR(3 downto 0);
    signal node_i_1     : STD_LOGIC_VECTOR(3 downto 0);
    signal node_i_2     : STD_LOGIC_VECTOR(3 downto 0);
    signal node_i_3     : STD_LOGIC_VECTOR(3 downto 0);
    signal source_req   : STD_LOGIC_VECTOR(3 downto 0);  -- Source request for selecting inputs
    signal node_y_0     : STD_LOGIC_VECTOR(1 downto 0);  -- Outputs for the receiver nodes
    signal node_y_1     : STD_LOGIC_VECTOR(1 downto 0);
    signal node_y_2     : STD_LOGIC_VECTOR(1 downto 0);
    signal node_y_3     : STD_LOGIC_VECTOR(1 downto 0);

begin

    -- Instantiate the DUT (Device Under Test)
    uut: entity work.omega_network
    port map (
        node_i_0   => node_i_0,
        node_i_1   => node_i_1,
        node_i_2   => node_i_2,
        node_i_3   => node_i_3,
        source_req => source_req,
        node_y_0   => node_y_0,
        node_y_1   => node_y_1,
        node_y_2   => node_y_2,
        node_y_3   => node_y_3
    );

    -- Test process
    stim_proc: process
    begin
        wait for 100ns;
        
        -- Test case 1: Send from node 0
        node_i_0 <= "1101";  -- 11 as destination, 01 as message
        node_i_1 <= "0000";
        node_i_2 <= "0000";
        node_i_3 <= "0000";
        source_req <= "1000"; -- Request from node 0
        wait for 100 ns;
        
        node_i_0 <= "0001";  -- 00 as destination, 01 as message
        node_i_1 <= "0000";
        node_i_2 <= "0000";
        node_i_3 <= "0000";
        source_req <= "1000"; -- Request from node 0
        wait for 100 ns;


        -- Test case 3: Send from node 2
        node_i_0 <= "0000";
        node_i_1 <= "0000";
        node_i_2 <= "0001";  -- 00 as destination
        node_i_3 <= "0000";
        source_req <= "0010"; -- Request from node 2
        wait for 100 ns;
        
        node_i_0 <= "0000";
        node_i_1 <= "0000";
        node_i_2 <= "1001";  -- 10 as destination
        node_i_3 <= "0000";
        source_req <= "0010"; -- Request from node 2
        wait for 100 ns;
        
        node_i_0 <= "0000";
        node_i_1 <= "0000";
        node_i_2 <= "0101";  -- 00 as destination
        node_i_3 <= "0000";
        source_req <= "0010"; -- Request from node 2
        wait for 100 ns;

        -- Test case 5: Multiple requests non collision, node 0 and node 1
        node_i_0 <= "1101";  -- 11 as destination
        node_i_1 <= "0001";  -- 00 as destination
        node_i_2 <= "0000";
        node_i_3 <= "0000";
        source_req <= "1100"; -- Requests from node 0 and node 1
        wait for 100 ns;
        
        -- Test case 6: Multiple requests collision, node 0 and node 1
        node_i_0 <= "1101";  -- 11 as destination
        node_i_1 <= "1001";  -- 10 as destination
        node_i_2 <= "0000";
        node_i_3 <= "0000";
        source_req <= "1100"; -- Requests from node 0 and node 1
        wait for 100 ns;
        
        -- Test case 6: Multiple requests collision, node 1 and node 2
        node_i_0 <= "0000";  
        node_i_1 <= "1001";  -- 10 as destination
        node_i_2 <= "0000";
        node_i_3 <= "0001";  -- 11 as destination
        source_req <= "0101"; -- Requests from node 0 and node 1

        -- Stop simulation
        wait;
    end process;

end Behavioral;
