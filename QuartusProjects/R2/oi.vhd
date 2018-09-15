library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity oi is 

	generic
		(
			n : positive := 3
		);

	port (
		clk, reset: in std_logic;
		entrada: in std_logic_vector((n-1) downto 0);
		saida: out std_logic_vector ((n-1) downto 0)
	);
end entity;

architecture behavior of oi is 
	begin
		saida<=(std_logic_vector(unsigned("
end architecture;
	
