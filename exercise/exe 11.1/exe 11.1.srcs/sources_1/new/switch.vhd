library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.all;

entity switch_2_2 is
    generic (
        N : integer := 4  -- Generic message length (vector size)
    );
    
    Port ( 
        a0      : in  STD_LOGIC_VECTOR(N-1 downto 0); -- 1 bit it's already used for the selector
        a1      : in  STD_LOGIC_VECTOR(N-1 downto 0);
        sel_in  : in  STD_LOGIC;
        y0      : out STD_LOGIC_VECTOR(N-2 downto 0);
        y1      : out STD_LOGIC_VECTOR(N-2 downto 0)
    );
end switch_2_2;

architecture Architectural of switch_2_2 is

    signal s_interconnection : STD_LOGIC_VECTOR(N-2 downto 0);
    signal s_sel_out : STD_LOGIC; -- declared like this for the output selector mux declared as generics
    
begin

    mux_2_1_inst: entity work.mux_2_1
    generic map ( N => N-1 )  -- Pass the generic value
    port map (
        a0  => a0(N-2 downto 0),
        a1  => a1(N-2 downto 0),
        s   => sel_in,
        y   => s_interconnection
    );
    
    mux_2_1_sel_out_inst: entity work.mux_2_1
    generic map ( N => 1 )  -- Pass the generic value
    port map (
        a0(0)  => a0(N-1),
        a1(0)  => a1(N-1),
        s   => sel_in,
        y(0)   => s_sel_out
    );
    
    
    demux_1_2_inst: entity work.demux_1_2
    generic map ( N => N-1 )  
    port map (
        a   => s_interconnection,
        s   => s_sel_out,
        y0  => y0,
        y1  => y1
    );

end Architectural;
