LIBRARY ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

ENTITY ComparadorSaldo IS
port(CONTA_DESC: in std_logic_vector(9 downto 0);
		Saldo : out std_logic
		);
end ComparadorSaldo;

ARCHITECTURE estrutura OF ComparadorSaldo is
BEGIN
	--ATRIBUI 1 SE CONTA_DESC CHEGOU A 0
	Saldo <= '1' when CONTA_DESC = "0000000000" else '0';
END estrutura;
		