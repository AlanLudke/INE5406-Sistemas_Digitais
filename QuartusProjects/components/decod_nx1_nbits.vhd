library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity decod_nx1_nbits is
	generic(
		n_input: integer := 2
	);
	port(
		input   : in  STD_LOGIC_VECTOR (n_input-1 downto 0);
		output  : out STD_LOGIC_VECTOR ((2**n_input)-1 downto 0)
	);
end decod_nx1_nbits;

architecture comportamento of decod_nx1_nbits is
       
	begin
	
	gen:
		for i in 0 to (2**n_input)-1 generate
			begin
				output <= (others => '0'); -- default
				output(to_integer(input)) <= '1';
		end generate gen;
end comportamento;