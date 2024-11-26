library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.all;

entity automa2 is
    Port ( s_in: std_logic; -- switch input
           s_m: std_logic; -- switch mode
           load_input : in STD_LOGIC;
           load_mode : in STD_LOGIC;
           CLK, RST: in STD_LOGIC;
           output : out STD_LOGIC;
           n_y: out STD_LOGIC := '1';
           test_y: out STD_LOGIC := '0';
           rst_y: out STD_LOGIC := '0');
end automa2;

architecture Behavioral of automa2 is
    
    type state is (S0_0, S1_0, S1_0p, S2_0, S2_0p, S0_1, S1_1, S2_1);
    
    signal take_input: std_logic;
    signal take_mode: std_logic;
    
begin

    -- Debouncing logic for load_input
    btn_in: entity ButtonDebouncer GENERIC MAP( 
            CLK_period => 10,
            btn_noise_time => 10000000
    )
    PORT MAP ( RST => RST,
               CLK => CLK, 
               BTN => load_input,
               CLEARED_BTN => take_input
    );
    
    -- Debouncing logic for load_mode
    btn_mode: entity ButtonDebouncer GENERIC MAP( 
            CLK_period => 10,
            btn_noise_time => 10000000
    )
    PORT MAP ( RST => RST,
               CLK => CLK, 
               BTN => load_mode,
               CLEARED_BTN => take_mode
    );

    -- Single process to handle state transitions and updates
    automa_ps: process(CLK, RST)
        variable d: std_logic := '1';
        variable state_current: state := S0_1;
        variable input: std_logic := '0';
        variable mode: std_logic := '1';
    begin
        if (RST = '1') then
            -- Synchronous reset
            state_current := S0_0;
            output <= '0';
            rst_y <= '1';
        elsif (rising_edge(CLK)) then
            -- Update state
            rst_y <= '0';
            -- Handle mode when take_mode is asserted
            if (take_mode = '1') then
                mode := s_m;
                output <= '0';
                if (mode = '1') then 
                    state_current := S0_1;
                else
                    state_current := S0_0;
                end if;
            end if;
            
            -- Handle input when take_input is asserted
            if (take_input = '1') then
                input := s_in;
                test_y <= d;  -- Toggle for debugging
                d := not d;
                
    
                -- State transition logic
                case state_current is
                    -- *** Recognizer M = 0 ***
                    when S0_0 =>
                        if (input = '0') then 
                            state_current := S1_0p;
                        elsif (input = '1') then 
                            state_current := S1_0;
                        end if;
                        output <= '0';
                        
                    when S1_0 =>
                        if (input = '0') then 
                            state_current := S2_0;
                        elsif (input = '1') then
                            state_current := S2_0p;
                        end if;
                        output <= '0';
                        
                    when S1_0p =>
                        state_current := S2_0p;
                        output <= '0';
                    
                    when S2_0 =>
                        if (input = '0') then 
                            state_current := S0_0;
                            output <= '0';
                        elsif (input = '1') then 
                            state_current := S0_0;
                            output <= '1';
                        end if;
                    
                    when S2_0p =>
                        state_current := S0_0;
                        output <= '0';
                    
                    -- *** Recognizer M = 1 ***
                    when S0_1 =>
                        if (input = '0') then 
                            state_current := S0_1;
                        elsif (input = '1') then 
                            state_current := S1_1;
                        end if;
                        output <= '0';
                        n_y <= '1';
                        
                    when S1_1 =>
                        if (input = '0') then 
                            state_current := S2_1;
                        elsif (input = '1') then 
                            state_current := S1_1;
                        end if;
                        output <= '0';
                        n_y <= '0';
                        
                    when S2_1 =>
                        if (input = '0') then 
                            state_current := S0_1;
                            output <= '0';
                        elsif (input = '1') then 
                            state_current := S0_1;
                            output <= '1';
                        end if;
                                    
                    when others =>
                        if (mode = '0') then
                            state_current := S0_0;
                        elsif (mode = '1') then
                            state_current := S0_1;
                        end if;
                        output <= '0';
                        rst_y <= '1';
                        
                end case;
            end if;
        end if;
    end process;

end Behavioral;

