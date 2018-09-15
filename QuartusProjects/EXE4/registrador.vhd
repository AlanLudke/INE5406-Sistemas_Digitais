library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity registrador is
port(
--KEY: in std_logic_vector(1 downto 0);
Enable: in std_logic;
Reset: in std_logic;
SW: in std_logic_vector(7 downto 0);
CLOCK_50: in std_logic;
saida: out std_logic_vector(7 downto 0)
);
end registrador;
architecture circuito of registrador is

begin
 process (Reset, CLOCK_50)
 begin
	if(Reset = '0') then
		saida<= "00000000";
	elsif (CLOCK_50' event and CLOCK_50='1') then
		if (Enable='0') then
		saida<= SW;
	end if;
	end if;
 end process;
end circuito;