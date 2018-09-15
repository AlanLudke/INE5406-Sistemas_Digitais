library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity multiplexadorResultado is
port (SW: in std_logic_vector(9 downto 8);
		EntradaMux: in std_logic_vector(3 downto 0);
		saida: out std_logic_vector (7 downto 0)
	  );
end multiplexadorResultado;

architecture circuito of multiplexadorResultado is
signal Shift1, Shift2, Shift3, Shift4: std_logic_vector(7 downto 0);
begin

		Shift1<= "000" & EntradaMux(3 downto 0) & '0';
		Shift2<= "00" & EntradaMux(3 downto 0) & "00";
		Shift3<= '0' & EntradaMux(3 downto 0) & "000";
		Shift4<= EntradaMux(3 downto 0) & "0000";
		
		saida <= Shift1 when SW = "00" else
					Shift2 when SW = "01" else
					Shift3 when SW = "10" else
					Shift4;
end circuito;