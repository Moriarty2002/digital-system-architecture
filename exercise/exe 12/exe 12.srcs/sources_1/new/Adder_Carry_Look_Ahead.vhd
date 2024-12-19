library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Adder_Carry_Look_Ahead is
  Port (
    X    : in  STD_LOGIC_VECTOR(3 downto 0);  
    Y    : in  STD_LOGIC_VECTOR(3 downto 0);  
    C_in : in  STD_LOGIC;                     
    SUM  : out STD_LOGIC_VECTOR(3 downto 0);  
    C_out: out STD_LOGIC                      
  );
end Adder_Carry_Look_Ahead;

architecture Behavioral of Adder_Carry_Look_Ahead is
  signal G, P      : STD_LOGIC_VECTOR(3 downto 0); -- Generate and Propagate signals
  signal C         : STD_LOGIC_VECTOR(4 downto 0); -- Carry signals, including input carry
begin

  -- Carry calculation (C(0) is C_in)
  C(0) <= C_in;

  -- Generate and Propagate signals
  G <= X AND Y;           
  P <= X XOR Y;          

  -- Carry Look-Ahead Logic
  C(1) <= G(0) OR (P(0) AND C(0));
  C(2) <= G(1) OR (P(1) AND C(1));
  C(3) <= G(2) OR (P(2) AND C(2));
  C(4) <= G(3) OR (P(3) AND C(3));  -- This is the final carry-out

  -- Sum calculation: S(i) = P(i) XOR C(i)
  SUM <= P XOR C(3 downto 0);

  -- Output the final carry-out
  C_out <= C(4);

end Behavioral;
