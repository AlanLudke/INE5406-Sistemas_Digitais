library ieee;
use ieee.std_logic_1164.all;

entity MinhaRAM is
	PORT
	(
		address_sig		: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
		clock_sig		: IN STD_LOGIC  := '1';
		data_sig		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		wren_sig		: IN STD_LOGIC ;
		q_sig		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
end entity;

architecture instanciaRAMdaAltera of MinhaRAM is
component niceRAM
	PORT
	(
		address		: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		data		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		wren		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
end component;
begin

niceRAM_inst : niceRAM PORT MAP (
		address	 => address_sig,
		clock	 => clock_sig,
		data	 => data_sig,
		wren	 => wren_sig,
		q	 => q_sig
	);
end architecture;