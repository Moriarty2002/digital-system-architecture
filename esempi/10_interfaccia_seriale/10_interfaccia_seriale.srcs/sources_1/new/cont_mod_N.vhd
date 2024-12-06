LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY cont_mod_N IS
  GENERIC (
    N : POSITIVE := 3
  );
  PORT (
    CLK_cont : IN STD_LOGIC;
    RESET : IN STD_LOGIC := '0';
    EN_COUNT : IN STD_LOGIC;
    --END_COUNT : out std_logic;
    Y : OUT STD_LOGIC_VECTOR(N - 1 DOWNTO 0)
  );
END cont_mod_N;

ARCHITECTURE Behavioral OF cont_mod_N IS

  SIGNAL Y_temp : STD_LOGIC_VECTOR(N - 1 DOWNTO 0) := (OTHERS => '0');

BEGIN
  count : PROCESS (CLK_cont)
  BEGIN
    IF rising_edge(CLK_cont) THEN
      IF (RESET = '1') THEN
        Y_temp <= (OTHERS => '0');

      ELSE
        IF (EN_COUNT = '1') THEN
          Y_temp <= STD_LOGIC_VECTOR(unsigned(Y_temp) + 1);
        END IF;
      END IF;
    END IF;

  END PROCESS;
  Y <= Y_temp;
  --    END_COUNT <= '1' when (to_integer(unsigned(Y_temp)) = 2**N)
  --                  else '0';
END Behavioral;