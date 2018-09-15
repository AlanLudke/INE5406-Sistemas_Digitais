library IEEE;
use IEEE.Std_Logic_1164.all;

entity mux2x1 is
port (w: in std_logic_vector(9 downto 0); 
x: in std_logic_vector(9 downto 0);
s: in std_logic;
m: out std_logic_vector(9 downto 0)
);
end mux2x1;

architecture circuito of mux2x1 is
begin
-- APENAS SELECIONA QUAL DAS ENTRADAS VAI SAIR
m <= w when s = '1' else
x;
end circuito;