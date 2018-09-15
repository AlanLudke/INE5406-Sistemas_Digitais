library ieee;
use ieee.std_logic_1164.all;
entity BlocoSeletor is -- REUNE TODOS OS MUX E CODIFICADORES
port ( --DEFINIÇÃO DAS ENTRADAS E SAIDAS DO BLOCO
SW: in std_logic_vector(9 downto 0 );
TENTATIVAS: in std_logic_vector(1 downto 0);
AGENDA: in std_logic_vector(19 downto 0);
CONTA_ASC: in std_logic_vector(19 downto 0);
CONTA_DESC: in std_logic_vector(9 downto 0);
SEL_DISP: in std_logic_vector(1 downto 0);
SEL_LED: in std_logic;
REG: out std_logic_vector(19 downto 0);
LEDR : out std_logic_vector (9 downto 0)
);
end BlocoSeletor;
architecture topo_stru of BlocoSeletor is
--DEFINIÇÃO DOS SINAIS PARA CONEXÃO ENTRE BLOCOS E CONCATENAÇÕES
signal IN_PASS: std_logic_vector(4 downto 0);
signal concatenado: std_logic_vector(9 downto 0);
signal concatenado2: std_logic_vector(19 downto 0);
signal LED_OUT: std_logic_vector(9 downto 0);

component mux4x1
port (w, x, y, z:
		in std_logic_vector(19 downto 0);
		s: in std_logic_vector(1 downto 0);
		m: out std_logic_vector(19 downto 0)
);
end component;

component mux2x1
port (w, x:
		in std_logic_vector(9 downto 0);
		s: in std_logic;
		m: out std_logic_vector(9 downto 0)
);
end component;

component decod
port (C : in std_logic_vector(9 downto 0);
		F : out std_logic_vector(4 downto 0)
);
end component;

begin

L0: decod port map (SW(9 downto 0), IN_PASS); --DECOD QUE RECEBE 10 BITS E CONVERTE EM 5

concatenado <= "00000000" & TENTATIVAS; --CONCATENAÇÃO DE TENTATIVAS PARA CHEGAR A 10 BITS

L1: mux2x1 port map (CONTA_DESC, concatenado, SEL_LED, LED_OUT); -- RECEBE A CONTA DESCENDENTE E TENTATIVAS

LEDR <= LED_OUT; 

concatenado2 <= IN_PASS & IN_PASS & IN_PASS & IN_PASS; -- CONCATENA OS 5 BITS DO DECOD 4 VEZES

L2: mux4x1 port map ("11111111111111111111", concatenado2, AGENDA, CONTA_ASC, SEL_DISP, REG); -- ENTRADAS E SAIDAS DO MUX 4:1
 
end topo_stru;