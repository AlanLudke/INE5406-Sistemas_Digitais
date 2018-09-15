library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity DIV_FREQ is 
port (CLOCK_50: in std_logic;
	  Reset: in std_logic;
	  C: out std_logic_vector (3 downto 0)
	  );
end DIV_FREQ;

architecture circuito of DIV_FREQ is

	signal cont0: std_logic_vector(27 downto 0);
	signal cont1: std_logic_vector(27 downto 0);
	signal cont2: std_logic_vector(27 downto 0);
	signal cont3: std_logic_vector(27 downto 0);

begin
process (CLOCK_50, Reset)
	begin
		if (Reset = '1') then
			cont0 <= x"0000000";
		elsif (CLOCK_50'event AND CLOCK_50 = '1') then
			cont0 <= cont0 + x"0000001";
			if  (cont0 = x"2FAF076") then
				cont0 <= x"0000000";
				C(0)<= '1';
			else 
				C(0)<= '0';
			end if;
		end if;
	end process;

process (CLOCK_50, Reset)
	begin
		if (Reset = '1') then
			cont1 <= x"0000000";
		elsif (CLOCK_50'event AND CLOCK_50 = '1') then
			cont1 <= cont1 + x"0000001";
			if  (cont1 = x"2FAF07C") then
				cont1 <= x"0000000";
				C(1)<= '1';
			else 
				C(1) <= '0';
			end if;
		end if;
	end process;

process (CLOCK_50, Reset)
	begin
		if (Reset = '1') then
			cont2 <= x"0000000";
		elsif (CLOCK_50'event AND CLOCK_50 = '1') then
			cont2 <= cont2 + x"0000001";
			if  (cont2 = x"2FAF07D") then
				cont2 <= x"0000000";
				C(2)<= '1';
			else 
				C(2) <= '0';
			end if;
		end if;
	end process;

process (CLOCK_50, Reset)
	begin
		if (Reset = '1') then
			cont3 <= x"0000000";
		elsif (CLOCK_50'event AND CLOCK_50 = '1') then
			cont3 <= cont3 + x"0000001";
			if  (cont3 = x"2FAF07E") then
				cont3 <= x"0000000";
				C(3)<= '1';
			else 
				C(3) <= '0';
			end if;
		end if;
	end process;
end circuito;