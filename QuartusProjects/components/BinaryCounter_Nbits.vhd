library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity BinaryCounter_Nbits is
	generic (N: positive := 8);
	port(
		-- control inputs
		clk, reset: in std_logic;
		enable, inc: in std_logic;
		-- data inputs
		--d: in std_logic_vector(N-1 downto 0);
		-- control outputs
		-- data outputs
		q: out std_logic_vector(N-1 downto 0)
	);
end entity;

architecture canonic of BinaryCounter_Nbits is
	subtype InternalState is unsigned(N-1 downto 0); -- ...
	signal nextState, currentState: InternalState;
begin
	-- next state logic (combinatorial)
	nextState <= 	currentState when enable='0' else
						currentState+1 when inc='1' else
						currentState-1;
	
	-- memory element (sequential)
	ME: process (clk, reset) is
	begin
		if reset='1' then 
			currentState <= (others=>'0'); -- reset state
			-- currentState <= ...
		elsif rising_edge(clk) then
			currentState <= nextState;
		end if;
	end process;
	
	-- output logic (combinatorial)
	q <= std_logic_vector(currentState);
	-- <output> <= ... currentState ...
	
end architecture;














