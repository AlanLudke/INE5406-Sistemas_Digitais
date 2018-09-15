library ieee;
use ieee.std_logic_1164.all;

entity Jogo is
port ( 
	SW: in std_logic_vector(9 downto 0);
	KEY: in std_logic_vector(3 downto 0);
	CLOCK_50: in std_logic;
	HEX0, HEX1, HEX2, HEX3, HEX4, HEX5: out std_logic_vector(6 downto 0);
	LEDR : out std_logic_vector (9 downto 0)
);

end Jogo;
architecture topo_stru of Jogo is
signal reset, ENABLE_xxx, ENABLE_registradorMuxROMs, ENABLE_registradorComparador, aux_tc, ResetSaidapontos: std_logic;
signal btn0, btn1, btn2, btn3: std_logic;

component CONTROLE
port( RESET, ena_resto, ena_reg_2, ena_pts,ResetSaidapontos: out std_logic;
	Enter, Zera, tc, CLOCK_50: in std_logic
);
end component;

component Datapath
port(
	CLOCK_50, RESET, ResetSaidapontos, ENABLE_registradorMuxROMs, ENABLE_registradorComparador, ENABLE_xxx: in std_logic;
	SW: in std_logic_vector(9 downto 0);
	HEX0, HEX1, HEX2, HEX3, HEX4, HEX5: out std_logic_vector(6 downto 0);
	LEDR : out std_logic_vector (9 downto 0);
	tc: out std_logic
);
end component;

component ButtonSync
	port
	(
		KEY0, KEY1, KEY2, KEY3, CLK: in std_logic;
		BTN0, BTN1, BTN2, BTN3: out std_logic
	);
end component;

--CONEXÕES ENTRE OS BLOCOS
begin

L0: ButtonSync port map(KEY(0), KEY(1), KEY(2), KEY(3), CLOCK_50, btn0, btn1, btn2, btn3);
L1: CONTROLE port map (reset, ENABLE_xxx, ENABLE_registradorMuxROMs, ENABLE_registradorComparador,ResetSaidapontos, btn1, btn0, aux_tc, CLOCK_50);
L2: Datapath port map (CLOCK_50, reset, ResetSaidapontos, ENABLE_registradorMuxROMs, ENABLE_registradorComparador, ENABLE_xxx, SW(9 downto 0), HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, LEDR, aux_tc);

end topo_stru;