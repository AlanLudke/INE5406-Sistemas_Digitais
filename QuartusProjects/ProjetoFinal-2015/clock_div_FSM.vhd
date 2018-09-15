library IEEE; 
use IEEE.Std_Logic_1164.all; 
use IEEE.std_logic_unsigned.all; 

entity clock_div_FSM is port ( 
	level: in std_logic; 
	new_clock: out std_logic; 
	clock, reset, S0_reset : in std_logic); 
end; 

architecture bhv of clock_div_FSM is
 
type STATES is (D0,D1,D2,D3); 
signal EA, PE : STATES; 
signal divided_clock : std_logic:='0';
signal delay: std_logic_vector(23 downto 0); 
signal limit: std_logic_vector(23 downto 0); 


begin 
new_clock <= divided_clock;

	process (clock, reset) 
		begin 
			if reset= '0' or S0_reset= '0' then				
				EA <= D0; 
			elsif clock'event and clock='1' then 
				EA <= PE ; 
			end if; 
	end process; 

	process(clock, EA) 
		begin 
			if clock'event and clock='0' then 
				case EA is 
					when D0 =>						
						if level = '0' then
							limit <= x"7270E0";  --x"7270E0" para 1hz
						else
							limit <= x"393870"; -- x"393870" 2hz
						end if;	
						delay <= (others => '0'); 
						divided_clock <= not(divided_clock); 
						PE <= D1; 
					when D1 => 
						if delay >= limit then 
							PE <= D3; 
						else 
							PE <= D2; 
						end if; 
					when D2 => 
						delay <= delay + 1; 
						PE <= D1; 
					when D3 => 
						PE <= D0; 
				end case; 
			end if; 
	end process; 
end bhv;