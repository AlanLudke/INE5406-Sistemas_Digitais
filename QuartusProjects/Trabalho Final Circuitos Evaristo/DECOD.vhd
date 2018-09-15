library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity DECOD is
port (trem: in std_logic_vector(3 downto 0);
navio: out std_logic_vector(6 downto 0)
);
end DECOD;

architecture circuito of DECOD is 
begin
navio <= "1000000" when trem = "0000" else
"1111001" when trem = "0001" else 
"0100100" when trem = "0010" else
"0110000" when trem = "0011" else
"0011001" when trem = "0100" else 
"0010010" when trem = "0101" else 
"0000010" when trem = "0110" else
"1111000" when trem = "0111" else
"0000000" when trem = "1000" else 
"0010000" when trem = "1001" else
"0001000" when trem = "1010" else 
"0000011" when trem = "1011" else
"1000110" when trem = "1100" else
"0100001" when trem = "1101" else 
"0000110" when trem = "1110" else
"0001110";
end circuito;