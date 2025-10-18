
library ieee;
use ieee.std_logic_1164.all;

entity C is
  port (
    S : in  std_logic_vector(3 downto 0);  
    L : out std_logic_vector(3 downto 0)   
  );
end entity;

architecture Behavioral of C is
begin
  
  L(3) <= S(1) AND S(2);

  
  L(2) <= S(3) OR ( S(0) AND (NOT S(1)) AND (NOT S(2)) );

  
  L(1) <= ( S(3) AND (NOT S(0)) ) OR ( S(2) AND (NOT S(1)) AND (NOT S(0)) );

  
  

  L(0) <= ( S(2) AND (NOT S(0)) )
       OR ( S(0) AND (NOT S(1)) AND (NOT S(3)) )
       OR ( S(0) AND (NOT S(2)) AND (NOT S(3)) );

end architecture;
