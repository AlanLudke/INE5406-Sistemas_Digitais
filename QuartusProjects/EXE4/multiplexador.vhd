library IEEE;
use IEEE.Std_Logic_1164.all;
use IEEE.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity multiplexador is
port (I: in std_logic_vector(7 downto 0);
	  Q: in std_logic_vector(7 downto 0);
	  OPCOES: in std_logic_vector(1 downto 0);
	  SAIDA: out std_logic_vector(7 downto 0)
	  );
end multiplexador;

architecture circuito of multiplexador is
begin 
SAIDA <= (I+Q) when OPCOES = "00" else
		  I when OPCOES = "01" else
		  Q(6 downto 0) & '0' when OPCOES = "11" else 
		  '0' & Q(7 downto 1);
end circuito;