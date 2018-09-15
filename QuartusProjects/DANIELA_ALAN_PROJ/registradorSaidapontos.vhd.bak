library ieee;
use ieee.std_logic_1164.all;

entity registradorComparador is
port(
	RESET: in std_logic;
	ENABLE: in std_logic;
	SW: in std_logic_vector(7 downto 0);
	CLOCK_50: in std_logic;
	saida: out std_logic_vector(7 downto 0)
);
end registradorComparador;
architecture circuito of registradorComparador is
begin
	process(RESET, ENABLE, CLOCK_50)
	begin
			if(RESET='1') then
				saida<="00000000";
			elsif(CLOCK_50' event and CLOCK_50='1') then
				if(ENABLE='1') then
					saida<= SW;
				end if;
			end if;
	end process;	
end circuito;