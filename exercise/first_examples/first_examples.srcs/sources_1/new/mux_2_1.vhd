----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.10.2024 12:34:35
-- Design Name: 
-- Module Name: mux_2_1 - dataflow
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

entity mux_2_1 is
  Port ( 
    a0 : in std_logic := '0';
    a1 : in std_logic := '0';
    s : in std_logic := '0';
    y : out std_logic := '0'
  );
end mux_2_1;

architecture dataflow of mux_2_1 is

begin

    y <= (a0 and (not s)) or (a1 and s);

end dataflow;
