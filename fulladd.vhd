library ieee;
use ieee.std_logic_1164.all;

entity fulladd is
  port (
    Cin  : in  std_logic;
    x    : in  std_logic;
    y    : in  std_logic;
    s    : out std_logic;
    Cout : out std_logic
  );
end entity;

architecture Behavioral of fulladd is
begin
  s    <= x XOR y XOR Cin;
  Cout <= (x AND y) OR (x AND Cin) OR (y AND Cin);
end architecture;
