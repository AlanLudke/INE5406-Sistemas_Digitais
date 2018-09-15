library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity Mult is
port (
W: in std_logic_vector(3 downto 0);
Y: in std_logic_vector(3 downto 0);
sel: in std_logic;
saida: out std_logic_vector(3 downto 0));

end Mult;

architecture c22 of Mult is
begin
saida <= W when sel = '0' else
			Y when sel = '1';

end c22;