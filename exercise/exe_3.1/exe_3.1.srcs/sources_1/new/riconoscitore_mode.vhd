library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity automa is
    Port ( input : in STD_LOGIC;
           mode : in STD_LOGIC := '1';
           CLK, RST: in STD_LOGIC;
           output : out STD_LOGIC);
end automa;

architecture Behavioral of automa is
    
    type state is (S0_0, S1_0, S1_0p, S2_0, S2_0p, S0_1, S1_1, S2_1);
    signal state_current: state := S0_1;
    signal state_next: state;

begin

    f_move: process(state_current, input, mode)
    begin 
        case state_current is
            
            -- *** Recoognizer M = 0 ***
            
            when S0_0 =>
                if (mode = '1') then 
                    state_next <= S0_1;
                elsif (input = '0') then 
                    state_next <= S1_0p;
                elsif (input = '1') then 
                    state_next <= S1_0;
                end if;
                output <= '0';
                
            when S1_0 =>
                if (mode = '1') then 
                    state_next <= S0_1;
                elsif (input = '0') then 
                    state_next <= S2_0;
                elsif (input = '1') then
                    state_next <= S2_0p;
                end if;
                output <= '0';
                
            when S1_0p =>
                if (mode = '1') then 
                    state_next <= S0_1;
                else 
                    state_next <= S2_0p;
                end if;
                output <= '0';
            
            when S2_0 =>
                if (mode = '1') then
                    state_next <= S0_1; 
                    output <= '0';
                elsif (input = '0') then 
                    state_next <= S0_0;
                    output <= '0';
                elsif (input = '1') then 
                    state_next <= S0_0;
                    output <= '1';
                end if;
            
            when S2_0p =>
                if (mode = '1') then 
                    state_next <= S0_1;
                else 
                    state_next <= S0_0;
                end if;
                output <= '0';
            
            -- *** Recoognizer M = 1 ***
            
            when S0_1 =>
                if (mode = '0') then 
                    state_next <= S0_0;
                elsif (input = '0') then 
                    state_next <= S0_1;
                elsif (input = '1') then 
                    state_next <= S1_1;
                end if;
                output <= '0';
                
            when S1_1 =>
                if (mode = '0') then 
                    state_next <= S0_0;
                elsif (input = '0') then 
                    state_next <= S2_1;
                elsif (input = '1') then 
                    state_next <= S1_1;
                end if;
                output <= '0';
                
            when S2_1 =>
                if (mode = '0') then 
                    state_next <= S0_0;
                    output <= '0';
                elsif (input = '0') then 
                    state_next <= S0_1;
                    output <= '0';
                elsif (input = '1') then 
                    state_next <= S0_1;
                    output <= '1';
                end if;
                            
            when others => -- default case
                if (mode = '0') then
                    state_next <= S0_0;
                elsif (mode = '1') then
                    state_next <= S0_1;
                end if;
                output <= '0';
                
        end case;
    end process;
    
    f_memory: process (CLK)
    begin
        if( CLK'event and CLK = '1' ) then
            if( RST = '1') then
               state_current <= S0_0;
            else
               state_current <= state_next;
            end if;
       end if;
    end process; 
    
end Behavioral;
