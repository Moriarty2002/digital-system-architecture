--IMPORTANTE: FATE run 100us NELLA "Tcl Console" (in basso) PER VEDERE QUALCOSA IN SIMULAZIONE
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity sis_tot is
    Port (
        start_tot : in STD_LOGIC;
        rst_tot : in STD_LOGIC;
        clk_tot : in STD_LOGIC
    );
end sis_tot;

architecture sis_totArch of sis_tot is
    signal txd_rxd : std_logic;
    signal CTS : std_logic;
    signal RTS : std_logic;
    signal stop : std_logic := '0';

    component unita_A is
      Port ( 
        clk : in std_logic;
        start: in std_logic;
        reset : in std_logic;
        stop_read : out std_logic := '0';    
        out_TXD :out std_logic;
        canale_invio_richieste : out STD_LOGIC  := '0';
        canale_lettura_risposte : in STD_LOGIC := '0'
      );
    end component;
    
    component unita_B  
    port(
        clk : in std_logic;
        reset: in std_logic;
        start: in std_logic;
        RXD: in std_logic;
        stop_read : in std_logic := '0';
        canale_invio_richieste : in STD_LOGIC  := '0';
        canale_lettura_risposte : out STD_LOGIC := '0';
        uscita : out std_logic_vector(7 downto 0)
    );
    end component;
    
    signal uscita_mem : std_logic_vector(7 downto 0);

begin
    nodo_a: unita_A
    port map
    (
        clk => clk_tot,
        start => start_tot,
        reset => rst_tot,
        stop_read => stop,    
        out_TXD => txd_rxd,
        canale_invio_richieste => RTS,
        canale_lettura_risposte => CTS
    );

    nodo_b: unita_B
    port map
    (        
        clk => clk_tot,
        reset => rst_tot,
        start => start_tot,
        RXD => txd_rxd,
        stop_read => stop,
        canale_invio_richieste => RTS,
        canale_lettura_risposte => CTS,
        uscita => uscita_mem
    );

    aggiorna_val: process (clk_tot)
		begin
	end process;
end sis_totArch;
