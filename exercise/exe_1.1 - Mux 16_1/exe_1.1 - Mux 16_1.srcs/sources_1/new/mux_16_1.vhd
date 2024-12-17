library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.all;


entity mux_16_1 is
  Port (
    a_16: in std_logic_vector(15 downto 0);  
    s_4: in std_logic_vector(3 downto 0);  
    y: out std_logic
  );
end mux_16_1;

architecture structural of mux_16_1 is
  
  signal mux_to_mux_1: STD_LOGIC;
  signal mux_to_mux_2: STD_LOGIC;
  signal mux_to_mux_3: STD_LOGIC;
  signal mux_to_mux_4: STD_LOGIC;

begin
  
    -- First layer of mux
    mux0_1: entity work.mux_4_1
    port map (
      a  => a_16(3 downto 0),         
      sel => s_4(1 downto 0),         
      y   => mux_to_mux_1
    );

    mux0_2: entity work.mux_4_1
    port map (
      a  => a_16(7 downto 4), 
      sel => s_4(1 downto 0),
      y   => mux_to_mux_2
    );

    mux0_3: entity work.mux_4_1
    port map (
      a  => a_16(11 downto 8),      
      sel => s_4(1 downto 0),
      y   => mux_to_mux_3
    );

    mux0_4: entity work.mux_4_1
    port map (
      a  => a_16(15 downto 12),     
      sel => s_4(1 downto 0),
      y   => mux_to_mux_4
    );

    -- Second layer mux
    mux1: entity work.mux_4_1
    port map (
      a(0)  => mux_to_mux_1,
      a(1)  => mux_to_mux_2,
      a(2)  => mux_to_mux_3,
      a(3)  => mux_to_mux_4,
      sel => s_4(3 downto 2),       
      y   => y
    );

end structural;
