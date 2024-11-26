library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.all;

entity interconnection_16_4_TB is
end interconnection_16_4_TB;

architecture tb of interconnection_16_4_TB is
    
    signal input: std_logic_vector(15 downto 0);
    signal selector_in: std_logic_vector(3 downto 0);
    signal selector_out: std_logic_vector(1 downto 0);
    signal output: std_logic_vector(3 downto 0);

begin
    
    interconn: entity work.interconnection_16_4 PORT MAP (
        a_16 => input,
        s_in => selector_in,
        s_out => selector_out,
        y_4 => output
    );
    
    tb_ps: process
    begin
        
        wait for 100ns;
        input <= (others => '0');
        
        wait for 10ns;
        input(0) <= '1';
        wait for 10ns;
        selector_in <= "0000";
        selector_out <= "00";
        
        wait for 10ns;
        selector_out <= "10";
        
        wait for 10ns;
        input(0) <= '0';
        
        wait for 10ns;
        selector_in <= "0010";
        
        wait for 10ns;
        input(2) <= '1';
        
        wait;
    end process;

end tb;
