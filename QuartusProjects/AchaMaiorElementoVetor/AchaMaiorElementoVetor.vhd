library ieee;
use ieee.std_logic_1164.all;

entity AchaMaiorElementoVetor is
	generic(TAM: natural := 10);
	port (
		clk, reset: in std_logic;
		terminou: out std_logic
	);
end entity;

architecture oioioi of AchaMaiorElementoVetor is
	component BlocoControle is
		port (
			clk, reset: in std_logic;
			-- entradas de status do bloco operativo
			iLessTam, maxLessValue: in std_logic;
			-- saidas de controle para o bloco operativo
			loadI, loadMaxV, loadMaxA: out std_logic;
			-- saida de controle para informar que terminou
			terminou: out std_logic
		);
	end component;

	component BlocoOperativo is
		port (
			clk, reset: in std_logic;
			-- saidas de status do bloco operativo
			iLessTam, maxLessValue: out std_logic;
			-- entradas de controle do bloco ode controle
			loadI, loadMaxV, loadMaxA: out std_logic
		);
	end component;
	
signal iLessTam, maxLessValue: std_logic;
signal loadI, loadMaxV, loadMaxA: std_logic;

begin

BC: BlocoControle port map(
			clk, reset,
			iLessTam, maxLessValue,
			loadI, loadMaxV, loadMaxA,
			terminou
		);

BO: BlocoOperativo port map(clk, reset,
			iLessTam, maxLessValue,
			loadI, loadMaxV, loadMaxA
		);
		
end architecture;










