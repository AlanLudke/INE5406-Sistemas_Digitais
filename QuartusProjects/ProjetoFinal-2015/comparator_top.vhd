library ieee;
use ieee.std_logic_1164.all;

entity comparator_top is
 port ( 
	SW: in std_logic;
	sel_sequence : in std_logic_vector(12 downto 0);
	prizeTOled: out  std_logic_vector(10 downto 0)	
	);
end comparator_top;

architecture topo_stru of comparator_top is 


component ROM
 PORT(
		enable_prize : in std_logic;
		selected_sequence : in std_logic_vector(12 downto 0);
		prize : out std_logic_vector(10 downto 0) 
       );
 end component;

begin L0: ROM( SW , sel_sequence, prizeTOled );

end topo_stru; 