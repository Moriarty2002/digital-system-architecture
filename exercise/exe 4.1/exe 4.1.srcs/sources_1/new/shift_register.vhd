library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.all;


entity shift_register is
    generic (                       
        n: integer := 3
    );
    Port ( i : in STD_LOGIC;
           CLK: in STD_LOGIC;
           RST: in STD_LOGIC;
           en: in STD_LOGIC;
           Y: in STD_LOGIC := '0'; -- '0' means 1 shift, '1' means 2 shift
           o : out STD_LOGIC;
           tmp_o : out STD_LOGIC);
end shift_register;


architecture Behavioral of shift_register is

signal mem: std_logic_vector( (n-1) downto 0); -- must be implemented with generics
signal cleared_en: std_logic := '0';

begin

    debouncer: entity work.ButtonDebouncer GENERIC MAP( 
            CLK_period => 10,  -- periodo del clock della board pari a 10ns
            btn_noise_time => 10000000 --intervallo di tempo in cui si ha l'oscillazione del bottone
                                        --assumo che duri 10ms
    )
    PORT MAP ( RST => RST,
               CLK => CLK, 
               BTN => en,
               CLEARED_BTN => cleared_en
    );
    
    shift_ps: process(CLK)
    variable tmp: std_logic := '1';

    begin
    
        if(rising_edge(CLK)) then
            if cleared_en = '1' then
            tmp_o <= tmp;
            tmp := not tmp;
                if Y = '0' then
                    for i in n-1 downto 0 loop
                        mem(i) <= mem(i-1);
                    end loop;
                    mem(0) <= i;
                    o <= mem(n-1);
                else
                    for i in n-1 downto 0 loop
                        mem(i) <= mem(i-1);
                    end loop;
                    mem(0) <= i;
                    mem(1) <= i;
                    o <= mem(n-2);
                end if;
            end if;
        end if;
    
    end process;

end Behavioral;

architecture Structural of shift_register is -- TODO: ask how to make flip flops

signal mem: std_logic_vector(n downto 0); -- must be implemented with generics

begin
    
    shift_ps: process(CLK)
    begin
    end process;

end Structural;
