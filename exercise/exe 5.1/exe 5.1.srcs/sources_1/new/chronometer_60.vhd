library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity chronometer_60 is -- could be implemented with generics
  Port ( 
    CLK: in STD_LOGIC;
    EN: in STD_LOGIC;
    count: out std_logic_vector(6 downto 0);
    trg: out STD_LOGIC -- single trigger when counting 60
  );
end chronometer_60;

architecture Behavioral of chronometer_60 is

signal count_var: unsigned(6 downto 0) := (others => '0');
signal trg_signal: STD_LOGIC := '0';

begin

    -- Process for counting
    chron_ps: process(CLK)
    begin
        if rising_edge(CLK) then
            if EN = '1' then
                -- Increment the counter
                if count_var = 59 then
                    count_var <= (others => '0');  -- Reset the counter
                    trg_signal <= '1';             -- Trigger signal when reaching 60
                else
                    count_var <= count_var + 1;    -- Increment counter
                    trg_signal <= '0';             -- Clear trigger
                end if;
            else
                trg_signal <= '0';                 -- No trigger when disabled
            end if;
        end if;
    end process;

    -- Output assignments
    count <= std_logic_vector(count_var);  -- Directly assign the current count
    trg <= trg_signal;  -- Output the trigger signal

end Behavioral;
