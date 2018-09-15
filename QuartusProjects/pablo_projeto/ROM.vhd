LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY ROM IS
	PORT(
	endereco: in std_logic_vector(3 downto 0);
	dado: out std_logic_vector(19 downto 0)
);
END ENTITY;
ARCHITECTURE BEV OF ROM IS

	type memoria is array ( 0 to 2**4 - 1) of std_logic_vector(19 downto 0);
	constant minhaROM: memoria := (
	--Aqui está codificado os nomes na agenda, o decoficador entenderá como:
	0 => "10011110101001111010", --LULU
	1 => "01010001011000001110", --Ashe 
	2 => "00010111001100001010", --Zyra
	3 => "01010000100000111000", --Azir
	4 => "11111100010101010000", --Jax
	5 => "10001000011010110000", --Jinx
	6 => "01110100101001000000", --Ekko
	7 => "10001100000000110101", --Jhin
	8 => "01001101010101011000", --Gnar
	9 => "01010100001100000001", --Ahri
	10 => "11111000100111001101", --Zed
	11 => "11111100111101010000", --Lux
	12 => "10101010101010000001", --Nami
	13 => "11010011011110011000", --Udyr
	14 => "01011010101100001101", --Bard
	15 => "00101000001010101010" --Sona
	
);
BEGIN
	process (endereco)
	begin
		case endereco is
			when "0000" => dado <= minhaROM (0); --seleciona a posição da memoria 0 quando endereco é 0
			when "0001" => dado <= minhaROM (1);
			when "0010" => dado <= minhaROM (2);
			when "0011" => dado <= minhaROM (3);
			when "0100" => dado <= minhaROM (4);
			when "0101" => dado <= minhaROM (5);
			when "0110" => dado <= minhaROM (6);
			when "0111" => dado <= minhaROM (7);
			when "1000" => dado <= minhaROM (8);
			when "1001" => dado <= minhaROM (9);
			when "1010" => dado <= minhaROM (10);
			when "1011" => dado <= minhaROM (11);
			when "1100" => dado <= minhaROM (12);
			when "1101" => dado <= minhaROM (13);
			when "1110" => dado <= minhaROM (14);
			when "1111" => dado <= minhaROM (15);
			when others => dado <= (others => '0');
		end case;
	end process;
END BEV;