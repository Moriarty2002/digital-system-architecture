library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.all;

entity A is
    Port ( CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           NXT : in STD_LOGIC;
           ACKb : in STD_LOGIC;
           d : out STD_LOGIC_VECTOR (7 downto 0);
           REQ : out STD_LOGIC;
           ACKa : out STD_LOGIC);
end A;

architecture Mixed of A is

-- counter signals
signal ctr_en: std_logic := '0';
signal ctr_max: std_logic := '0';
signal ctr: std_logic_vector(3 downto 0) := "0000";

-- rom signals
signal rom_addr: std_logic_vector(15 downto 0);
signal rom_read: std_logic := '0';
signal rom_y: std_logic_vector(7 downto 0) := "00000000";

-- control unit
type state_a is (IDLE, WAIT_ACK, SEND_DATA);
signal state_c: state_a := IDLE; -- current state
signal state_n: state_a := IDLE; -- next state

begin

    dec_4_16: entity work.decoder_4_16
	port map (
		input => ctr,
		output => rom_addr
	);
    
    rom: entity work.rom_16x8_one_hot
    port map (
        input_lines => rom_addr, -- TODO: convertire valore in stringa da 16 bit
        CLK => CLK,
        read => rom_read,
        data_out => rom_y
    );
    
    counter: entity work.Contatore
    generic map ( N => 4 ) -- counter mod 16
    port map(
        CLK => CLK,
        EN => ctr_en,
        max_reached => ctr_max,
        count => ctr
    );
    
    CU_f_a: process(NXT, ACKb, ctr_en, rom_read, state_n)
    begin
        -- Default assignments
        REQ <= '0';
        ACKa <= '0';
        rom_read <= '0';
        ctr_en <= '0';
    
        case state_c is
            when IDLE =>
                if NXT = '1' then
                    state_n <= WAIT_ACK;
                    rom_read <= '1';
                    REQ <= '1';
                end if;
    
            when WAIT_ACK =>
                if ACKb = '1' then
                    state_n <= SEND_DATA;
                    ctr_en <= '1';
                    ACKa <= '1';
                else
                    state_n <= WAIT_ACK;
                    REQ <= '1';
                end if;
    
            when SEND_DATA =>
                d <= rom_y;
                if (NXT = '1' and ctr /= "0000") then
                    state_n <= WAIT_ACK;
                    rom_read <= '1';
                    REQ <= '1';
                elsif (NXT = '1' and ctr = "0000") then
                    state_n <= IDLE;
                end if;
        end case;
    end process;

    
    CU_CLK_a: process(CLK)
    begin
        if rising_edge(CLK) then
            if RST = '1' then
                       
            else
                state_c <= state_n;
            end if;
        end if;
    
    end process;


end Mixed;
