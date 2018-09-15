library ieee;
use ieee.std_logic_1164.all;

entity BlocoOperativo is -- Bloco que reune os blocos que realizam operações
port ( 
	BTN: in std_logic; --DEFINIÇÃO DE TODAS AS ENTRADAS E SAIDAS DO BLOCO
	CLOCK_50: in std_logic;
	C0: in std_logic;
	C1: in std_logic;
	C2: in std_logic;
	C3: in std_logic;
	SW: in std_logic_vector(9 downto 0 );
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
end BlocoOperativo;
architecture topo_stru of BlocoOperativo is

signal Agenda: std_logic_vector(19 downto 0); --SIGNALS NECESSARIOS PARA CONEXAO ENTRE OS BLOCOS INTERNAMENTE
signal ContaAsc: std_logic_vector(19 downto 0);
signal ContaDesc:std_logic_vector(9 downto 0);
signal Reg: std_logic_vector(19 downto 0);
signal seq0: std_logic_vector (4 downto 0);
signal seq1: std_logic_vector (4 downto 0);
signal seq2: std_logic_vector (4 downto 0);
signal seq3: std_logic_vector (4 downto 0);

component BlocoSeletor
port (SW: in std_logic_vector(9 downto 0 );
		TENTATIVAS: in std_logic_vector(1 downto 0);
		AGENDA: in std_logic_vector(19 downto 0);
		CONTA_ASC: in std_logic_vector(19 downto 0);
		CONTA_DESC: in std_logic_vector(9 downto 0);
		SEL_DISP: in std_logic_vector(1 downto 0);
		SEL_LED: in std_logic;
		REG: out std_logic_vector(19 downto 0);
		LEDR : out std_logic_vector (9 downto 0)
);
end component;

component BlocoRegistrador
port (BTN : in std_logic;
		C0: in std_logic;
		C1: in std_logic;
		C2: in std_logic;
		C3: in std_logic;
		Clock: in std_logic;
		REG: in std_logic_vector (19 downto 0);	
		Seq_0 : out std_logic_vector(4 downto 0);
		Seq_1 : out std_logic_vector(4 downto 0);
		Seq_2 : out std_logic_vector(4 downto 0);
		Seq_3 : out std_logic_vector(4 downto 0)
);
end component;

component BlocoContador
port (BTN0: in std_logic;
		SEL_LED: in std_logic;
		SEL_DISP: in std_logic_vector(1 downto 0);
		CLOCK_50: in std_logic;
		CONTA_ASCO: out std_logic_vector(19 downto 0);
		CONTA_DESCO: out std_logic_vector(9 downto 0)
);
end component;

component BlocoComparar
port (Teste_pass: in std_logic;
		seq_3 : in std_logic_vector(4 downto 0);
		seq_2 : in std_logic_vector(4 downto 0);
		seq_1 : in std_logic_vector(4 downto 0);
		seq_0 : in std_logic_vector(4 downto 0);
		conta_desc: in std_logic_vector(9 downto 0);
		Saldo, Pass_Certo : out std_logic
);
end component;

component ROM
port (endereco: in std_logic_vector(3 downto 0);
		dado: out std_logic_vector(19 downto 0)
);
end component;

component Decod7seg
port (C: in std_logic_vector(4 downto 0);
		F: out std_logic_vector(6 downto 0)
);
end component;
begin
-- DEFINIÇÃO DE TODAS AS CONEXOES ENTRE OS BLOCOS ASSIM COMO SUAS SAIDAS
L0: BlocoSeletor port map (SW(9 downto 0), TENTATIVAS, Agenda, ContaAsc, ContaDesc, SEL_DISP, SEL_LED, Reg, LEDR); 

L1: ROM port map (SW(3 downto 0), Agenda);

L2: BlocoComparar port map (TESTE_PASS, seq3, seq2, seq1, seq0, ContaDesc, SALDO, PASS_CERTO);

L3: BlocoContador port map (BTN, SEL_LED, SEL_DISP, CLOCK_50, ContaAsc, ContaDesc);

L4: BlocoRegistrador port map (BTN, C0, C1, C2, C3, CLOCK_50, Reg, seq0, seq1, seq2, seq3);

L5: Decod7seg port map (ESTADOS, HEX4); -- FORAM CRIADOS 5 DECODIFICADORES 7 SEG PARA OS 5 DISPLAYS

L6: Decod7seg port map (seq3, HEX3);

L7: Decod7seg port map (seq2, HEX2);
 
L8: Decod7seg port map (seq1, HEX1);

L9: Decod7seg port map (seq0, HEX0);

HEX5 <= "0000110"; -- FAZ APARECER "E" NO HEX5

end topo_stru;