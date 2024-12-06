library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity unita_B is 
port(
    clk : in std_logic;
    reset: in std_logic;
    start: in std_logic;
    RXD: in std_logic;
    stop_read : in std_logic;
    canale_invio_richieste : in STD_LOGIC  := '0';
	canale_lettura_risposte : out STD_LOGIC := '0';
	uscita : out std_logic_vector(7 downto 0)
);
end entity unita_B;

architecture behavioral of unita_B is

component memoria is
    Generic(
        len_add : positive := 3
    );
    Port(
        CLK_mem : in std_logic;
        write : in std_logic;
        address : in std_logic_vector (len_add-1 downto 0);
        inp_val : in std_logic_vector(7 downto 0);
        out_val : out std_logic_vector(7 downto 0)
    );
end component;

component cont_mod_N is
  generic( N: positive := 3);
  port ( 
    CLK_cont: in std_logic;
    RESET: in std_logic := '0';
    EN_COUNT : in std_logic;
    Y: out std_logic_vector(N-1 downto 0) 
  );
end component;

component Rs232RefComp is
    Port ( 
		TXD 	: out std_logic  	:= '1';
    	RXD 	: in  std_logic;					
    	CLK 	: in  std_logic;					--Master Clock
		DBIN 	: in  std_logic_vector (7 downto 0);--Data Bus in
		DBOUT : out std_logic_vector (7 downto 0);	--Data Bus out
		RDA	: inout std_logic ;						--Read Data Available(1 quando il dato è disponibile nel registro rdReg)
		TBE	: inout std_logic 	:= '1';				--Transfer Bus Empty(1 quando il dato da inviare è stato caricato nello shift register)
		RD		: in  std_logic ;					--Read Strobe(se 1 significa "leggi" --> fa abbassare RDA)
		WR		: in  std_logic;					--Write Strobe(se 1 significa "scrivi" --> fa abbassare TBE)
		PE		: out std_logic;					--Parity Error Flag
		FE		: out std_logic;					--Frame Error Flag
		OE		: out std_logic;					--Overwrite Error Flag
		RST		: in  std_logic	:= '0');			--Master Reset
end component;

signal temp_addr : std_logic_vector(2 downto 0);
signal temp_in_mem : std_logic_vector(7 downto 0);

signal temp_DBIN    : std_logic_vector(7 downto 0);
signal temp_DBOUT    : std_logic_vector(7 downto 0);
signal temp_RDA     : std_logic := '0';
signal temp_RD      : std_logic := '0';
signal temp_TBE     : std_logic := '0';
signal temp_TXD     : std_logic := '0';
signal temp_PE		:  std_logic := '0';					
signal temp_FE		:  std_logic := '0';					
signal temp_OE      :   std_logic := '0';

signal e_contatore  : std_logic := '0';
signal e_mem  : std_logic := '0';

type stato is (IDLE, RICEZIONE, SCRITTURA); 
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
  
MEM : memoria
port map(
    CLK_mem => clk,
    write => e_mem,
    address => temp_addr,
    inp_val => temp_in_mem,
    out_val => uscita
);

UART_B : Rs232RefComp
    Port map( 
		TXD     => temp_TXD,
    	RXD 	=> RXD,				
    	CLK 	=> clk,
		DBIN 	=> temp_DBIN,
		DBOUT   => temp_DBOUT,
		RDA	    => temp_RDA,
		TBE	    => temp_TBE,
		RD		=> temp_RD,
		WR		=> '0',
		PE		=> temp_PE,
		FE		=> temp_FE,
		OE	    => temp_OE,
		RST		=> reset
);			

	f_stato_uscita: process(clk)
		begin
			if (reset = '1') then
				stato_prossimo <= IDLE;
			else
								
				case stato_attuale is 

					when IDLE =>
                        e_contatore <= '0';
						e_mem <= '0';
						if (canale_invio_richieste = '1') then
							canale_lettura_risposte <= '1'; --CTS
							stato_prossimo <= RICEZIONE;
							temp_RD <= '1';
						else 
						    temp_RD <= '0';
							stato_prossimo <= IDLE;
						end if;

					when RICEZIONE =>
						canale_lettura_risposte <= '0'; -- OK CTS
						if (stop_read = '1') then
							stato_prossimo <= SCRITTURA;
						else 
							stato_prossimo <= RICEZIONE;
						end if;

					when SCRITTURA =>
                        temp_RD <= '0';
						temp_in_mem <= temp_DBOUT;
                        if (temp_RDA = '1') then
                            e_mem <= '1';
                            e_contatore <= '1';
                            stato_prossimo <= IDLE;
                        else
                            stato_prossimo <= SCRITTURA;
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

end behavioral;