----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.10.2024 22:16:24
-- Design Name: 
-- Module Name: mux_4_1_tb - structural
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

entity mux_4_1_tb is
end mux_4_1_tb;

architecture structural of mux_4_1_tb is

    signal input: std_logic_vector(3 to 0) := (others => 'U');
    signal selector: std_logic_vector(1 to 0) := (others => 'U');
    signal output: std_logic := 'U';

begin

    instance: entity work.mux_4_1 port map(
        a => input,        
        sel => selector,
        y => output        
    );
    
    sim_ps: process
    begin
        
        wait for 100ns;
        input(0) <= '1';
        
        wait for 20ns;
        selector <= ('0', '0');
        
        wait for 20ns;
        selector(1) <= '1';
        
        wait for 20ns;
        input(2) <= '1';
        
        wait;
     end process;  
    

end;
