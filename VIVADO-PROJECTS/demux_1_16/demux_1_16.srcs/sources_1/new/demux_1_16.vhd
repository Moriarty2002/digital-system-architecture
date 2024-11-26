----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.10.2024 14:12:34
-- Design Name: 
-- Module Name: demux_1_16 - Behavioral
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


entity demux_1_16 is
  Port ( 
    a: in std_logic;
    s: in std_logic_vector(3 downto 0);
    y: out std_logic_vector(15 downto 0)
  );
end demux_1_16;

architecture dataflow of demux_1_16 is

begin

    y(0) <= a when s = "0000" else '0';
    y(1) <= a when s = "0001" else '0';
    y(2) <= a when s = "0010" else '0';
    y(3) <= a when s = "0011" else '0';
    y(4) <= a when s = "0100" else '0';
    y(5) <= a when s = "0101" else '0';
    y(6) <= a when s = "0110" else '0';
    y(7) <= a when s = "0111" else '0';
    y(8) <= a when s = "1000" else '0';
    y(9) <= a when s = "1001" else '0';
    y(10) <= a when s = "1010" else '0';
    y(11) <= a when s = "1011" else '0';
    y(12) <= a when s = "1100" else '0';
    y(13) <= a when s = "1101" else '0';
    y(14) <= a when s = "1110" else '0';
    y(15) <= a when s = "1111" else '0';


end dataflow;
