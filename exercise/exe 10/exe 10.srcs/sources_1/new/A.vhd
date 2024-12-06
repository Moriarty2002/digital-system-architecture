library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.all;


entity A is
    Port ( CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           WR : in STD_LOGIC;
           TXD : out STD_LOGIC;
           RXD : in STD_LOGIC;
           ER : out STD_LOGIC -- error flag
           );
end A;

architecture Architectural of A is

-- rom
signal s_rom_read : STD_LOGIC := '0';
signal s_rom_data : STD_LOGIC_VECTOR(7 downto 0);

-- counter
signal s_cnt_en: STD_LOGIC := '0';
signal s_cnt_val : STD_LOGIC_VECTOR(2 downto 0);
signal s_cnt_max : STD_LOGIC := '0';

-- UART
signal s_uart_read_data_avail: STD_LOGIC;
signal s_uart_transfer_bus_empty: STD_LOGIC;
signal s_uart_write: STD_LOGIC;

signal s_uart_db_out: STD_LOGIC_VECTOR(7 downto 0);

signal s_uart_parity_flag: STD_LOGIC;
signal s_uart_frame_flag: STD_LOGIC;
signal s_uart_overwrite_flag: STD_LOGIC;

-- Control Unit
type STATE is (IDLE, SEND, WAIT_SEND); --READ
signal state_c: STATE := IDLE;

begin

    rom: entity work.rom_8x8
    port map (
        i => s_cnt_val,
        CLK => CLK,
        read => s_rom_read,
        d => s_rom_data
    );
    
    cnt_A: entity work.Contatore
    generic map (N => 3)
    port map(
        CLK => CLK,    
        enable => s_cnt_en,   
        RST => RST,
        max_reached => s_cnt_max,
        count => s_cnt_val    
    );
    
    UART_A : entity work.Rs232RefComp
    port map ( 
		TXD => TXD,
    	RXD => RXD,					
    	CLK => CLK,					                     --Master Clock
		DBIN => s_rom_data,                              --Data Bus in
		DBOUT => s_uart_db_out,	                         --Data Bus out
		RDA	=> s_uart_read_data_avail,				     --Read Data Available(1 quando il dato è disponibile nel registro rdReg)
		TBE	=> s_uart_transfer_bus_empty,				 --Transfer Bus Empty(1 quando il dato da inviare è stato caricato nello shift register)
		RD => '0',					                     --Read Strobe(se 1 significa "leggi" --> fa abbassare RDA)
		WR => s_uart_write,				                 --Write Strobe(se 1 significa "scrivi" --> fa abbassare TBE)
		PE => s_uart_parity_flag,					     --Parity Error Flag
		FE => s_uart_frame_flag,					     --Frame Error Flag
		OE => s_uart_overwrite_flag,				     --Overwrite Error Flag
		RST => RST                                       --Master Reset
    );			
    
    
    CU_A: process(CLK)
    variable cnt: integer := 0;
    begin
    
        if rising_edge(CLK) then
            if RST = '1' then
            
            else
                case state_c is
        
                    when IDLE =>
                        cnt := 0;
                        s_cnt_en <= '0';
                        s_uart_write <= '0';
                        if WR = '1' then 
                            state_c <= SEND;
                            s_rom_read <= '1';
                            ER <= '0';
                        end if;
                    
--                    when READ =>
--                        state_c <= SEND;
--                        s_rom_read <= '1';
                    
                    when SEND =>
                        state_c <= WAIT_SEND;
                        s_rom_read <= '0';
                        s_uart_write <= '1';
                    
                    when WAIT_SEND =>
                        cnt := cnt +1;
                        --s_uart_write <= '0';
                        if s_uart_transfer_bus_empty = '1' and cnt >1  then
                            state_c <= IDLE;
                            s_cnt_en <= '1';
                        elsif (s_uart_parity_flag = '1' OR s_uart_frame_flag = '1' OR s_uart_overwrite_flag = '1') then
                            state_c <= IDLE;
                            ER <= '1';
                        end if;
                        
                end case;  
            end if;
        end if;
          
    end process;

end Architectural;
