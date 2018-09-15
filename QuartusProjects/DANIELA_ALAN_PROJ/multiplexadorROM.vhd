library IEEE;
use IEEE.Std_Logic_1164.all;

entity multiplexadorROM is
port (selecao: in std_logic_vector(1 downto 0);
	  ROM1: in std_logic_vector (7 downto 0);
	  ROM2: in std_logic_vector (7 downto 0);
	  ROM3: in std_logic_vector (7 downto 0);
	  ROM4: in std_logic_vector (7 downto 0);
	  saida: out std_logic_vector (7 downto 0)
	  );
end multiplexadorROM;

architecture circuito of multiplexadorROM is
begin 

	saida <= ROM1 when selecao = "00" else
				ROM2 when selecao = "01" else
				ROM3 when selecao = "10" else
				ROM4
;
end circuito;