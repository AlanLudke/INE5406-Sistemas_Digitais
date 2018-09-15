library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;
--ena_resto=ENABLE_xxx
--ena_reg_2=ENABLE_registradorMuxROMs
--ena_pts=ENABLE_registradorComparador
--KEY1=enter
--KEY0=reset
entity CONTROLE is
port( RESET, ena_resto, ena_reg_2, ena_pts, ResetSaidapontos: out std_logic;
		Enter, Zera, tc, CLOCK_50: in std_logic
);
end CONTROLE;

architecture circuito of CONTROLE is
type STATES is(Init, Setup, Game, Result);
signal estadoAtual, proximoEstado: STATES;

begin
	process(CLOCK_50, Zera)
		begin
			if(Zera='0') then
				estadoAtual<=Init;
			elsif(CLOCK_50'event and CLOCK_50 = '1') then
				estadoAtual<=proximoEstado;
			end if;
	end process;

	process(estadoAtual, Enter, tc)
		begin
			case(estadoAtual) is
				when Init =>
						if(Enter='1') then
							proximoEstado<=Init;
						elsif(Enter='0') then
							proximoEstado<=Setup; -- QUANDO ENTER = 0
						end if;
							RESET<='1';
							ena_resto<='0';
							ena_reg_2<='0';
							ena_pts<='0';
							ResetSaidapontos <= '1';
				
				when Setup =>
						if(Enter='1') then
							proximoEstado<=Setup;
						elsif(Enter='0') then
							proximoEstado<=Game; -- QUANDO ENTER = 0
						end if;
							RESET<='0';
							ena_resto<='0';
							ena_reg_2<='1';
							ena_pts<='0';
							ResetSaidapontos <= '1';
				when Game=>
						if(tc='0') then
							proximoEstado<=Game;
						elsif(tc='1') then
							proximoEstado<=Result; -- QUANDO ENTER = 0
						end if;
							RESET<='0';
							ena_resto<='1';
							ena_reg_2<='0';
							ena_pts<='0';
							ResetSaidapontos <= '1';
					
				when Result=>
						if(Enter='1') then
							proximoEstado<=Result;
						elsif(Enter='0') then
							proximoEstado<=Init; -- QUANDO ENTER = 0
						end if;
							RESET<='0';
							ena_resto<='0';
							ena_reg_2<='0';
							ena_pts<='1';
							ResetSaidapontos <= '0';
							
				end case;
			end process;
		end circuito;