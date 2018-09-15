library IEEE;
use IEEE.Std_Logic_1164.all;

entity registradores is
	generic (N: natural := 20); --REGISTRADOR GENERICO COMO APRENDIDO EM SALA DE AULA
	port ( 	clk	:in std_logic;
				reset	:in std_logic;
				enable: in std_logic;
				reg:in std_logic_vector((N-1)downto 0);
				seq:out std_logic_vector((N-1)downto 0)
			);
end entity;
architecture registrador of registradores is
signal sr: std_logic_vector ((N - 1) downto 0);
begin
	process(clk,reset)
	begin
		if(reset = '0')then -- RESET ASSINCRONO
			sr <= (others => '0');
		elsif(rising_edge(clk)) then -- SUBIDA DE CLOCK
			if(enable = '1') then --ENABLE ATIVADO
				sr <= reg; -- ARMAZENA
			end if;
		end if;
	end process;
	seq <= sr; -- SAIDA É O QUE ESTÁ NO SINAL
end registrador;