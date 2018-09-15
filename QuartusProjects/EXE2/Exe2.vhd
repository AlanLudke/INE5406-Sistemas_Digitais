library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity Exe2 is
	port (SW: in std_logic_vector(9 downto 0);
			HEX0: out std_logic_vector(6 downto 0);
			LEDR: out std_logic_vector(1 downto 0));
			
end Exe2;

architecture exefoda of Exe2 is
	signal SSB: std_logic_vector(3 downto 0);

	
	component somasub is
		port (A: in std_logic_vector(3 downto 0);
				B: in std_logic_vector(3 downto 0);
				C: in std_logic_vector(1 downto 0);
				S: out std_logic_vector(3 downto 0);
				Overflow: out std_logic);
	end component;

	component Lab5 is
		port (C2: in std_logic_vector(3 downto 0);
				Sinal: out std_logic;
				SCOD: out std_logic_vector(6 downto 0));
	end component;
	
	begin

		SSub: somasub port map(SW(3 downto 0), SW(7 downto 4), SW(9 downto 8), SSB, LEDR(1));
		Decod4: Lab5 port map(SSB, LEDR(0), HEX0);
		
end exefoda;