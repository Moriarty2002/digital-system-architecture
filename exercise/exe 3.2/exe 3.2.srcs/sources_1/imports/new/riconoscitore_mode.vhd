--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;
--use work.all;

--entity automa is
--    Port ( s_in: std_logic; -- switch input
--           s_m: std_logic; -- switch mode
--           load_input : in STD_LOGIC;
--           load_mode : in STD_LOGIC;
--           CLK, RST: in STD_LOGIC;
--           output : out STD_LOGIC;
--           n_y: out STD_LOGIC := '1';
--           test_y: out STD_LOGIC := '0';
--           rst_y: out STD_LOGIC := '0');
--end automa;

--architecture Behavioral of automa is
    
--    type state is (S0_0, S1_0, S1_0p, S2_0, S2_0p, S0_1, S1_1, S2_1);
--    signal state_current: state := S0_1;
--    signal state_next: state;
    
--    signal input: std_logic := '0';
--    signal take_input: std_logic;
--    signal mode: std_logic := '1';
--    signal take_mode: std_logic;
    
--begin

--    btn_in: entity ButtonDebouncer GENERIC MAP( 
--            CLK_period => 10,  -- periodo del clock della board pari a 10ns
--            btn_noise_time => 10000000 --intervallo di tempo in cui si ha l'oscillazione del bottone
--                                        --assumo che duri 10ms
--    )
--    PORT MAP ( RST => RST,
--               CLK => CLK, 
--               BTN => load_input,
--               CLEARED_BTN => take_input
--    );
    
--    btn_mode: entity ButtonDebouncer GENERIC MAP( 
--            CLK_period => 10,  -- periodo del clock della board pari a 10ns
--            btn_noise_time => 10000000 --intervallo di tempo in cui si ha l'oscillazione del bottone
--                                        --assumo che duri 10ms
--    )
--    PORT MAP ( RST => RST,
--               CLK => CLK, 
--               BTN => load_mode,
--               CLEARED_BTN => take_mode
--    );

--    f_move: process(state_current, input, mode)
--    begin 
--        case state_current is
            
--            -- *** Recoognizer M = 0 ***
            
--            when S0_0 =>
--                if (mode = '1') then 
--                    state_next <= S0_1;
--                elsif (input = '0') then 
--                    state_next <= S1_0p;
--                elsif (input = '1') then 
--                    state_next <= S1_0;
--                end if;
--                output <= '0';
                
--            when S1_0 =>
--                if (mode = '1') then 
--                    state_next <= S0_1;
--                elsif (input = '0') then 
--                    state_next <= S2_0;
--                elsif (input = '1') then
--                    state_next <= S2_0p;
--                end if;
--                output <= '0';
                
--            when S1_0p =>
--                if (mode = '1') then 
--                    state_next <= S0_1;
--                else 
--                    state_next <= S2_0p;
--                end if;
--                output <= '0';
            
--            when S2_0 =>
--                if (mode = '1') then
--                    state_next <= S0_1; 
--                    output <= '0';
--                elsif (input = '0') then 
--                    state_next <= S0_0;
--                    output <= '0';
--                elsif (input = '1') then 
--                    state_next <= S0_0;
--                    output <= '1';
--                end if;
            
--            when S2_0p =>
--                if (mode = '1') then 
--                    state_next <= S0_1;
--                else 
--                    state_next <= S0_0;
--                end if;
--                output <= '0';
            
--            -- *** Recoognizer M = 1 ***
            
--            when S0_1 =>
--                if (mode = '0') then 
--                    state_next <= S0_0;
--                elsif (input = '0') then 
--                    state_next <= S0_1;
--                elsif (input = '1') then 
--                    state_next <= S1_1;
--                end if;
--                output <= '1';
                
--            when S1_1 =>
--                if (mode = '0') then 
--                    state_next <= S0_0;
--                elsif (input = '0') then 
--                    state_next <= S2_1;
--                elsif (input = '1') then 
--                    state_next <= S1_1;
--                end if;
--                output <= '0';
                
--            when S2_1 =>
--                if (mode = '0') then 
--                    state_next <= S0_0;
--                    output <= '0';
--                elsif (input = '0') then 
--                    state_next <= S0_1;
--                    output <= '0';
--                elsif (input = '1') then 
--                    state_next <= S0_1;
--                    output <= '1';
--                end if;
                            
--            when others => -- default case
--                if (mode = '0') then
--                    state_next <= S0_0;
--                elsif (mode = '1') then
--                    state_next <= S0_1;
--                end if;
--                output <= '0';
--                rst_y <= '1';
                
--        end case;
--    end process;
    
--    f_memory: process (CLK)
--    variable d: std_logic := '1';
--    begin
--        if( rising_edge(CLK) ) then
--            if( RST = '1') then
--               state_current <= S0_0;
--               rst_y <= '1';
--               --take_input <= '0';
--               --take_mode <= '0';
--            else
--               state_current <= state_next;
               
--               if (take_input = '1') then
--                   input <= s_in;
--                   test_y <= d;
--                   d := not d;
--                   --take_input <= '0';
--                   --output <= '0';
--               end if;
               
--               if (take_mode = '1') then
--                   mode <= s_m;
--                   --test_y <= '1';
--                   --take_mode <= '0';
--                   --output <= '0';
--               end if;
               
--            end if;
--       end if;
--    end process; 
    
--end Behavioral;