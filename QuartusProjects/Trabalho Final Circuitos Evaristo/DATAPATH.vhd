library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity DATAPATH is 
port(
CLOCK_50, RESET, E_reg_2, E_re_p, E_resto: in std_logic;
SW: in std_logic_vector(9 downto 0);
HEX0, HEX1, HEX2, HEX3, HEX4, HEX5: out std_logic_vector(6 downto 0);
LED: out std_logic_vector(9 downto 0);
tc: out std_logic
);
end DATAPATH;

------------------------------------------------

architecture circuito of DATAPATH is

signal saida_DIV_FREQ, saida_C1, saida_C2: std_logic_vector(3 downto 0);
signal saida_MUX_D, saida_COMP, tc_fantasma: std_logic;
signal saida_ROM1 ,saida_ROM2 ,saida_ROM3 ,saida_ROM4: std_logic_vector(7 downto 0);
signal saida_reg_2: std_logic_vector (1 downto 0);
signal saida_MUX_r, saida_MUX_p: std_logic_vector (7 downto 0);
signal usuario, saida_pontos: std_logic_vector (7 downto 0);


------------------------------------------------
component DIV_FREQ is 
port ( CLOCK_50: in std_logic;
	  Reset: in std_logic;
	  C: out std_logic_vector (3 downto 0)
	  );
end component;

component DECOD_LVL is
port ( trem: in std_logic_vector(3 downto 0);
navio: out std_logic_vector(6 downto 0)
);
end component;

component MUX_DIV is
port ( selecao: in std_logic_vector(1 downto 0);
	  C: in std_logic_vector (3 downto 0);
	  saida: out std_logic
	  );
end component;

------------------------------------------------
component CONT is
port( RESET: in std_logic;
ENABLE: in std_logic;
CLOCK_50: in std_logic;
saida: out std_logic_vector(3 downto 0);
tc: out std_logic
);
end component;

component MUX_8 is
port ( selecao: in std_logic_vector(1 downto 0);
	  ROM1: in std_logic_vector (7 downto 0);
	  ROM2: in std_logic_vector (7 downto 0);
	  ROM3: in std_logic_vector (7 downto 0);
	  ROM4: in std_logic_vector (7 downto 0);
	  saida: out std_logic_vector (7 downto 0)
	  );
end component;

component ROM1 is
  port ( address : in std_logic_vector(3 downto 0);
         data : out std_logic_vector(7 downto 0) 
			);
end component;

component ROM2 is
  port ( address : in std_logic_vector(3 downto 0);
         data : out std_logic_vector(7 downto 0) 
			);
end component;

component ROM3 is
  port ( address : in std_logic_vector(3 downto 0);
         data : out std_logic_vector(7 downto 0)
			);
end component;

component ROM4 is
  port ( address : in std_logic_vector(3 downto 0);
         data : out std_logic_vector(7 downto 0) 
			);
end component;


component REG_2 is
port( RESET: in std_logic;
ENABLE: in std_logic;
SW: in std_logic_vector(1 downto 0);
CLOCK_50: in std_logic;
saida: out std_logic_vector(1 downto 0)
);
end component;

------------------------------------------------
component REG_8 is
port(
RESET: in std_logic;
ENABLE: in std_logic;
SW: in std_logic_vector(7 downto 0);
CLOCK_50: in std_logic;
saida: out std_logic_vector(7 downto 0)
);
end component;

component COMP is
port(
saidaMUX: in std_logic_vector(7 downto 0);
jogador: in std_logic_vector(7 downto 0);
saida: out std_logic
);
end component;

component DECOD_LED is
port (trem: in std_logic_vector(3 downto 0);
navio: out std_logic_vector(9 downto 0)
);
end component;

component DECOD is
port (trem: in std_logic_vector(3 downto 0);
navio: out std_logic_vector(6 downto 0)
);
end component;

component MUX_P is
port (selecao: in std_logic_vector(1 downto 0);
	  D1: in std_logic_vector (7 downto 0);
	  D2: in std_logic_vector (7 downto 0);
	  D3: in std_logic_vector (7 downto 0);
	  D4: in std_logic_vector (7 downto 0);
	  saida: out std_logic_vector (7 downto 0)
	  );
end component;



------------------------------------------------


begin

div: DIV_FREQ port map(CLOCK_50, RESET, saida_DIV_FREQ);
mux_d: MUX_DIV port map(SW(9 downto 8), saida_DIV_FREQ, saida_MUX_D);
HEX5<= "1000111";
decod_l: DECOD_LVL port map("00" & SW(9 downto 8), HEX4);

c1: CONT port map(RESET, E_resto, saida_MUX_D, saida_C1, tc);
r1 : ROM1 port map(saida_C1, saida_ROM1);
r2 : ROM2 port map(saida_C1, saida_ROM2);
r3 : ROM3 port map(saida_C1, saida_ROM3);
r4 : ROM4 port map(saida_C1, saida_ROM4);


re_2: REG_2 port map(RESET, e_reg_2, SW(1 downto 0), CLOCk_50, saida_reg_2);
mux_r: MUX_8 port map(saida_reg_2, saida_ROM1, saida_ROM2, saida_ROM3, saida_ROM4, saida_MUX_r);


decod_hex1: DECOD port map(saida_MUX_r(7 downto 4), HEX1);
decod_hex0: DECOD port map(saida_MUX_r(3 downto 0), HEX0);
re_u: REG_8 port map(RESET, E_resto, SW(7 downto 0), CLOCk_50, usuario);
com: COMP port map(saida_MUX_r, usuario, saida_COMP);

c2: CONT port map(RESET, saida_COMP, saida_MUX_D, saida_C2, tc_fantasma);
decod_leds: DECOD_LED port map(saida_c2, LED(9 downto 0));
mux_pts: MUX_P port map(SW(9 downto 8), "000" & saida_c2 & '0', "00" & saida_c2 & "00", '0' & saida_c2 & "000", saida_c2 & "0000", saida_MUX_p);
re_p: REG_8 port map(RESET, E_re_p, saida_MUX_p, CLOCK_50, saida_pontos);
decod_hex3: DECOD port map(saida_pontos(7 downto 4), HEX3);
decod_hex2: DECOD port map(saida_pontos(3 downto 0), HEX2);



------------------------------------------------


end circuito;
