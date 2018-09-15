library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity registradorMuxROMs is
port(
	RESET: in std_logic;
	ENABLE: in std_logic;
	SW: in std_logic_vector(1 downto 0);
	CLOCK_50: in std_logic;
	saida: out std_logic_vector(1 downto 0)
);
end registradorMuxROMs;
architecture circuito of registradorMuxROMs is
signal aux_saida:std_logic_vector(1 downto 0);
begin
	process(RESET, CLOCK_50, ENABLE)
		begin
			if(RESET='1') then 
				aux_saida<="00";
			elsif(CLOCK_50' event and CLOCK_50= '1') then
				if(ENABLE='1') then
					aux_saida<= SW;
				end if;
			end if;
	end process;

	saida<=aux_saida;
	
end circuito;