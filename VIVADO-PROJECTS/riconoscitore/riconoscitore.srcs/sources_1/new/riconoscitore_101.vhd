library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity riconoscitore_101 is
    Port ( data : in STD_LOGIC;
           clk : in STD_LOGIC;
           y : out STD_LOGIC);
end riconoscitore_101;

architecture automa_sync of riconoscitore_101 is

type state is (S0, S1, S2);

signal state_current: state := S0; 
signal state_next: state := S0; 

begin

    ps_clk: process(clk)
    begin
    
        if rising_edge(clk) then
            
            case state_current is
                when S0 => 
                    if (data = '1') then 
                        state_current <= S1;
                    else 
                        state_current <= S0;
                    end if;
                when S1 => 
                    if (data = '0') then 
                        state_current <= S2;
                    else 
                        state_current <= S1;
                    end if;
                when S2 => 
                    if (data = '1') then 
                        state_current <= S0;
                        y <= '1';
                    else 
                        state_current <= S0;
                        y <= '0';
                    end if;
                when others =>
			        state_current <= S0;
  			        y <= '0';
            end case;
            
        end if;
     end process;

end automa_sync;
