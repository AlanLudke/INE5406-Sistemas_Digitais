LIBRARY ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

ENTITY ComparadorPassword IS
port(seq_3 : in std_logic_vector(4 downto 0); --RECEBE A SENHA DOS REGISTRADORES
		seq_2 : in std_logic_vector(4 downto 0);
		seq_1 : in std_logic_vector(4 downto 0);
		seq_0 : in std_logic_vector(4 downto 0);
		igual : out std_logic
		);
end ComparadorPassword;

ARCHITECTURE estrutura OF ComparadorPassword is
BEGIN
	-- COMPARAÇÃO SE A SENHA É 0740, SE SIM ATRIBUI 1
	igual <= '1' when seq_3 = "00000" and seq_2 = "00111" and seq_1 = "00100" and seq_0 = "00000" else '0';
END estrutura;
		