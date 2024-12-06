library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use work.all;

entity B is
    Port ( CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           REQ : in STD_LOGIC;
           ACKa : in STD_LOGIC;
           d : in STD_LOGIC_VECTOR (7 downto 0);
           ACKb : out STD_LOGIC;
           TMP_sum_print : out STD_LOGIC_VECTOR (7 downto 0)
           --Xi_o : out STD_LOGIC_VECTOR (7 downto 0);
           --Yi_o : out STD_LOGIC_VECTOR (7 downto 0);
           --Si_o : out STD_LOGIC_VECTOR (7 downto 0);
           --CNT_TMP: out STD_LOGIC_VECTOR (3 downto 0)
           );
end B;

architecture Mixed of B is

-- memory signals
signal mem_write : std_logic := '0';
signal mem_read : std_logic := '0';
signal mem_y : STD_LOGIC_VECTOR(7 downto 0);
signal mem_sum : STD_LOGIC_VECTOR(7 downto 0);

-- counter signals
signal ctr_en: std_logic := '0';
signal ctr_max: std_logic := '0';
signal ctr: std_logic_vector(3 downto 0) := "0000";


-- control unit
type state_b is (WAIT_REQ, WAIT_ACK, TAKE_DATA);
signal state_c: state_b := WAIT_REQ; -- current state
signal state_n: state_b := WAIT_REQ; -- next state
--signal Xi : std_logic_vector(7 downto 0);

begin

    mem: entity work.mem
    generic map (N => 16, M => 8)
    port map (
       i => mem_sum,
       CLK => CLK,
       RST => RST,
       WRITE => mem_write,
       READ => mem_read,
       address => to_integer(unsigned((ctr))),
       y => mem_y
    );

    counter: entity work.Contatore
    generic map ( N => 4 ) -- counter mod 16
    port map(
        CLK => CLK,
        EN => ctr_en,
        max_reached => ctr_max,
        count => ctr
    );
    
    -- forse serve utilizzare 2 processi separati per gestire l'arrivo dei dati e dell'acka
    
--    CU_f_b: process(REQ, ACKa)
--    begin
--        CNT_TMP <= ctr;
--        Yi_o <= d;
        
--        case state_c is
            
--            when WAIT_REQ =>
--                ctr_en <= '0';
--                mem_write <= '0';
--                mem_read <= '0';
--                if REQ = '1' then
--                    state_n <= WAIT_ACK;
--                    mem_read <= '1';
--                    ACKb <= '1';
--                end if;
            
--            when WAIT_ACK =>
                
--                ctr_en <= '0';
--                if ACKa = '1' then
--                    state_n <= TAKE_DATA;
--                    ACKb <= '0';
--                    --mem_write <= '1'; -- memory input is already mapped with A output
--                end if;
            
--            when TAKE_DATA =>
--               Xi_o <= mem_y;
--               Si_o <= std_logic_vector(unsigned(mem_y) + unsigned(d));
--               mem_sum <= std_logic_vector(unsigned(mem_y) + unsigned(d));
--               ctr_en <= '1'; --after 5ns;
--               mem_read <= '0'; -- we should close it here, but to check the sum I will keep the read on
--               mem_write <= '1';
--                if (REQ = '0') then
--                    state_n <= WAIT_REQ;
--                elsif (REQ = '1') then
--                    state_n <= WAIT_ACK;
--                    mem_read <= '1';
--                    ACKb <= '1';
--                end if;
             
--             when others =>
--                ctr_en <= '0';
--                state_n <= WAIT_REQ;
                
--        end case;    
--    end process;
    
    
--    CU_CLK_b: process(CLK)
--    begin
--        if rising_edge(CLK) then
--            if RST = '1' then
                       
--            else
--                state_c <= state_n;
--                TMP_sum_print <= mem_y;
--            end if;
--        end if;
    
--    end process;

CU_f_b: process(CLK)
begin
    if rising_edge(CLK) then
        if RST = '1' then
            -- Reset all relevant signals
            state_c <= WAIT_REQ;
            --CNT_TMP <= (others => '0');
            --Yi_o <= (others => '0');
            --Xi_o <= (others => '0');
            --Si_o <= (others => '0');
            mem_sum <= (others => '0');
            ACKb <= '0';
            ctr_en <= '0';
            mem_write <= '0';
            mem_read <= '0';
        else
            -- Sequential part: update state and TMP_sum_print
            TMP_sum_print <= mem_y; -- the output will be shown with 1 clock delay due to the vhdl signal nature
            --CNT_TMP <= ctr;
            --Xi_o <= mem_y;
            -- State machine based on current state
            case state_c is
                when WAIT_REQ =>
                    ctr_en <= '0';
                    mem_write <= '0';
                    mem_read <= '0';
                    if REQ = '1' then
                        state_c <= WAIT_ACK;
                        mem_read <= '1';
                        ACKb <= '1';
                    end if;

                when WAIT_ACK =>
                    ctr_en <= '0';
                    if ACKa = '1' then
                        state_c <= TAKE_DATA;
                        ACKb <= '0';
                    end if;

                when TAKE_DATA =>
                    --Xi_o <= mem_y;
                    --Si_o <= std_logic_vector(unsigned(mem_y) + unsigned(d));
                    mem_sum <= std_logic_vector(unsigned(mem_y) + unsigned(d));
                    ctr_en <= '1'; -- after 5ns
                    mem_read <= '1'; -- Disable read here, but keep it on if debugging
                    mem_write <= '1';
                    
                    if REQ = '0' then
                        state_c <= WAIT_REQ;
                    elsif REQ = '1' then
                        state_c <= WAIT_ACK;
                        mem_read <= '1';
                        ACKb <= '1';
                    end if;

                when others =>
                    ctr_en <= '0';
                    state_c <= WAIT_REQ;
            end case;
        end if;
    end if;
end process;

    

end Mixed;
