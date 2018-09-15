library ieee;
use ieee.std_logic_1164.all;

entity even_detector is
	port (
	a: in std_logic_vector (2 downto 0);
	even: out std_logic
	);
end even_detector;

architecture sop_arch of even_detector is
	begin
		signal pl p2, p3, p4 : std_logic;
		even <= (p1 or p2) or (p3 or p4) after 20 ns;
		pl <= (not a(2)) and (not a(l)) and (not a(O)) after 15 ns;
		p2 <= (not a(2)) and a(l) and a(O) after 12 ns;
		p3 <= a(2) and (not a(1)) and a(O) after 12 ns;
		p4 <= a(2) and a(1) and (not a(O)) after 12 ns;
end sop_arch ;