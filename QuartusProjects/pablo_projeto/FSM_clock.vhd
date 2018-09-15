library ieee; 
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity FSM_clock is
port (clock: in std_logic;
		CLK1, CLK2: out std_logic
);
end FSM_clock;
architecture FSM_beh of FSM_clock is
	signal contador: std_logic_vector(27 downto 0):= x"0000000";
	signal contador2: std_logic_vector(27 downto 0) := x"0000000";
	
begin

P1: process (clock)
	begin
		if clock'event and clock = '1' then
			contador <= contador + 1;
			if contador = x"2FAF07F" then	 -- SE CONTAGEM = 50 MILHOES	
				contador <= x"0000000"; -- ZERA
				CLK1 <= '1'; -- DÁ UM PULSO DE CLOCK
			else 
				CLK1 <= '0';
			end if;
		end if;
	end process;
P2: process (clock)
	begin
		if clock'event and clock = '1' then
			contador2 <= contador2 + 1;
			if contador2 = x"17D783F" then -- SE CONTAGEM = 25 MILHOES
				contador2 <= x"0000000"; -- ZERA
				CLK2 <= '1'; -- DÁ UM PULSO DE CLOCK
			else
				CLK2 <= '0';
			end if;
		end if;
	end process;
end FSM_beh;