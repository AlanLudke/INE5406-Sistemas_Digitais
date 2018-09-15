library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;


entity Datapath is -- Bloco que reune os blocos que realizam operações
port ( 
	CLOCK_50, RESET, ResetSaidapontos, ENABLE_registradorMuxROMs, ENABLE_registradorComparador, ENABLE_xxx: in std_logic;
	SW: in std_logic_vector(9 downto 0);
	HEX0, HEX1, HEX2, HEX3, HEX4, HEX5: out std_logic_vector(6 downto 0);
	LEDR : out std_logic_vector (9 downto 0);
	tc: out std_logic
);
end Datapath;
architecture topo_stru of Datapath is

signal saida_Contador1, saida_Contador2, C: std_logic_vector(3 downto 0);
signal ENABLE : std_logic;
signal saida_Mux4x1Clock, saida_Comparador, tc_fantasma: std_logic;
signal ROM01, ROM02, ROM03, ROM04: std_logic_vector(7 downto 0);
signal saida_registradorMuxROMs: std_logic_vector (1 downto 0);
signal saida_multiplexadorROM, saida_muxResultado,saida_Pontuacao: std_logic_vector (7 downto 0);
signal usuario, saida_pontos,saidaregistradorpontos: std_logic_vector (7 downto 0);
signal enable_clock_contador: std_logic;
signal tantofaz: std_logic_vector (3 downto 0);

----------------------------------------------
component ContadorClock
port (CLOCK_50: in std_logic;
	  Reset: in std_logic;
	  Enable: in std_logic;
	  C: out std_logic_vector (3 downto 0)
);
end component;

component mux4x1Clock
port (w, x, y, z: in std_logic;
	SW: in std_logic_vector(9 downto 8);
	C: out std_logic
	);
end component;

component decod7segLevel
port (C: in std_logic_vector(3 downto 0);
		F: out std_logic_vector(6 downto 0)
);
end component;
---------------------------------------------
component contador
port(
	RESET: in std_logic;
	ENABLE: in std_logic;
	CLOCK_50: in std_logic;
	saida: out std_logic_vector(3 downto 0);
	tc: out std_logic
);
end component;

component multiplexadorROM
port (selecao: in std_logic_vector(1 downto 0);
	  ROM1: in std_logic_vector (7 downto 0);
	  ROM2: in std_logic_vector (7 downto 0);
	  ROM3: in std_logic_vector (7 downto 0);
	  ROM4: in std_logic_vector (7 downto 0);
	  saida: out std_logic_vector (7 downto 0)
	  );
end component;

component ROM1
  port ( address : in std_logic_vector(3 downto 0);
         data : out std_logic_vector(7 downto 0) 
			);
end component;

component ROM2
  port ( address : in std_logic_vector(3 downto 0);
         data : out std_logic_vector(7 downto 0) 
			);
end component;
component ROM3
  port ( address : in std_logic_vector(3 downto 0);
         data : out std_logic_vector(7 downto 0)
			);
end component;
component ROM4
  port ( address : in std_logic_vector(3 downto 0);
         data : out std_logic_vector(7 downto 0) 
			);
end component;

component registradorMuxROMs
port(
	RESET: in std_logic;
	ENABLE: in std_logic;
	SW: in std_logic_vector(1 downto 0);
	CLOCK_50: in std_logic;
	saida: out std_logic_vector(1 downto 0)
);
end component;

component registradorComparador is
port(
	RESET: in std_logic;
	ENABLE: in std_logic;
	SW: in std_logic_vector(7 downto 0);
	CLOCK_50: in std_logic;
	saida: out std_logic_vector(7 downto 0)
);
end component;

component registradorLED is
port(
	RESET: in std_logic;
	ENABLE: in std_logic;
	pontos: in std_logic_vector(9 downto 0);
	CLOCK_50: in std_logic;
	saida: out std_logic_vector(9 downto 0)
);
end component;

component registradorSaidaPontos
port(
	RESET: in std_logic;
	ENABLE: in std_logic;
	SW: in std_logic_vector(7 downto 0);
	CLOCK_50: in std_logic;
	saida: out std_logic_vector(7 downto 0)
);
end component;
--------------------------------------------------\
component Comparador
port(SaidaMux: in std_logic_vector(7 downto 0);
		SaidaReg: in std_logic_vector(7 downto 0);
		SaidaComparador : out std_logic
		);
end component;

component DecodLED
port (C: in std_logic_vector(3 downto 0);
		F: out std_logic_vector(9 downto 0)
		);
end component;

component decod7seg
port (C: in std_logic_vector(3 downto 0);
		F: out std_logic_vector(6 downto 0)
);
end component;

component multiplexadorResultado
port (SW: in std_logic_vector(9 downto 8);
		EntradaMux: in std_logic_vector(3 downto 0);
		saida: out std_logic_vector (7 downto 0)
	  );
end component;

component mux4x1_8bit
port (w, x, y, z: in std_logic_vector(7 downto 0);
	SW: in std_logic_vector(9 downto 8);
	C: out std_logic_vector(7 downto 0)
	);
end component;



begin

HEX5<= "1000111";


L0: ContadorClock port map (CLOCK_50, RESET, '1', C);  
L1: mux4x1Clock port map (C(0), C(1), C(2), C(3), SW(9 downto 8), saida_Mux4x1Clock);  
L2: decod7segLevel port map ("00" & SW(9 downto 8), HEX4); 
Ltemp: decod7seg port map (saida_multiplexadorROM(7 downto 4), HEX1); 
Ltemp1: decod7seg port map (saida_multiplexadorROM(3 downto 0), HEX0); 

L3: contador port map (RESET, ENABLE_xxx, saida_Mux4x1Clock, saida_Contador1, tc);
 
L4 : ROM1 port map(saida_Contador1, ROM01);
L5 : ROM2 port map(saida_Contador1, ROM02);
L6 : ROM3 port map(saida_Contador1, ROM03);
L7 : ROM4 port map(saida_Contador1, ROM04);

L9: registradorMuxROMs port map (RESET, ENABLE_registradorMuxROMs, SW(1 downto 0),CLOCK_50,  saida_registradorMuxROMs);
L8: multiplexadorROM port map (saida_registradorMuxROMs, ROM01, ROM02, ROM03, ROM04, saida_multiplexadorROM);

-------------------------------------------------------------------------------------------------------------
--L10: decod7seglevel port map(saida_multiplexadorROM(7 downto 4), HEX1);---------------------------------------------------
--L11: decod7seglevel port map(saida_multiplexadorROM(3 downto 0), HEX0);---------------------------------------------------

L12: registradorComparador port map (RESET, '1', SW(7 downto 0), CLOCK_50, usuario);-----------ENABLE_registradorComparador
L13: Comparador port map (saida_multiplexadorROM, usuario, saida_Comparador);
L14: contador port map (RESET, saida_Comparador, saida_Mux4x1Clock, saida_Contador2, tc_fantasma);
L15: DecodLED port map (saida_Contador2, LEDR(9 downto 0));
L16: mux4x1_8bit port map ("000" & saida_Contador2 & '0', "00" & saida_Contador2 & "00", '0' & saida_Contador2 & "000", saida_Contador2 & "0000", SW(9 downto 8), saida_Pontuacao);
L17: registradorComparador port map (RESET, '1', saida_Pontuacao, CLOCK_50, saida_pontos);-----------ENABLE_registradorComparador

L175: registradorSaidaPontos port map (ResetSaidapontos, '1', saida_pontos, CLOCK_50, saidaregistradorpontos);-----------ENABLE_registradorComparador

L18: decod7seg port map(saidaregistradorpontos(7 downto 4), HEX3);
L19: decod7seg port map(saidaregistradorpontos(3 downto 0), HEX2);

--L20: registradorLED port map (RESET, '1', saida_Contador2, CLOCK_50, tantofaz);-----------ENABLE_registradorComparador
--L21: decodLED port map (tantofaz, LEDR(9 downto 0));-----------ENABLE_registradorComparador


end topo_stru;