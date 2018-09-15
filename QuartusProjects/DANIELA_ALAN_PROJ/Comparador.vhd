library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;


ENTITY Comparador IS
port(SaidaMux: in std_logic_vector(7 downto 0);
		SaidaReg: in std_logic_vector(7 downto 0);
		SaidaComparador : out std_logic
		);
end Comparador;

ARCHITECTURE estruturaComparador OF Comparador is
BEGIN
	--ATRIBUI 1 SE Comparacao deu certo
		process(SaidaMux, SaidaReg)
			begin
			if(SaidaMux=SaidaReg) then 
				saidaComparador<= '1';
			else 
				saidaComparador<='0';
			end if;
		end process;
END estruturaComparador;
		