library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.all;

entity omega_network is
    Port ( node_i_0 : in STD_LOGIC_VECTOR(3 downto 0); -- sender nodes (2 bit DST + 2 bit MSG)
           node_i_1 : in STD_LOGIC_VECTOR(3 downto 0); 
           node_i_2 : in STD_LOGIC_VECTOR(3 downto 0); 
           node_i_3 : in STD_LOGIC_VECTOR(3 downto 0); 
           source_req: in STD_LOGIC_VECTOR(3 downto 0); -- used for choosing the inputs
           node_y_0 : out STD_LOGIC_VECTOR (1 downto 0); -- receiver nodes (print received msg)
           node_y_1 : out STD_LOGIC_VECTOR(1 downto 0); 
           node_y_2 : out STD_LOGIC_VECTOR(1 downto 0); 
           node_y_3 : out STD_LOGIC_VECTOR(1 downto 0)
           ); -- print of all the output nodes
end omega_network;

architecture Mixed of omega_network is

-- intermediate signals between switch
signal sel_in_signal_switch_0_2 : STD_LOGIC;
signal s_switch_0_0 : STD_LOGIC_VECTOR(2 downto 0);
signal s_switch_2_2 : STD_LOGIC_VECTOR(2 downto 0);
signal sel_in_signal_switch_0_1 : STD_LOGIC;

signal sel_in_signal_switch_1_3 : STD_LOGIC;
signal s_switch_1_1 : STD_LOGIC_VECTOR(2 downto 0);
signal s_switch_3_3 : STD_LOGIC_VECTOR(2 downto 0);
signal sel_in_signal_switch_2_3 : STD_LOGIC;


begin
    
    -- FIRST STAGE

    sel_in_signal_switch_0_2 <= NOT source_req(3);  -- if 0 want to send msg, it has priority (remember first bit is the MSB)
    switch_0_2: entity work.switch_2_2 
    generic map ( N => 4 ) 
    port map (
        a0  => node_i_0,
        a1  => node_i_2,
        sel_in   => sel_in_signal_switch_0_2,
        y0   => s_switch_0_0,
        y1   => s_switch_2_2
    );
      
    sel_in_signal_switch_1_3 <= NOT source_req(2); -- if 1 want to send msg, it has priority
    switch_1_3: entity work.switch_2_2 
    generic map ( N => 4 ) 
    port map (
        a0  => node_i_1,
        a1  => node_i_3,
        sel_in   => sel_in_signal_switch_1_3,
        y0   => s_switch_1_1,
        y1   => s_switch_3_3
    );
    
    
    -- SECOND STAGE
    
--    sel_in_signal_switch_0_1 <= NOT source_req(3);  -- TODO: migliorare anche qui
    sel_in_signal_switch_0_1 <= NOT( ((source_req(3) AND (NOT node_i_0(3)))) OR (source_req(1) AND (NOT node_i_2(3)) AND ((NOT source_req(2)) OR node_i_1(3)) ) );
    switch_0_1: entity work.switch_2_2 
    generic map ( N => 3 ) 
    port map (
        a0  => s_switch_0_0,
        a1  => s_switch_1_1,
        sel_in   => sel_in_signal_switch_0_1,
        y0   => node_y_0,
        y1   => node_y_1
    );
    
    sel_in_signal_switch_2_3 <= NOT ( (source_req(3) AND node_i_0(3)) OR ( (NOT(source_req(2)) OR NOT(node_i_1(3)) ) AND source_req(1) AND  node_i_2(3)));
    switch_2_3: entity work.switch_2_2 
    generic map ( N => 3 ) 
    port map (
        a0  => s_switch_2_2,
        a1  => s_switch_3_3,
        sel_in   => sel_in_signal_switch_2_3,
        y0   => node_y_2,
        y1   => node_y_3
    );
    

end Mixed;
