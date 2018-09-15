library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity COMP is
port(
saidaMUX: in std_logic_vector(7 downto 0);
jogador: in std_logic_vector(7 downto 0);
saida: out std_logic
);
end COMP;

architecture circuito of COMP is
	begin
		process(saidaMUX, jogador)
		begin
			if(saidaMUX=jogador) then 
				saida<= '1';
			else 
				saida<='0';
			end if;
		end process;
	end circuito; 	