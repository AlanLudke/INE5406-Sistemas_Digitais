-- Quartus Prime VHDL Template
-- Four-State Moore State Machine

-- A Moore machine's outputs are dependent only on the current state.
-- The output is written only when the state changes.  (State
-- transitions are synchronous.)

library ieee;
use ieee.std_logic_1164.all;

entity PortaoGaragem is

	port(
		clk,reset		 : in	std_logic;
		SA,SF,SO,CR	 : in	std_logic;
		output	 : out	std_logic_vector(1 downto 0)
	);

end entity;

architecture rtl of PortaoGaragem is

	-- Build an enumerated type for the state machine
	type InternalState is (ABERTO, ABRINDO, FECHADO, FECHANDO);

	-- Register to hold the current state
	signal state,next_state  : InternalState;

begin
	-- Logic to advance to the next state

	process (state, SA,SF,SO,CR)
	begin
		if state= ABERTO and CR='1' then
			next_state<=FECHANDO;
		end if;
		if state= ABRINDO and SA='1' then
			next_state<=ABERTO;
		end if;
		if state= FECHADO and CR='1' then
			next_state<=ABRINDO;
		end if;
		if state= FECHANDO and SO='1' then
			next_state<=ABERTO;
			elsif state= FECHANDO and SF='1' then
				next_state<=FECHADO;
		end if;
		
		
		--case state is
			--when ABERTO=>
		--		if CR='1' and state=ABERTO  then 
		--			next_state<=FECHANDO;
		--		end if;
		--	when ABRINDO=>
		--		if SA='1' then 
		--			next_state<=ABERTO;
		--		end if;
		--	when FECHADO=>
		--		if CR='1' then 
		--			next_state<=ABRINDO;
		--		end if;
		--	when FECHANDO=>
		--		if SO='1' then 
		--				next_state<=ABRINDO;
		--			elsif SF='1' then
		--				next_state<=FECHADO;
		--		end if;
		--	end case;
	end process;
	
	process (clk, reset)
	begin
		if reset = '1' and rising_edge(clk)  then
			state <= FECHADO;
		elsif (rising_edge(clk)) then
			state<=next_state;		
		end if;
	end process;
	
	
	with state select
		output<= "01" when ABRINDO,
					"10" when FECHANDO,
					"00" when others;
end rtl;
