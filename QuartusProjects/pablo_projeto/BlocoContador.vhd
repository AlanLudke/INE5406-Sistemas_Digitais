LIBRARY ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

ENTITY BlocoContador IS -- Bloco que reune a FSM_clock e as contagens
port(
BTN0: in std_logic;		--Definindo as entradas e saidas do bloco
SEL_LED: in std_logic;
SEL_DISP: in std_logic_vector(1 downto 0);
CLOCK_50: in std_logic;
CONTA_ASCO: out std_logic_vector(19 downto 0);
CONTA_DESCO: out std_logic_vector(9 downto 0)
);
end BlocoContador;

ARCHITECTURE estrutura of BlocoContador is
	SIGNAL C1,C2,R,S : std_logic;
	
	component FSM_clock --Declarando componentes do bloco
		port(clock: in std_logic;
		CLK1, CLK2: out std_logic
		);
	end component;
	
	component CONTA_ASC
		port(clock: in std_logic;
		RST: in std_logic;
		CONTA_ASCO: out std_logic_vector(19 downto 0)
		);
	end component;
	
	component CONTA_DESC
		port(clock: in std_logic;
		SEL_LED: in std_logic;
		RST: in std_logic;
		CONTA_DESCO: out std_logic_vector(9 downto 0)
		);
	end component;
	
BEGIN

L0: FSM_clock port map(CLOCK_50, C1, C2); --FSM recebe CLOCK_50 e gera 2 clocks

R <= BTN0 and (SEL_DISP(0) OR SEL_DISP(1)); -- Função de reset usada no conta desc

L1: CONTA_DESC port map(C2, SEL_LED, R, CONTA_DESCO); -- Recebe clock 2 , sel_LED e a função de reset
 
S <= SEL_DISP(0) AND SEL_DISP(1) AND BTN0; -- Função de reset usada na conta ascendente

L2: CONTA_ASC port map(C1, S, CONTA_ASCO); -- Recebe clock 1, a função reset e libera a conta ascendente

END estrutura;