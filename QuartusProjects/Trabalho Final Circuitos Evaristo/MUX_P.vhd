library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity MUX_P is
port (selecao: in std_logic_vector(1 downto 0);
	  D1: in std_logic_vector (7 downto 0);
	  D2: in std_logic_vector (7 downto 0);
	  D3: in std_logic_vector (7 downto 0);
	  D4: in std_logic_vector (7 downto 0);
	  saida: out std_logic_vector (7 downto 0)
	  );
end MUX_P;

architecture circuito of MUX_P is
begin 
saida <= D1(7 downto 1) & '0' when selecao = "00" else
			D2(7 downto 2) & "00" when selecao = "01" else
			D3(7 downto 3) & "000" when selecao = "10" else
			D4(7 downto 4) & "0000";
end circuito;