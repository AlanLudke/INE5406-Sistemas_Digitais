library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity adder_1_bit is
	port(
		a, b, cin: in std_logic;
		s,cout : out std_logic
	);
end adder_1_bit;

architecture arch of adder_1_bit is
	begin
		s <= cin XOR(A XOR B);
		cout<= (b AND cin) OR (a AND cin) OR (a AND B);
end architecture;
	