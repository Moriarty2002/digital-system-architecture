
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.all;

entity A is
    Port ( CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           START : in STD_LOGIC;
           REQ : out STD_LOGIC;
           ACK : in STD_LOGIC;
           d : out STD_LOGIC_VECTOR (3 downto 0)
          );
end A;

architecture Behavioral of A is

    -- counter signals
    signal ctr_en: std_logic := '0';
    signal ctr_rst: std_logic := '0';
    signal ctr_max: std_logic := '0';
    signal ctr: std_logic_vector(2 downto 0) := "000";
    
    -- rom signals
    signal rom_read: std_logic := '0';
    signal rom_y: std_logic_vector(3 downto 0) := "0000";
    
    -- control unit
    type STATE_A is (IDLE, INIT, READ, REQUEST, WAIT_ACK_OFF, INCREASE_CNT, CHECK_CNT);
    signal state_c: STATE_A := IDLE; -- current state

begin

    counter: entity work.Contatore
    generic map ( N => 3 ) -- counter mod 8
    port map(
        CLK => CLK,
        enable => ctr_en,
        RST => ctr_rst,
        max_reached => ctr_max,
        count => ctr
    );
    
    ROM: entity work.ROM_N_4 
    GENERIC MAP ( N => 3)
    PORT MAP (
          CLK => CLK,
          address => ctr,
          read => rom_read,
          dout => d
    );
    
    
    cu_A: process(CLK)
    begin
        
        if rising_edge(CLK) then
            
            if RST = '1' then
                state_c <= IDLE;
            else
    
                case state_c is
                
                    when IDLE =>
                        if START = '0' then
                            state_c <= IDLE;
                        else
                            state_c <= INIT;
                        end if;
                
                    when INIT =>
                        ctr_rst <= '1';
                        state_c <= READ;
                
                    when READ =>
                        rom_read <= '1';
                        ctr_rst <= '0';
                        state_c <= REQUEST;
    
                    when REQUEST =>
                        REQ <= '1';
                        rom_read <= '0';
                        if ACK = '0' then
                            state_c <= REQUEST;
                        else
                            state_c <= WAIT_ACK_OFF;
                        end if;
                
                    when WAIT_ACK_OFF =>
                        REQ <= '0';
                        if ACK = '0' then
                            state_c <= INCREASE_CNT;
                        else
                            state_c <= WAIT_ACK_OFF;
                        end if;
                
                    when INCREASE_CNT =>
                        ctr_en <= '1';
                        state_c <= CHECK_CNT;
                
                    when CHECK_CNT =>
                        ctr_en <= '0';
                        if ctr /= "111" then
                            state_c <= READ;
                        else
                            state_c <= IDLE;
                        end if;
        
                end case;
            end if;
        end if;
    end process;


end Behavioral;
