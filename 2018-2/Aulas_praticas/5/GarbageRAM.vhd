library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity GarbageRAM is
	generic(N: positive := 8;
			 numBitsAdd: positive := 10);
	port(
		-- control inputs
		clk, rst: in std_logic;
		wren: in std_logic;
		-- data inputs
		data: in std_logic_vector(N-1 downto 0);
		addr: in std_logic_vector(numBitsAdd-1 downto 0);
		-- control outputs
		-- data outputs
		q: out std_logic_vector(N-1 downto 0)
	);
end entity;

architecture canonicalForm of GarbageRAM  is
	type InternalState is array(0 to 2**numBitsAdd-1) of std_logic_vector(N-1 downto 0);
	signal nextState, currentState: InternalState;
begin
	-- next-state logic (combinatorial)
	LabelFofinho:for i in currentState'range generate 
		nextState(i) <= 	data	when wren='1' and i = to_integer(unsigned(addr)) else
								currentState(i);
	end generate;
	
	-- memory element (sequential)
	process(clk, rst) is
	begin
		if rst='1' then
			L2:for i in currentState'range loop 
				currentState(i) <= (others=>'0'); -- reset state
			end loop;
		elsif rising_edge(clk) then 
			currentState <= nextState;
		end if;
	end process;
	
	-- output-logic 
	q <= currentState(to_integer(unsigned(addr)));
	
end architecture;













