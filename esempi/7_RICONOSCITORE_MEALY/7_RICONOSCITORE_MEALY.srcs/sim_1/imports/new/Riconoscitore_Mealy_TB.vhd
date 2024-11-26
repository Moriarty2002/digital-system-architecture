----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.10.2022 15:16:10
-- Design Name: 
-- Module Name: Riconoscitore_Mealy_TB - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Riconoscitore_Mealy_TB is
end Riconoscitore_Mealy_TB;

architecture Behavioral of Riconoscitore_Mealy_TB is

COMPONENT Riconoscitore_Mealy
    PORT(
         i : IN  std_logic;
         CLK,RST : IN  std_logic;
         Y : OUT  std_logic
        );
    END COMPONENT;
    
--Inputs
   signal i : std_logic := '0';
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0'; 

 	--Outputs
   signal Y : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
	-- qui specifico quale architecture simulare di quelle definite
   uut: Riconoscitore_Mealy port map(
          i => i,
          CLK => CLK,
          RST => RST,
          Y => Y
        );

   -- Clock process definitions
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
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      

      -- insert stimulus here 
		i<='0';
		wait for 10 ns;
		i<='0';
		wait for 10 ns;
		i<='1';
		wait for 10 ns;
		i<='0';
		wait for 10 ns;
		i<='1';
		wait for 10 ns;
		i<='1';
		wait for 10 ns;
		i<='0';
		wait for 10 ns;
		i<='0';
		
      wait;
   end process;

END;