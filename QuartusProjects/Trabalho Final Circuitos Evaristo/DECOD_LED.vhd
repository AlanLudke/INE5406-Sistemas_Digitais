library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity DECOD_LED is
port (trem: in std_logic_vector(3 downto 0);
navio: out std_logic_vector(9 downto 0)
);
end DECOD_LED;

architecture circuito of DECOD_LED is 
begin
navio <= "0000000000" when trem = "0000" else
"0000000001" when trem = "0001" else 
"0000000011" when trem = "0010" else
"0000000111" when trem = "0011" else
"0000001111" when trem = "0100" else 
"0000011111" when trem = "0101" else 
"0000111111" when trem = "0110" else
"0001111111" when trem = "0111" else
"0011111111" when trem = "1000" else 
"0111111111" when trem = "1001" else
"1111111111" when trem = "1010" else 
"0000001011" when trem = "1011" else
"1000101010" when trem = "1100" else
"0100010001" when trem = "1101" else 
"0000101110" when trem = "1110" else
"0001110110";
end circuito;