library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity Jogo is 
port(KEY1, KEY0, KEY2, KEY3, CLOCK_50: in std_logic;
SW: in std_logic_vector(9 downto 0);
HEX0, HEX1, HEX2, HEX3, HEX4, HEX5: out std_logic_vector(6 downto 0);
LEDR: out std_logic_vector(9 downto 0)
);
end Jogo;

architecture circuito of jogo is
signal reset, e_resto, e_reg_2, e_pts, aux_tc: std_logic;
signal bt0 ,bt1, bt2, bt3: std_logic;

component CONTROLE is
port( RESET, ena_resto, ena_reg_2, ena_pts: out std_logic;
	KEY1, KEY0, tc, CLOCK_50: in std_logic
);
end component;

component DATAPATH is 
port(
CLOCK_50, RESET, E_reg_2, E_re_p, E_resto: in std_logic;
SW: in std_logic_vector(9 downto 0);
HEX0, HEX1, HEX2, HEX3, HEX4, HEX5: out std_logic_vector(6 downto 0);
LED: out std_logic_vector(9 downto 0);
tc: out std_logic
);
end component;

component ButtonSync is
	port
	(
		KEY0, KEY1, KEY2, KEY3, CLK: in std_logic;
		BTN0, BTN1, BTN2, BTN3: out std_logic
	);
end component;

begin
bs: ButtonSync port map(KEY0, KEY1, KEY2, KEY3, CLOCK_50, bt0, bt1, bt2, bt3);
c: CONTROLE port map (reset, e_resto, e_reg_2, e_pts, bt1, bt0, aux_tc, CLOCK_50);
d: DATAPATH port map (CLOCK_50, reset, e_reg_2, e_pts, e_resto, SW, HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, LEDR, aux_tc);

end circuito;