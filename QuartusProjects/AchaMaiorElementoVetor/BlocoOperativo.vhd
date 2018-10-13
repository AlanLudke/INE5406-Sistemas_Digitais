library ieee;
use ieee.std_logic_1164.all;

entity BlocoOperativo is
	port (
	clk, reset: in std_logic;
	-- saidas de status do bloco operativo
	iLessTam, maxLessValue: out std_logic;
	-- entradas de controle do bloco ode controle
	loadI, loadMaxV, loadMaxA: out std_logic
	);
end entity;

architecture estrutural of BlocoControle is
component RAM
	PORT
	(
		address		: IN STD_LOGIC_VECTOR (14 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		data		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		wren		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
end component;
	-- ...
	
	-- registrador
	
	-- comparador menor
	
	-- incrementador
	
	-- sinais internos
begin
	RAM_inst : RAM PORT MAP (
		address	 => address_sig,
		clock	 => clock_sig,
		data	 => data_sig,
		wren	 => wren_sig,
		q	 => q_sig
	);

	-- ...
end architecture;