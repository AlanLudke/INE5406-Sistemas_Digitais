library IEEE;
use IEEE.Std_Logic_1164.all;

entity MUX_DIV is
port (
	  selecao: in std_logic_vector(1 downto 0);
	  C: in std_logic_vector (3 downto 0);
	  saida: out std_logic
	  );
end MUX_DIV;

architecture circuito of MUX_DIV is
begin 
	saida <= C(0) when selecao = "00" else
				C(1) when selecao = "01" else
				C(2) when selecao = "10" else
				C(3);
end circuito;