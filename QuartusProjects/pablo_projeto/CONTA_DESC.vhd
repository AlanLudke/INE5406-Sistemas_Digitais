library ieee; 
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity CONTA_DESC is
port (clock: in std_logic;
		SEL_LED: in std_logic;
		RST: in std_logic;
		CONTA_DESCO: out std_logic_vector(9 downto 0)
);
end CONTA_DESC;
architecture FSM_beh of CONTA_DESC is
	signal contador: unsigned(9 downto 0) := ("1111110100"); -- DEFINIÇÃO INICIAL DE SALDO = 1012
	
begin

P1: process (clock, RST)
	begin
		if RST = '0' then -- RESET ASSINCRONO
			contador <= "1111110100";
		elsif SEL_LED = '1' then -- ENABLE
			if clock'event and clock = '1' then
				contador <= contador - 1; -- CONTA DECRESCENTEMENTE
			end if;
		end if;
		CONTA_DESCO <= std_logic_vector(contador); -- TRANSFORMA O SINAL EM UM VETOR DE SAIDA
	end process;
end FSM_beh;