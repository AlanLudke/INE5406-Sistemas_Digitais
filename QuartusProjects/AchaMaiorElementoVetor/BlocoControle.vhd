library ieee;
use ieee.std_logic_1164.all;

entity BlocoControle is
	port (
	clk, reset: in std_logic;
	-- entradas de status do bloco operativo
	iLessTam, maxLessValue: in std_logic;
	-- saidas de controle para o bloco operativo
	loadI, loadMaxV, loadMaxA: out std_logic;
	-- saida de controle para informar que terminou
	terminou: out std_logic
	);
end entity;

architecture FSM of BlocoControle is
	type fsmEstado is (ini, testaFor, LeMem, testaIf, bodyif, incI, depoisDoFor);
	signal estadoAtual, proximoEstado: fsmEstado;
begin
	-- next-state
	process(estadoAtual, iLessTam, maxLessValue) is
	begin
		proximoEstado <= estadoAtual;
		case estadoAtual is
			when ini =>
				proximoEstado <= testaFor;
			when testaFor =>
				if ILessThen = '1' then
					proximoEstado <= LeMem;
				else
					proximoEstado <= depoisDoFor;
				end if;
			when LeMem =>
				proximoEstado <= testaIf;
			when testaIf =>
				if maxLessValue then 
					proximoEstado <= bodyIf;
				else
					proximoEstado  <= incI;
				end if;
			when bodyif =>
				proximoEstado <= incI;
			when incI =>
				proximoEstado  <= testaFor;
			when depoisDoFor =>
				-- fica aqui para sempre
		end case;
	end process;
	
	-- memory element
	process (clk, reset) is
	begin
		if reset='1' then
			estadoAtual <= ini;
		elsif rising_edge(clk) then
			estadoAtual <= proximoEstado;
		end if;
	end process;
	
	-- output-logic
	loadI <= '1' when estadoAtual=incI else '0';
	loadMaxV <= '1' when estadoAtual=bodyIf else '0';
	loadMaxA <= '1' when estadoAtual=bodyIf else '0';
	terminou <= '1' when estadoAtual=depoisDoFor else '0';
end architecture;