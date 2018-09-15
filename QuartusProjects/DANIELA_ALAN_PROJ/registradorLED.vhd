library ieee;
use ieee.std_logic_1164.all;

entity registradorLED is
port(
	RESET: in std_logic;
	ENABLE: in std_logic;
	pontos: in std_logic_vector(3 downto 0);
	CLOCK_50: in std_logic;
	saida: out std_logic_vector(3 downto 0)
);
end registradorLED;
architecture circuito of registradorLED is
begin
	process(RESET, ENABLE, CLOCK_50)
	begin
			if(RESET='1') then
				saida<="0000";
			elsif(CLOCK_50' event and CLOCK_50='1') then
				if(ENABLE='1') then
					saida<= pontos;
				end if;
			end if;
	end process;	
end circuito;