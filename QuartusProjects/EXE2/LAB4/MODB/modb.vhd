library IEEE;
use IEEE.Std_Logic_1164.all;

entity modb is
port (B: in std_logic;
	  C0: in std_logic;
	  C1: in std_logic;
	  E: out std_logic
	  );
end modb;

architecture circuito of modb is

begin
	E <= ((not B) and C1) or (B and (not C0));

end circuito;