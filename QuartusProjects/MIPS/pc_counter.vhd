library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pc_counter is
	generic
	(
		MIN_COUNT	: natural := 0;
		MAX_COUNT	: natural := 255
	);

	port
	(
		clk	: in std_logic;
		reset	: in std_logic;
		enable	: in std_logic;
		q	: out integer range MIN_COUNT to MAX_COUNT
	);

end entity;

architecture rtl of pc_counter is
begin

end rtl;
