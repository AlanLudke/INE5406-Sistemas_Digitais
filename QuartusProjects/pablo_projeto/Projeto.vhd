library ieee;
use ieee.std_logic_1164.all;

entity Projeto is --BLOCO SUPERIOR, CONTEM BLOCO OPERATIVO ButtonSync E BLOCO DE CONTROLE
port ( 
	SW: in std_logic_vector(9 downto 0);
	KEY: in std_logic_vector(3 downto 0);
	CLOCK_50: in std_logic;
	LEDR : out std_logic_vector (9 downto 0);
	HEX0: out std_logic_vector(6 downto 0);
	HEX1: out std_logic_vector(6 downto 0);
	HEX2: out std_logic_vector(6 downto 0);
	HEX3: out std_logic_vector(6 downto 0);
	HEX4: out std_logic_vector(6 downto 0);
	HEX5: out std_logic_vector(6 downto 0)
);
end Projeto;
architecture topo_stru of Projeto is
signal BTN0: std_logic;
signal BTN1: std_logic;
signal BTN2: std_logic;
signal BTN3: std_logic;
signal SALDO: std_logic;
signal PASS_CERTO, TESTE_PASS: std_logic;
signal ESTADOS: std_logic_vector(4 downto 0);
signal TENTATIVAS: std_logic_vector(1 downto 0);
signal SEL_DISP: std_logic_vector(1 downto 0);
signal C0,C1,C2,C3, SEL_LED : std_logic;


component BlocoOperativo
port (BTN: in std_logic;
		CLOCK_50: in std_logic;
		C0: in std_logic;
		C1: in std_logic;
		C2: in std_logic;
		C3: in std_logic;
		SW: in std_logic_vector(9 downto 0);
		ESTADOS: in std_logic_vector(4 downto 0);
		TENTATIVAS: in std_logic_vector(1 downto 0);
		SEL_DISP: in std_logic_vector(1 downto 0);
		SEL_LED: in std_logic;
		TESTE_PASS: in std_logic;
		PASS_CERTO: out std_logic;
		SALDO: out std_logic;
		LEDR : out std_logic_vector (9 downto 0);
		HEX0: out std_logic_vector(6 downto 0);
		HEX1: out std_logic_vector(6 downto 0);
		HEX2: out std_logic_vector(6 downto 0);
		HEX3: out std_logic_vector(6 downto 0);
		HEX4: out std_logic_vector(6 downto 0);
		HEX5: out std_logic_vector(6 downto 0)
);
end component;

component FSM_Control
port (Enter, Saldo, Pass_Certo, Clock_50, Rst: in std_logic; 
		Estados: out std_logic_vector(4 downto 0);
		TentativaOut: out std_logic_vector (1 downto 0);
		Sel_Disp: out std_logic_vector (1 downto 0);
		Test_Pass, C0, C1, C2, C3, Sel_Led: out std_logic
);
end component;

component ButtonSync
port (key0	: in  std_logic;
		key1	: in  std_logic;
		key2	: in  std_logic;
		key3	: in  std_logic;	
		clk : in std_logic;
		btn0	: out std_logic;
		btn1	: out std_logic;
		btn2	: out std_logic;
		btn3	: out std_logic
);
end component;

--CONEXÕES ENTRE OS BLOCOS
begin

L0: ButtonSync port map (KEY(0), KEY(1), KEY(2), KEY(3), CLOCK_50, BTN0, BTN1, BTN2, BTN3);

L1: FSM_Control port map (BTN3, SALDO, PASS_CERTO, CLOCK_50, BTN0, ESTADOS, TENTATIVAS, SEL_DISP, TESTE_PASS, C0, C1, C2, C3, SEL_LED);

L2: BlocoOperativo port map (BTN0, CLOCK_50, C0, C1, C2, C3, SW(9 downto 0), ESTADOS, TENTATIVAS, SEL_DISP, SEL_LED, TESTE_PASS, PASS_CERTO, SALDO, LEDR, HEX0, HEX1, HEX2, HEX3, HEX4, HEX5);

end topo_stru;