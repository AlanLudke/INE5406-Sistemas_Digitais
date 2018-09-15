library ieee;
use ieee.std_logic_1164.all; 

entity ButtonSync is
	port
	(
		-- Input ports
		key0	: in  std_logic;
		key1	: in  std_logic;
		key2	: in  std_logic;
		key3	: in  std_logic;	
		clk : in std_logic;
		-- Output ports
		btn0	: out std_logic;
		btn1	: out std_logic;
		btn2	: out std_logic;
		btn3	: out std_logic
	);
end ButtonSync;


architecture ButtonSyncImpl of ButtonSync is
type STATES is (EsperaApertar, SaidaAtiva, EsperaSoltar);
signal btn0state, btn1state, btn2state, btn3state : STATES := EsperaApertar;
signal btn0next, btn1next, btn2next, btn3next : STATES := EsperaApertar;
begin

	process (clk) 
	begin
		if clk'event and clk = '1' then -- Resposta na transicao positiva do clock
			btn0state <= btn0next;			
			btn1state <= btn1next;
			btn2state <= btn2next;
			btn3state <= btn3next;
		end if;
	end process;
	
	process (key0,btn0state)
	begin
		case btn0state is
			when EsperaApertar =>
				if key0 = '0' then btn0next <= SaidaAtiva; else btn0next <= EsperaApertar; end if;
				btn0 <= '1';
			when SaidaAtiva =>
				if key0 = '0' then btn0next <= EsperaSoltar; else btn0next <= EsperaApertar; end if;	
				btn0 <= '0';
			when EsperaSoltar =>
				if key0 = '0' then btn0next <= EsperaSoltar;	else btn0next <= EsperaApertar; end if;	
				btn0 <= '1';
		end case;		
	end process;
	
	process (key1,btn1state)
	begin
		case btn1state is
			when EsperaApertar =>
				if key1 = '0' then btn1next <= SaidaAtiva; else btn1next <= EsperaApertar; end if;
				btn1 <= '1';
			when SaidaAtiva =>
				if key1 = '0' then btn1next <= EsperaSoltar; else btn1next <= EsperaApertar; end if;	
				btn1 <= '0';
			when EsperaSoltar =>
				if key1 = '0' then btn1next <= EsperaSoltar;	else btn1next <= EsperaApertar; end if;	
				btn1 <= '1';
		end case;		
	end process;
	end ButtonSyncImpl;