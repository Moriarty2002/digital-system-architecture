library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Entità del contatore
entity Contatore is
    generic (
        N : integer := 3  -- Dimensione del contatore (numero di bit)
    );
    Port (
        clk    : in  std_logic;     -- Segnale di clock
        enable : in  std_logic;     -- Segnale di abilitazione
        max_reached : out std_logic; -- Segnale di uscita alto quando il contatore ha raggiunto il valore massimo
        count  : out std_logic_vector(N-1 downto 0) := (others => '0') -- Valore corrente del contatore
    );
end Contatore;

-- Architettura del contatore
architecture Behavioral of Contatore is
    constant max_value : std_logic_vector(N-1 downto 0) := (others => '1'); 
    signal counter_value : std_logic_vector(N-1 downto 0) := (others => '0'); -- Valore interno del contatore
begin

    count_ps: process (clk)
    begin
        -- Controllo sul fronte di salita del clock
        if rising_edge(clk) then
            -- Se il segnale di enable è alto
            if enable = '1' then
                -- Incrementa il contatore
                if counter_value = max_value then
                    counter_value <= (others => '0');  -- Resetta il contatore se raggiunge il massimo
                    max_reached <= '1';
                else
                    max_reached <= '0';
                    counter_value <= counter_value + 1; -- Altrimenti incrementa
                end if;
            end if;
        end if;
    end process;

    -- Uscita del valore del contatore
    count <= counter_value;

end Behavioral;
