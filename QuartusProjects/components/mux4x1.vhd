library ieee;
use ieee.std_logic_1164.all;

entity mux4x1 is
	port(
		a,b,c,d : in std_logic_vector(7 downto 0);
		s: in std_logic_vector(1 downto 0);
		x : out std_logic_vector(7 downto 0)
		);
end mux4x1;

architecture comp_arch of mux4x1 is
begin
	x <= a when (s="00") else
		b when (s="01") else
		c when (s="10") else
		d;
end comp_arch;