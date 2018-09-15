library ieee; 
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity CONTA_ASC is
port (clock: in std_logic;
		RST: in std_logic;
		CONTA_ASCO: out std_logic_vector(19 downto 0)
);
end CONTA_ASC;
architecture FSM_beh of CONTA_ASC is
	signal contadorseg0: std_logic_vector(4 downto 0); --UNIDADES DE SEGUNDO
	signal contadorseg1: std_logic_vector(4 downto 0); -- DEZENAS DE SEGUNDOS
	signal contadormin0: std_logic_vector(4 downto 0); -- UNIDADES DE MINUTOS
	signal contadormin1: std_logic_vector(4 downto 0); -- DEZENAS DE MINUTOS
	
begin

P1: process (clock, RST)
	begin
		--LOGICAS DE CONTAGEM
		if RST = '0' or (contadormin1 = "00101" and contadormin0 = "01001" and contadorseg1 = "00101" and contadorseg0 = "01001") then
			contadorseg0 <= "00000";
			contadorseg1 <= "00000";
			contadormin0 <= "00000";
			contadormin1 <= "00000";
		elsif clock'event and clock = '1' then 	
				if contadormin0 = "01001" and contadorseg1 = "00101" and contadorseg0 = "01001" then -- se está em 9:59 vai para 0
					contadormin1 <= contadormin1 + 1;
					contadormin0 <= "00000";
					contadorseg1 <= "00000";
					contadorseg0 <= "00000";		
				elsif contadorseg1 = "00101" and contadorseg0 = "01001" then -- se chegar a 59 segundos
					contadormin0 <= contadormin0 + 1;
					contadorseg1 <= "00000";
					contadorseg0 <= "00000";
				elsif contadorseg0 = "01001" then -- SE CHEGAR A 9
					contadorseg1 <= contadorseg1 + 1;
					contadorseg0 <= "00000";
				else
					contadorseg0 <= contadorseg0 + 1;
				end if;
		
		end if;
		CONTA_ASCO <= contadormin1 & contadormin0 & contadorseg1 & contadorseg0; -- CONCATENA OS 20 BITS PARA APARECER NO DISPLAY
	end process;
end FSM_beh;