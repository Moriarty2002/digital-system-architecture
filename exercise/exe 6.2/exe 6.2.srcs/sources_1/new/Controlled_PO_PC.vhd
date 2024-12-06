library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.all;

entity Controlled_PO_PC is
  Port (
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    STR_READ : in STD_LOGIC := '0';
    MEM_OUT : out STD_LOGIC_VECTOR (3 downto 0)
  );
end Controlled_PO_PC;

architecture Behavioral of Controlled_PO_PC is

signal s_RST: STD_LOGIC := '0';
signal s_STR_READ: STD_LOGIC := '0';

begin
    
    PO_PC: entity work.PO_PC
    port map (
        CLK => CLK,
        RST => RST,
        STR => s_STR_READ,
        READ => s_STR_READ,
        y => MEM_OUT
    );
    
    BTN_RST : entity work.ButtonDebouncer 
    generic map (
        CLK_PERIOD => 10,
        BTN_NOISE_TIME => 10000000
    )
    port map (
        CLK => CLK,
        RST => '0',
        BTN => RST,
        CLEARED_BTN => s_RST    
    );
    
    BTN_STR_READ : entity work.ButtonDebouncer 
    generic map (
        CLK_PERIOD => 10,
        BTN_NOISE_TIME => 10000000
    )
    port map (
        CLK => CLK,
        RST => '0',
        BTN => STR_READ,
        CLEARED_BTN => s_STR_READ    
    );
    


end Behavioral;
