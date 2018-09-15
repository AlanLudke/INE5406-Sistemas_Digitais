library IEEE;
use IEEE.Std_Logic_1164.all;

entity mux4x1_8bit is
port (w, x, y, z: in std_logic_vector(7 downto 0);
	SW: in std_logic_vector(9 downto 8);
	C: out std_logic_vector(7 downto 0)
	);
end entity;

architecture circuito of mux4x1_8bit is
begin
	C <= w when SW = "00" else --SELECIONA Clock 1
	x when SW = "01" else -- SELECIONA Clock 2
	y when SW = "10" else -- SELECIONA Clock 3
	z; -- SELECIONA Clock 4
end circuito;