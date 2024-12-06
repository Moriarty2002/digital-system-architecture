library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity unita_A is
  Port ( 
    clk : in std_logic;
    start: in std_logic;
    reset : in std_logic;
    stop_read : out std_logic;    
    out_TXD :out std_logic;
    canale_invio_richieste : out STD_LOGIC  := '0';
	canale_lettura_risposte : in STD_LOGIC := '0'
  );
end unita_A;

architecture Behavioral of unita_A is

component cont_mod_N is
  generic( N: positive := 3);
  port( 
    CLK_cont: in std_logic;
    RESET: in std_logic := '0';
    EN_COUNT : in std_logic;
    Y: out std_logic_vector(N-1 downto 0) 
  );
end component;

component ROM_8_8 is
    generic(
        len_add : positive := 3
    );
    
    port ( 
        CLK_rom : in std_logic;
        address : in std_logic_vector(len_add - 1 downto 0);
        read : in std_logic;
        dout : out std_logic_vector(7 downto 0)
    );
end component;

component Rs232RefComp is
    Port ( 
		TXD 	: out std_logic  	:= '1';
    	RXD 	: in  std_logic;					
    	CLK 	: in  std_logic;					--Master Clock
		DBIN 	: in  std_logic_vector (7 downto 0);--Data Bus in
		DBOUT : out std_logic_vector (7 downto 0);	--Data Bus out
		RDA	: inout std_logic;						--Read Data Available(1 quando il dato è disponibile nel registro rdReg)
		TBE	: inout std_logic 	:= '1';				--Transfer Bus Empty(1 quando il dato da inviare è stato caricato nello shift register)
		RD		: in  std_logic;					--Read Strobe(se 1 significa "leggi" --> fa abbassare RDA)
		WR		: in  std_logic;					--Write Strobe(se 1 significa "scrivi" --> fa abbassare TBE)
		PE		: out std_logic;					--Parity Error Flag
		FE		: out std_logic;					--Frame Error Flag
		OE		: out std_logic;					--Overwrite Error Flag
		RST		: in  std_logic	:= '0');			--Master Reset
end component;

signal temp_out : std_logic_vector(7 downto 0);
signal temp_addr : std_logic_vector(2 downto 0);

signal temp_DBIN    : std_logic_vector(7 downto 0);
signal temp_DBOUT    : std_logic_vector(7 downto 0);
signal temp_RDA     : std_logic := '0';
signal temp_TBE     : std_logic := '1';
signal temp_PE		:  std_logic := '0';					
signal temp_FE		:  std_logic := '0';					
signal temp_OE      :   std_logic := '0';
signal temp_RXD     :   std_logic := '0';
signal temp_WR      :   std_logic := '0';

signal e_contatore  : std_logic := '0';
signal e_read_rom   : std_logic := '0';

type stato is (IDLE, PREPARAZIONE, TRASMISSIONE); 
signal stato_attuale : stato := IDLE;
signal stato_prossimo : stato;

begin

CONT_MOD_8 : cont_mod_N 
  port map( 
    CLK_cont => clk,
    RESET => reset,
    EN_COUNT => e_contatore,
    Y => temp_addr 
  );

ROM88 : ROM_8_8     
    port map ( 
        CLK_rom => clk,
        address => temp_addr,
        read => '1',
        dout => temp_out
    );

UART_A : Rs232RefComp 
    Port map ( 
		TXD 	=> out_TXD,
    	RXD 	=>	temp_RXD,				
    	CLK 	=> clk, 
		DBIN 	=> temp_DBIN,
		DBOUT => temp_DBOUT,
		RDA	=> temp_RDA,
		TBE	=> temp_TBE,
		RD		=> '0',					
		WR		=> temp_WR,
		PE		=> temp_PE,
		FE		=> temp_FE,
		OE		=> temp_OE,
		RST		=> reset
		);

	f_stato_uscita: process(clk)
		begin
			if (reset = '1') then
				stato_prossimo <= IDLE;
			else
								
				case stato_attuale is 
					
					when IDLE =>
						temp_WR <= '0';
						if (start = '1') then
							stato_prossimo <= PREPARAZIONE;
							e_contatore <= '1';
							e_read_rom <= '1';
						else 
							stato_prossimo <= IDLE;
						end if;
						
					when PREPARAZIONE =>
					    if e_read_rom = '1' then
						  temp_DBIN <= temp_out;
						  e_contatore <= '0';
						  e_read_rom <= '0';
						 end if;

						canale_invio_richieste <= '1'; --RTS

						if (canale_lettura_risposte = '1') then --SE ARRIVA CTS
							canale_invio_richieste <= '0';--OK RTS
							stato_prossimo <= TRASMISSIONE;
                            temp_WR <= '1';
						else 
							stato_prossimo <= PREPARAZIONE;
						end if;

					when TRASMISSIONE =>
                        if temp_WR = '1' then
                              temp_WR <= '0';
                            end if;
						if (temp_RDA = '1') then
                            stop_read <= '1';
							stato_prossimo <= IDLE;
						else 
							stato_prossimo <= TRASMISSIONE;
							
						end if;
						when others =>
							stato_prossimo <= IDLE;
				end case;
			end if;
	end process;
	
	cambio_stato: process (clk)
		begin
			if (rising_edge(clk) and clk = '1') then
				stato_attuale <= stato_prossimo;
			end if;
	end process;
end Behavioral;