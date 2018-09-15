library ieee;
use ieee.std_logic_1164.all;

entity FSM is
	generic(N: positive := 8);
	port(
		-- control inputs
		clk, rst: in std_logic;
		-- data inputs
		SA, SF, OB, CR: in std_logic_vector(1 downto 0);
		-- control outputs
		-- data outputs
		MT: out std_logic_vector(1 downto 0)
	);
end entity;

architecture canonicalForm of FSM is
	type InternalState is (FECHADO, FECHANDO, ABRINDO, ABERTO);
	signal nextState, currentState: InternalState;
begin
	-- next-state logic (combinatorial)
	
	NSL: process(currentState, SA, SF, OB, CR) is
	begin
		nextState <= currentState;
		case(currentState) is
			when FECHANDO => 
				if OB = '1' then
				 nextState<=ABRINDO;
				elsif SF='1' then
					nextState<= FECHADO;
				end if;
			when FECHADO =>
				if CR = '1' then
					nextState<=ABRINDO;
				end if;
			when ABRINDO =>
				if SA='1' then
					nextState<= ABERTO;
				end if;
			when ABERTO =>
				if CR = '1' then
					nextState<=FECHANDO;
				end if;
		end case;
	end process;
	
	-- memory element (sequential)
	process(clk, rst) is
	begin
		if rst='1' then
			currentState <= FECHANDO; -- reset state s´o mudar esse!!!!!!!!!!!!!!!!!!!!!!!!!
		elsif rising_edge(clk) then 
			currentState <= nextState;
		end if;
	end process;
	
	-- output-logic 
	MT <= "10" when currentState=FECHANDO else
	"01" when currentState=ABRINDO else
	"00";
end architecture;













