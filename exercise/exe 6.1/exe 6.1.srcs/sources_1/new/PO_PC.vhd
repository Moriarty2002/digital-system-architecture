library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use work.all;


entity PO_PC is
    Port ( CLK : in STD_LOGIC;
           RST : in STD_LOGIC;
           START : in STD_LOGIC;
           READ : in STD_LOGIC;
           y: out STD_LOGIC_VECTOR(8 downto 0)
    );
end PO_PC;

architecture Structural of PO_PC is
    signal m_in: std_logic_vector(3 downto 0);
    signal m_to_mem: std_logic_vector(3 downto 0);
    signal max_reached: std_logic;
    
    signal cu_read: std_logic;
    signal cu_write: std_logic;

    function reverse_any_vector (a: in std_logic_vector)
            return std_logic_vector is
              variable result: std_logic_vector(a'RANGE);
              alias aa: std_logic_vector(a'REVERSE_RANGE) is a;
            begin
              for i in aa'RANGE loop
                result(i) := aa(i);
              end loop;
              return result;
            end; -- function reverse_any_vector

begin

    counter: entity work.Contatore
    Generic Map (N => 4)
    Port Map (  clk => CLK,
                enable => '1',
                max_reached => max_reached,
                count => m_in
    );
    
    m_sys: entity work.m_system
    Port Map ( input => m_in,
               read => cu_read,
               reverse_any_vector(output) => m_to_mem
    );
    
    mem: entity work.MEM
    generic map ( N => 16, M => 8 )
    port map ( i => m_to_mem, 
               CLK => CLK,
               RST => RST,
               WRITE => cu_write,
               address => to_integer(unsigned((m_in))),
               y => y
    );


end Structural;
