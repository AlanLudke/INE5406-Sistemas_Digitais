LIBRARY ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

ENTITY BlocoRegistrador IS -- BLOCO QUE ARMAZENA AS SAIDAS DO MUX 4:1
port(BTN : in std_logic;
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
end BlocoRegistrador;
ARCHITECTURE estrutura of BlocoRegistrador is
	signal S3,S2,S1,S0: std_logic_vector(4 downto 0);
	
	
	component registradores -- COMPONENTE GENERICO DE REGISTRADOR
		generic (N: natural := 20);
		port(clk	:in std_logic;
		reset	:in std_logic;
		enable: in std_logic;
		reg:in std_logic_vector((N-1)downto 0);
		seq:out std_logic_vector((N-1)downto 0)
		);
	end component;
	
BEGIN
	--SÃO INSTANCIADOS 4 REGISTRADORES DE 5 BITS QUE RECEBEM 5 BITS DE REG
	
	L0: registradores generic map (5) port map(Clock, BTN, C3, REG(19 downto 15), S3);
		
	L1: registradores generic map (5) port map(Clock, BTN, C2, REG(14 downto 10), S2);	
	
	L2: registradores generic map (5) port map(Clock, BTN, C1, REG(9 downto 5), S1);
	
	L3: registradores generic map (5) port map(Clock, BTN, C0, REG(4 downto 0), S0);
	
	Seq_3 <= s3;
	Seq_2 <= s2;
	Seq_1 <= s1;
	Seq_0 <= s0;
	
	
END estrutura;