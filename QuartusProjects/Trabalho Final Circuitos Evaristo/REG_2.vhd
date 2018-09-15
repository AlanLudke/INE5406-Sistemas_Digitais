library ieee;
use ieee.std_logic_1164.all;

entity REG_2 is
port(
RESET: in std_logic;
ENABLE: in std_logic;
SW: in std_logic_vector(1 downto 0);
CLOCK_50: in std_logic;
saida: out std_logic_vector(1 downto 0)
);
end REG_2;
architecture circuito of REG_2 is
begin
 process (RESET, ENABLE, CLOCK_50)
 begin
	if (RESET='0') then
		saida <= "00";
	elsif(CLOCK_50' event and CLOCK_50='1') then
		if(ENABLE='1') then
		saida<= SW;
		end if;
	end if;
end process;
end circuito;