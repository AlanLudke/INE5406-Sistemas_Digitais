library ieee;
use ieee.std_logic_1164.all;

entity sequencer_top is
 port ( 
	HEX0, HEX1, HEX2: out std_logic_vector (6 downto 0);
	full_seq: out std_logic_vector (11 downto 0);
	C0, C1, C2: in std_logic;
	KEY: in std_logic;
	reset_to_initialState: in std_logic;
	clock_50: in std_logic  
	);
end sequencer_top;

architecture topo_stru of sequencer_top is 

signal sequence0, sequence1, sequence2 : std_logic_vector(3 downto 0);

component seq0_fsm
 port (
		seq: out std_logic_vector(3 downto 0);
		clock, reset, enable, reset_to_s0 : in std_logic
		); 
 end component;

component seq1_fsm
 port (
		seq: out std_logic_vector(3 downto 0);
		clock, reset, enable, reset_to_s0 : in std_logic
		); 
 end component; 

component seq2_fsm
 port (
		seq: out std_logic_vector(3 downto 0);
		clock, reset, enable, reset_to_s0 : in std_logic
		); 
 end component;  
 
 component decod7
 port (
		C: in std_logic_vector(3 downto 0);
		F: out std_logic_vector(6 downto 0)
		);
end component;

begin
L0: seq0_fsm port map (sequence0, clock_50, KEY, C0, reset_to_initialState);
L1: seq1_fsm port map (sequence1, clock_50, KEY, C1 ,reset_to_initialState);
L2: seq2_fsm port map (sequence2, clock_50, KEY, C2 ,reset_to_initialState);
L3: decod7 port map (sequence0, HEX0);
L4: decod7 port map (sequence1, HEX1);
L5: decod7 port map (sequence2, HEX2);
full_seq <= (sequence2 & sequence1 & sequence0);



end topo_stru; 