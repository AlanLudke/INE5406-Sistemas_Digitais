LIBRARY ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

ENTITY BlocoComparar IS -- junção dos componentes que comparam
port(Teste_pass: in std_logic;
		seq_3 : in std_logic_vector(4 downto 0);
		seq_2 : in std_logic_vector(4 downto 0);
		seq_1 : in std_logic_vector(4 downto 0);
		seq_0 : in std_logic_vector(4 downto 0);
		conta_desc: in std_logic_vector(9 downto 0);
		Saldo, Pass_Certo : out std_logic
		);
end BlocoComparar;
ARCHITECTURE estrutura of BlocoComparar is
	signal F1: std_logic;
	
	component ComparadorPassword 
	port(seq_3 : in std_logic_vector(4 downto 0);
	seq_2 : in std_logic_vector(4 downto 0);
	seq_1 : in std_logic_vector(4 downto 0);
	seq_0 : in std_logic_vector(4 downto 0);
	igual : out std_logic);
	end Component;

	component ComparadorSaldo 
	port(conta_desc : in std_logic_vector(9 downto 0);
			Saldo: out std_logic);
	end Component;
	
BEGIN
	L0: ComparadorPassword port map(seq_3,seq_2,seq_1,seq_0, F1); --compara a senha com o padrão
		
	L1: ComparadorSaldo port map(conta_desc, Saldo);	-- compara se conta_desc é igual a 0, e mostra em saldo
	
	Pass_Certo <= F1 AND Teste_pass; -- porta AND da saida do comparador com a variavel teste_pass vinda da FSM
END estrutura;	
	