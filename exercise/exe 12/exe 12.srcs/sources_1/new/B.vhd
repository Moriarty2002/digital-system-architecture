library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.all;

entity B is
    Port ( 
       CLK : in STD_LOGIC;
       RST : in STD_LOGIC;
       REQ : in STD_LOGIC;
       ACK : out STD_LOGIC := '0';
       D : in STD_LOGIC_VECTOR (3 downto 0);
       R_out : out STD_LOGIC_VECTOR(3 downto 0)
    );
end B;

architecture Structural of B is

-- memory signals
signal s_mem_write : std_logic := '0';
signal s_mem_read : std_logic := '0';
signal s_mem_y : STD_LOGIC_VECTOR(3 downto 0);
signal s_mem_sum : STD_LOGIC_VECTOR(3 downto 0);

signal s_sel : std_logic := '0';
signal s_reg_in: STD_LOGIC_VECTOR(3 downto 0) := "0000";

signal tmp_C_out : std_logic := '0';

-- FSM
type STATE is (INIT, WAIT_REQ, SUM, WAIT_REQ_OFF, STOP_ACK);
signal state_c: STATE := INIT;

begin
    
    mux: entity work.mux_2_1
	port map ( 	a0  => s_mem_sum,
			a1 => "0000",
			s => s_sel,
			y => s_reg_in
	);
		    
    mem: entity work.mem
    generic map (N => 1, M => 4)
    port map (
       i => s_reg_in,
       CLK => CLK,
       RST => RST,
       WRITE => s_mem_write,
       READ => s_mem_read,
       address => integer(0),
       y => s_mem_y
    );
    
    adder: entity work.Adder_Carry_Look_Ahead
    port map (
        X  => D, 
        Y => s_mem_y,
        C_in => '0',                     
        SUM => s_mem_sum, 
        C_out => tmp_C_out                  
    );
    
    R_out <= s_mem_y;
    
    cu_B: process(CLK)
    begin
    
        if rising_edge(CLK) then
            
            if RST = '1' then
                state_c <= INIT;
            else
            
                case state_c is
                
                    when INIT =>
                        s_sel <= '1';
                        s_mem_write <= '1';
                        state_c <= WAIT_REQ;
                
                    when WAIT_REQ =>
                        s_sel <= '0';
                        s_mem_write <= '0';
                        s_mem_read <= '1';
                        
                        if REQ = '0' then
                            state_c <= WAIT_REQ;
                        elsif REQ = '1' then
                            state_c <= SUM;
                        end if;
                
                    when SUM =>
                        s_mem_read <= '0';
                        s_mem_write <= '1';
                        state_c <= WAIT_REQ_OFF;
                
                    when WAIT_REQ_OFF =>
                        s_mem_write <= '0';
                        ACK <= '1';
                        
                        if REQ = '0' then
                            state_c <= STOP_ACK;
                        elsif REQ = '1' then
                            state_c <= WAIT_REQ_OFF;
                        end if;
                
                    when STOP_ACK =>
                        ACK <= '0';
                        state_c <= WAIT_REQ;
                
                end case;
            
            end if;
        
        end if;
    
    end process;

end Structural;
