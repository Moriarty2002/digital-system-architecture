library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use work.all;


entity PO_PC is
    Port ( CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           STR : in STD_LOGIC;
           READ : in STD_LOGIC;
           y: out STD_LOGIC_VECTOR(3 downto 0)
    );
end PO_PC;

architecture Structural of PO_PC is
    signal s_ctr: std_logic_vector(3 downto 0);
    signal s_m_to_mem: std_logic_vector(3 downto 0);
    signal max_reached: std_logic;
    signal s_en_ctr: std_logic;
    
    signal s_read: std_logic;
    signal s_write: std_logic;
    type STATE is (IDLE, R, W, INC_CTR);
    signal state_curr: STATE := IDLE;

begin

    counter: entity work.Contatore
    Generic Map (N => 4)
    Port Map (  CLK => CLK,
                enable => s_en_ctr,
                RST => RST,
                max_reached => max_reached,
                count => s_ctr
    );
    
    m_sys: entity work.m_system
    Port Map ( input => s_ctr,
               CLK => CLK,
               read => s_read,
               output => s_m_to_mem
    );
    
    mem: entity work.MEM
    generic map ( N => 16, M => 4 )
    port map ( i => s_m_to_mem, 
               CLK => CLK,
               RST => RST,
               WRITE => s_write,
               address => to_integer(unsigned((s_ctr))),
               y => y
    );
        
    
    
    cu_ps: process(CLK)
    begin
    
        if rising_edge(CLK) then
        
            if RST = '1' then
                state_curr <= IDLE;
            else
        
                case state_curr is
                    when IDLE =>
                        s_en_ctr <= '0';
                        s_read <= '0';
                        s_write <= '0';
                        s_write <= '0';
                        if STR = '1' then
                            state_curr <= R;                  
                        end if;
                     
                     when R =>
                        s_en_ctr <= '0';
                        if READ = '1' then
                            state_curr <= W;
                            s_read <= '1';
                            s_write <= '1';
                        end if;
                        
                     when W =>
                        state_curr <= INC_CTR;
                        s_read <= '0';
                        s_write <= '1';
                        
                     when INC_CTR =>
                        s_read <= '0';
                        s_write <= '0';
                        s_en_ctr <= '1';
                        if s_ctr < "1111" then
                            state_curr <= R;
                        else
                            state_curr <= IDLE;
                        end if;
                end case;
            end if;
        end if;
    
    end process;


end Structural;
