library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Testbench per il contatore
entity tb_Contatore is
end tb_Contatore;

architecture Behavioral of tb_Contatore is
    -- Dichiarazione dei segnali di test
    signal clk        : std_logic := '0';     -- Segnale di clock
    signal enable     : std_logic := '0';     -- Segnale di abilitazione
    signal max_reached : std_logic;           -- Segnale che indica il raggiungimento del massimo
    signal count      : std_logic_vector(2 downto 0); -- Uscita del contatore (per N=3 bit)
    
    -- Componenti
    component Contatore is
        generic (
            N : integer := 3  -- Dimensione del contatore (numero di bit)
        );
        Port (
            clk    : in  std_logic;
            enable : in  std_logic;
            max_reached : out std_logic;
            count  : out std_logic_vector(N-1 downto 0)
        );
    end component;

begin
    -- Istanza del contatore
    uut: Contatore
        port map (
            clk => clk,
            enable => enable,
            max_reached => max_reached,
            count => count
        );

    -- Generazione del clock (periodo 10 ns)
    clk_process : process
    begin
        clk <= '0';
        wait for 5 ns;
        clk <= '1';
        wait for 5 ns;
    end process;

    -- Stimolo del segnale enable
    stimulus : process
    begin
        -- Test 1: Abilito il contatore e controllo l'output
        enable <= '1';
        wait for 10 ns;  -- 2 incrementi (count=2 -1)

        -- Test 2: Il contatore raggiunge il massimo e si resetta
        wait for 90 ns;  -- 2 incrementi (count=4 -1)

        -- Test 4: Disabilito il contatore
        enable <= '0';
        wait for 10 ns;  -- Il contatore non dovrebbe incrementare

        -- Termina il test
        wait;
    end process;

end Behavioral;
