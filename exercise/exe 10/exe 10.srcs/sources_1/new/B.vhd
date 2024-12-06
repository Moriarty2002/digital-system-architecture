library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use work.all;

entity B is
    Port ( CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           TXD : out STD_LOGIC;
           RXD : in STD_LOGIC;
           ER : out STD_LOGIC; -- error flag
           TMP_OUT : out STD_LOGIC_VECTOR(7 downto 0)
           );
end B;

architecture Structural of B is


-- mem
signal s_mem_read : STD_LOGIC := '0';
signal s_mem_write : STD_LOGIC := '0';

-- counter
signal s_cnt_en: STD_LOGIC := '0';
signal s_cnt_val : STD_LOGIC_VECTOR(2 downto 0);
signal s_cnt_max : STD_LOGIC := '0';

-- UART
signal s_uart_RDA: STD_LOGIC;
signal s_uart_TBE: STD_LOGIC;
signal s_uart_read: STD_LOGIC := '0';

signal s_uart_db_out: STD_LOGIC_VECTOR(7 downto 0);

signal s_uart_parity_flag: STD_LOGIC;
signal s_uart_frame_flag: STD_LOGIC;
signal s_uart_overwrite_flag: STD_LOGIC;


-- Control Unit
type STATE is (IDLE, LOAD, ERROR);
signal state_c: STATE := IDLE;

begin

    mem: entity work.MEM
    generic map ( N => 8, M => 8 )
    port map ( i => s_uart_db_out,
           CLK => CLK,
           RST => RST,
           WRITE => s_mem_write,
           READ => '0',
           address => to_integer(unsigned((s_cnt_val))),
           y => TMP_OUT
     );
    
    cnt_B: entity work.Contatore
    generic map (N => 3)
    port map(
        CLK => CLK,    
        enable => s_cnt_en,   
        RST => RST,
        max_reached => s_cnt_max,
        count => s_cnt_val    
    );
    
    
    UART_B : entity work.Rs232RefComp
    port map ( 
		TXD => TXD,
    	RXD => RXD,					
    	CLK => CLK,					                     --Master Clock
		DBIN => "00000000",                              --Data Bus in
		DBOUT => s_uart_db_out,	                         --Data Bus out
		RDA	=> s_uart_RDA,				     --Read Data Available(1 quando il dato è disponibile nel registro rdReg)
		TBE	=> s_uart_TBE,				 --Transfer Bus Empty(1 quando il dato da inviare è stato caricato nello shift register)
		RD => s_uart_read,					                     --Read Strobe(se 1 significa "leggi" --> fa abbassare RDA)
		WR => '0',				                 --Write Strobe(se 1 significa "scrivi" --> fa abbassare TBE)
		PE => s_uart_parity_flag,					     --Parity Error Flag
		FE => s_uart_frame_flag,					     --Frame Error Flag
		OE => s_uart_overwrite_flag,				     --Overwrite Error Flag
		RST => RST                                       --Master Reset
    );	    
    
    CU_B: process(CLK)
    begin
        
        if rising_edge(CLK) then
            
            case state_c is
                
                when IDLE =>
                    s_cnt_en <= '0';
                    s_mem_write <= '0';
                    
                    if (s_uart_parity_flag = '1' OR s_uart_frame_flag = '1' OR s_uart_overwrite_flag = '1') then
                        state_c <= ERROR;
                    elsif s_uart_RDA = '1' then
                        state_c <= LOAD;
                    end if;
                
                when LOAD =>
                    s_cnt_en <= '1';
                    s_mem_write <= '1';
                    ER <= '0';
                    state_c <= IDLE;
                
                when ERROR =>
                    ER <= '1';
                    state_c <= IDLE;
                 
            end case;
        end if;
    
    
    end process;


end Structural;
