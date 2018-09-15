library IEEE;
use IEEE.Std_Logic_1164.all;

entity somasub is
	port (A: in std_logic_vector(3 downto 0);
		B: in std_logic_vector(3 downto 0);
		C: in std_logic_vector(1 downto 0);
		S: out std_logic_vector(3 downto 0);
		Overflow: out std_logic);
end somasub;

architecture soma4 of somasub is
	signal E: std_logic_vector(3 downto 0);
	signal Co: std_logic_vector(3 downto 0);
	
	component fulladder is
		port (A: in std_logic;
			B: in std_logic;
			Cin: in std_logic;
			S: out std_logic;
			Cout: out std_logic
		);
	end component;

	component modb is
		port (B: in std_logic;
			  C1: in std_logic;
			  C0: in std_logic;
			  E: out std_logic
			  );
	end component;

	begin
		MB0: modb port map (B(0),C(1),C(0),E(0));
		MB1: modb port map (B(1),C(1),C(0),E(1));
		MB2: modb port map (B(2),C(1),C(0),E(2));
		MB3: modb port map (B(3),C(1),C(0),E(3));
		
		FA0: fulladder port map (A(0),E(0),C(0),S(0),Co(0));
		FA1: fulladder port map (A(1),E(1),Co(0),S(1),Co(1));
		FA2: fulladder port map (A(2),E(2),Co(1),S(2),Co(2));
		FA3: fulladder port map (A(3),E(3),Co(2),S(3),Co(3));
		
		Overflow <= Co(2) xor Co(3);
end soma4;