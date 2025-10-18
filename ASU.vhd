library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity ASU is
  port (
    X, Y     : in  std_logic_vector(3 downto 0); 
    AddSub   : in  std_logic;                    
    S        : out std_logic_vector(3 downto 0); 
    Sign     : out std_logic;                   
    Cout     : out std_logic;                    
    Overflow : out std_logic                     
  );
end ASU;

architecture Behavior of ASU is
  signal Y_mod : std_logic_vector(3 downto 0);
  signal Sum   : std_logic_vector(4 downto 0);
begin
  
  Y_mod <= Y xor (3 downto 0 => AddSub);
  Sum   <= ('0' & X) + ('0' & Y_mod) + AddSub;

  S        <= Sum(3 downto 0);
  Sign     <= Sum(4);                                    
  Cout     <= Sum(4);
  Overflow <= Sum(4) xor X(3) xor Y_mod(3) xor Sum(3);   
end Behavior;
