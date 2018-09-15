library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity som_2xn_nbits is
	generic(n: integer:= 6);
	port(an, bn: in Std_logic_vector(n-1 downto 0);
			sn: out std_logic_vector(n-1 downto 0);
			cin: in std_logic;
			cout: out std_logic	
	);
end entity;

architecture behavior of som_2xn_nbits is

	signal carry: std_logic_vector(n downto 0);
	
	component somador1bit is
		port(a, b, cin: in std_logic;
				s, cout: out std_logic
		);
	end component;
	
	begin
		carry(0)<=cin;
		cout<=carry(n);
		
		gene:
		for i in 0 to (n-1) generate
		
			somador: somador1bit port map(an(i), bn(i), carry(i), sn(i), carry(i+1));
			
		end generate gene;
end behavior;