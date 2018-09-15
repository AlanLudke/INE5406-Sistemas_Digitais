library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity CONTROLE is
port( RESET, ena_resto, ena_reg_2, ena_pts: out std_logic;
	KEY1, KEY0, tc, CLOCK_50: in std_logic
);
end CONTROLE;

architecture circuito of CONTROLE is
type STATES is(Init, Setup, Game, Result);
signal estadoAtual, proximoEstado: STATES;

begin 
	process(CLOCK_50, KEY1, KEY0)
		begin
			if(KEY0='0') then
				estadoAtual<=Init;
			elsif(CLOCK_50'event and CLOCK_50 = '1') then
				estadoAtual<=proximoEstado;
			end if;
	end process;
		
	process(estadoAtual)
		begin
			case(estadoAtual) is
				when Init =>
						if(KEY1='0') then
							proximoEstado<=Init;
							RESET<='1';
							ena_resto<='0';
							ena_reg_2<='0';
							ena_pts<='0';
						elsif(KEY1='1') then
							proximoEstado<=Setup;
							RESET<='1';
							ena_resto<='0';
							ena_reg_2<='0';
							ena_pts<='0';
						end if;
				
				when Setup=>
						if(KEY1='0') then
							proximoEstado<=Setup;
							RESET<='0';
							ena_resto<='0';
							ena_reg_2<='1';
							ena_pts<='0';
						elsif(KEY1='1') then
							proximoEstado<=Game;
							RESET<='0';
							ena_resto<='0';
							ena_reg_2<='1';
							ena_pts<='0';
						end if;
				
				when Game=>
						if(tc='0') then
							proximoEstado<=Game;
							RESET<='0';
							ena_resto<='1';
							ena_reg_2<='0';
							ena_pts<='0';
						elsif(tc='1') then 
							proximoEstado<=Result;
							RESET<='0';
							ena_resto<='1';
							ena_reg_2<='0';
							ena_pts<='0';
						end if;
						
				when Result=>
						if(KEY1='1') then
							proximoEstado<=Result;
							RESET<='0';
							ena_resto<='0';
							ena_reg_2<='0';
							ena_pts<='1';
						elsif(tc='0') then 
							proximoEstado<=Init;
							RESET<='0';
							ena_resto<='0';
							ena_reg_2<='0';
							ena_pts<='1';
						end if;
					
				end case;
			end process;
		end circuito;
						