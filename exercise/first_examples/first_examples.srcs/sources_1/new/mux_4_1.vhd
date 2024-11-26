----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.10.2024 08:24:49
-- Design Name: 
-- Module Name: mux_4_1 - composed
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

entity mux_4_1 is
 Port (
    a: in std_logic_vector(3 downto 0);

    sel: in STD_LOGIC_VECTOR(1 downto 0);

    y: out STD_LOGIC
  );
end mux_4_1;

architecture structural of mux_4_1 is

  signal y_to_in_1: STD_LOGIC := '0';
  signal y_to_in_2: STD_LOGIC := '0';

begin

  mux0_1: entity work.mux_2_1
    port map (
      a0  => a(0),
      a1  => a(1),
      s => sel(0),
      y   => y_to_in_1
    );

  mux0_2: entity work.mux_2_1
    port map (
      a0  => a(2),
      a1  => a(3),
      s => sel(0),
      y   => y_to_in_2
    );

  mux1: entity work.mux_2_1
    port map (
      a0  => y_to_in_1,
      a1  => y_to_in_2,
      s => sel(1),
      y   => y
    );

end structural;

