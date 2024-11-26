----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.10.2024 21:28:19
-- Design Name: 
-- Module Name: mux_16_1 - structural
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

entity mux_16_1 is
  Port (
    a_16: in std_logic_vector(15 downto 0);  -- Corrected index
    s_4: in std_logic_vector(3 downto 0);    -- Corrected index
    y: out std_logic
  );
end mux_16_1;

architecture structural of mux_16_1 is
  signal mux_to_mux_1: STD_LOGIC;
  signal mux_to_mux_2: STD_LOGIC;
  signal mux_to_mux_3: STD_LOGIC;
  signal mux_to_mux_4: STD_LOGIC;
begin

    mux0_1: entity work.mux_4_1
    port map (
      a  => a_16(3 downto 0),          -- Consistent indexing
      sel => s_4(1 downto 0),          -- Corrected order
      y   => mux_to_mux_1
    );

    mux0_2: entity work.mux_4_1
    port map (
      a  => a_16(7 downto 4),          -- Consistent indexing
      sel => s_4(1 downto 0),
      y   => mux_to_mux_2
    );

    mux0_3: entity work.mux_4_1
    port map (
      a  => a_16(11 downto 8),         -- Consistent indexing
      sel => s_4(1 downto 0),
      y   => mux_to_mux_3
    );

    mux0_4: entity work.mux_4_1
    port map (
      a  => a_16(15 downto 12),        -- Consistent indexing
      sel => s_4(1 downto 0),
      y   => mux_to_mux_4
    );

    mux1: entity work.mux_4_1
    port map (
      a(0)  => mux_to_mux_1,
      a(1)  => mux_to_mux_2,
      a(2)  => mux_to_mux_3,
      a(3)  => mux_to_mux_4,
      sel => s_4(3 downto 2),          -- Corrected for high bits
      y   => y
    );

end structural;