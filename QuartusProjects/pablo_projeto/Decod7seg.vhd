library IEEE;
use IEEE.Std_Logic_1164.all;

entity decod7seg is
port (C: in std_logic_vector(4 downto 0);
		F: out std_logic_vector(6 downto 0)
);
end decod7seg;

architecture decod_bhv of decod7seg is
begin
-- F RECEBE A CODIFICAÇÃO NO QUAL FARÁ OS LEDS DO DISPLAY ACENDEREM VALOR LOGICO = 0 OU APAGAREM VALOR LOGICO = 1
-- LETRAS E NUMEROS QUE TEM A MESMA CODIFICAÇÃO FORAM DESCONSIDERADOS E NA AGENDA ADAPTADOS
-- A SEGUIR TODAS AS LETRAS E NUMEROS DO ALFABETO CODIFICADOS

F <=  "1000000" when C = "00000" else
		"1111001" when C = "00001" else
		"0100100" when C = "00010" else
		"0110000" when C = "00011" else
		"0011001" when C = "00100" else
		"0010010" when C = "00101" else
		"0000010" when C = "00110" else
		"1111000" when C = "00111" else
		"0000000" when C = "01000" else
		"0010000" when C = "01001" else
		"0001000" when C = "01010" else
		"0000011" when C = "01011" else
		"1000110" when C = "01100" else
		"0100001" when C = "01101" else
		"0000110" when C = "01110" else
		"0001110" when C = "01111" else
		"0001001" when C = "10000" else
		"1100001" when C = "10001" else
		"0000101" when C = "10010" else
		"1000111" when C = "10011" else
		"0101011" when C = "10100" else
		"1001000" when C = "10101" else
		"0001100" when C = "10110" else
		"0011000" when C = "10111" else
		"0101111" when C = "11000" else
		"0000111" when C = "11001" else
		"1000001" when C = "11010" else
		"1100011" when C = "11011" else
		"0010001" when C = "11100" else
		"1111111" when C = "11111";
end decod_bhv;