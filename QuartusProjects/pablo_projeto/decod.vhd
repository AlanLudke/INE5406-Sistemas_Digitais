library IEEE;
use IEEE.Std_Logic_1164.all;

entity decod is
port (C: in std_logic_vector(9 downto 0);
		F: out std_logic_vector(4 downto 0)
);
end decod;

architecture decod_bhv of decod is
begin
-- ATRIBUI A F O VALOR BINARIO DA CODIFICAÇÃO DAS CHAVES DA PLACA
F <=  "00000" when C = "0000000001" else --0
		"00001" when C = "0000000010" else --1
		"00010" when C = "0000000100" else --2 E SUCESSIVAMENTE
		"00011" when C = "0000001000" else
		"00100" when C = "0000010000" else
		"00101" when C = "0000100000" else
		"00110" when C = "0001000000" else
		"00111" when C = "0010000000" else
		"01000" when C = "0100000000" else
		"01001" when C = "1000000000" else --9
		"00000"; -- 0 CASO SEJA INVALIDA
end decod_bhv;