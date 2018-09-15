library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux2x1nbits is
	generic(
		n: positive :=8
	);
	port(
		a, b: in std_logic_vector(n-1 downto 0);
		sel: in std_logic;
		s: out std_logic_vector(n-1 downto 0)
	);
end mux2x1nbits;

architecture arch of mux2x1nbits is
	begin
		s <= a when sel= '0' else b;
		
end architecture;
