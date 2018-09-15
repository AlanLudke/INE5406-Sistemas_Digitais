library ieee; 
use ieee.std_logic_1164.all;
use IEEE.std_logic_unsigned.all; 

entity FSMctrl is
port ( 
	print_round, print_cstate: out std_logic_vector(3 downto 0);
	clock, reset, init_stop , credit_below_zero : in std_logic;
	enable_c0, enable_c1, enable_c2, habilit_credit, reset_reg: out std_logic
);
end FSMctrl;

architecture FSM_beh of FSMctrl is
 type states is (S0, S1, S2, S3, S4, S5, S6, B1, B2, B3, B4, B5);
 signal EA, PE: states;
 signal rounds: std_logic_vector(3 downto 0);
 signal current_state: std_logic_vector(3 downto 0);

 
begin

print_round <= rounds;
print_cstate <= current_state;

	process (clock, reset, credit_below_zero)
	begin
		if reset = '0' or credit_below_zero = '0' then
			EA <= S0;
		elsif clock'event and clock = '1' then
			EA <= PE;
		end if;
	end process;
	
	process (EA, init_stop, clock)  
	begin
		if clock'event and clock='0' then	
			case EA is
			
				when S0 =>
					current_state <= "0000";
					enable_c0 <= '0';
					enable_c1 <= '0';
					enable_c2 <= '0';
					habilit_credit <= '0';					
					reset_reg <= '0';				
					PE <= S1;	
					
				when S1 =>
					current_state <= "0001";
					reset_reg <= '1';					
					rounds <= "0000";
					if init_stop = '0' then
						PE <= B1;
					else 
						PE <= S1;
					end if;
					
						when B1 =>
							if init_stop = '1' then
								PE <= S2;
							else 
								PE <= B1;							
							end if;
							
				when S2 =>
					current_state <= "0010";
					enable_c0 <= '1';
					enable_c1 <= '1';
					enable_c2 <= '1';
					habilit_credit <= '0';
					if init_stop = '0' then
						PE <= B2;
					else 
						PE <= S2;
					end if;
					
						when B2 =>
							if init_stop = '1' then
								PE <= S3;
							else 
								PE <= B2;							
							end if;				
					
				when S3 =>
					current_state <= "0011";
					enable_c0 <= '1';
					enable_c1 <= '1';
					enable_c2 <= '0';
					if init_stop = '0' then
						PE <= B3;
					else 
						PE <= S3;
					end if;
					
						when B3 =>
							if init_stop = '1' then
								PE <= S4;
							else 
								PE <= B3;							
							end if;
					
				when S4 =>
					current_state <= "0100";
					enable_c0 <= '1';
					enable_c1 <= '0';
					enable_c2 <= '0';
					if init_stop = '0' then
						PE <= B4;
					else 
						PE <= S4;
					end if;
						
						when B4 =>
							if init_stop = '1' then
								PE <= S5;
							else 
								PE <= B4;							
							end if;				
					
				when S5 =>
					current_state <= "0101";
					enable_c0 <= '0';
					enable_c1 <= '0';
					enable_c2 <= '0';
					if init_stop = '0' then
						PE <= B5;
					else 
						PE <= S5;
					end if;
					
						when B5 =>
							if init_stop = '1' then
								PE <= S6;
							else 
								PE <= B5;							
							end if;					
				
				when S6 =>
					current_state <= "0110";
					if rounds >= "1010" then
						PE <= S0;
					else
						rounds <= rounds + 1;
						habilit_credit <= '1';
						PE <= S2;
					end if;				
			end case;
		end if;	
	end process;
end FSM_beh; 
