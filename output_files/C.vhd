-- Combinational mapper for student ID digits (minimized logic)
library ieee;
use ieee.std_logic_1164.all;

entity C is
  port (
    S3 : in  std_logic;  -- address MSB (from ASU)
    S2 : in  std_logic;
    S1 : in  std_logic;
    S0 : in  std_logic;  -- address LSB (from ASU)
    L3 : out std_logic;  -- output bit 3 (MSB) of digit
    L2 : out std_logic;  -- output bit 2
    L1 : out std_logic;  -- output bit 1
    L0 : out std_logic   -- output bit 0 (LSB)
  );
end entity;

architecture Behavioral of C is
begin
  -- L3 = S1 AND S2
  L3 <= S1 AND S2;

  -- L2 = S3 OR (S0 AND (NOT S1) AND (NOT S2))
  L2 <= S3 OR ( S0 AND (NOT S1) AND (NOT S2) );

  -- L1 = (S3 AND (NOT S0)) OR (S2 AND (NOT S1) AND (NOT S0))
  L1 <= ( S3 AND (NOT S0) ) OR ( S2 AND (NOT S1) AND (NOT S0) );

  -- L0 = (S2 AND (NOT S0))
  --    OR (S0 AND (NOT S1) AND (NOT S3))
  --    OR (S0 AND (NOT S2) AND (NOT S3))
  L0 <= ( S2 AND (NOT S0) )
     OR ( S0 AND (NOT S1) AND (NOT S3) )
     OR ( S0 AND (NOT S2) AND (NOT S3) );

end architecture;

Test input 
0-100: 5+3
100-200: 5-3
200-300: 3-5
300-400: 15+1
400-500: 7-1
500-600: 8+1
600-700: 8-8
700-800: 6-6
