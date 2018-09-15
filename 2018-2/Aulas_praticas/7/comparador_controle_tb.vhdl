library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- A testbench has no ports.
entity comparador_controle_tb is
end comparador_controle_tb;

architecture behav of comparador_controle_tb is
	-- Declaration of the component that will be instantiated.
	component comparador_controle is
	generic(width: integer := 8);
	port(
		inpt0: in std_logic_vector(width-1 downto 0);
		inpt1: in std_logic_vector(width-1 downto 0);
		op: in std_logic;
		outp: out std_logic_vector(width-1 downto 0)
	);
	end component;
	-- Specifies which entity is bound with the component.
	for comparador_controle_0: comparador_controle use entity work.comparador_controle;
	signal inpt0, inpt1 : std_logic_vector(7 downto 0);
	signal op : std_logic;
	signal outp: std_logic_vector(7 downto 0);
begin
	-- Component instantiation.
	comparador_controle_0: comparador_controle generic map (width => 8) port map (inpt0 => inpt0, inpt1 => inpt1, op => op, outp => outp);
	-- This process does the real job.
	process
	type pattern_type is record
		-- The inputs of the comb_funct.
		inpt0: std_logic_vector(7 downto 0);
		inpt1: std_logic_vector(7 downto 0);
		op: std_logic;
		-- The expected outputs of the comb_funct.
		outp: std_logic_vector(7 downto 0);
	end record;
	-- The patterns to apply.
	type pattern_array is array (natural range <>) of pattern_type;
	constant patterns : pattern_array :=
		(("11110110", "11111110", '0', "11111110"), -- inpt0 = -10, inpt1 = -2, outp = -2
		("00000010", "11110110", '0', "00000010"),	-- inpt0 = 2, inpt1 = -10, outp = 2
		("00001111", "11110111", '1', "11110111"),	-- inpt0 = 15, inpt1 = -9, outp = -9
		("00100000", "00001111", '1', "00001111"));	-- inpt0 = 32, inpt1 = 15, outp = 15
	begin
		-- Check each pattern.
		for i in patterns'range loop
			-- Set the inputs.
			inpt0 <= patterns(i).inpt0;
			inpt1 <= patterns(i).inpt1;
			op <= patterns(i).op;
			-- Wait for the results.
			wait for 1 ns;
			-- Check the outputs.
			assert outp = patterns(i).outp			
			report "bad combinational value outp=" & integer'image(to_integer(signed(outp))) & " when using inpt0 = " & integer'image(to_integer(signed(inpt0))) & ", input1 = " & integer'image(to_integer(signed(inpt1))) & " and op = " & std_logic'image(op) severity error;
			end loop;
		assert false report "end of test" severity note;
		-- Wait forever; this will finish the simulation.
		wait;
	end process;
end behav;


