LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity ula_control is
	port 
	(
		ulaop		  : in std_logic_vector  (1 downto 0);
		funct		  : in std_logic_vector  (5 downto 0);
		ulacontrol : out std_logic_vector (2 downto 0)
	);
end entity;


architecture behavior of ula_control is
begin
			
end behavior;
