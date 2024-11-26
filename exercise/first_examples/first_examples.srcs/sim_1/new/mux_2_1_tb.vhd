----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.10.2024 12:46:23
-- Design Name: 
-- Module Name: mux_2_1_tb - dataflow
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux_2_1_tb is
end mux_2_1_tb;

architecture mux_2_1 of mux_2_1_tb is

--    component mux_2_1
--        Port ( 
--            a0 : in std_logic;
--            a1 : in std_logic;
--            s : in std_logic;
--            y : out std_logic
--          );
--    end component;
    
    signal input : std_logic_vector(0 to 1) := ('U', 'U');
    signal sel : std_logic := 'U';
    signal output: std_logic := 'U';
    
begin
    
    instance: entity work.mux_2_1 port map(
        a0 => input(0),
        a1 => input(1),
        s => sel,
        y => output
    );
    
    sim_ps: process
    begin
    
        wait for 100ns;
        
        input <= ('0', '1');
        
        wait for 20ns;
        
        sel <= '1';
        
        wait for 20ns;
        
        sel <= '0';
    
    wait;
    
    end process;

end;
