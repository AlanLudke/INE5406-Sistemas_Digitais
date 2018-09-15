library IEEE;
use ieee.std_logic_1164.all;

entity generic_binary_coder is
	generic( n : positive := 2);
   port   ( entrada   : in  unsigned(2**n downto 0);
            saida    : out std_logic_vector(n downto 0));
end entity;

architecture comportamento of generic_binary_coder is
   
	begin
		A: for i in 0 to n - 1 generate
			dec(i) <= '1' when (to_unsigned(i, dados'length ) = dados )
			else '0';
		end generate;
 end comportamento;