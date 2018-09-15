library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity multimodo is 
port (CLOCK_50: in std_logic;
SW: in std_logic_vector(9 downto 0);
KEY: in std_logic_vector (3 downto 0);
LEDR: out std_logic_vector (7 downto 0));
end multimodo;

architecture circuito of multimodo is
signal I, Q, S1, S2: std_logic_vector(7 downto 0);
signal Enable, Reset, w2, w3: std_logic;
--w2 e w3 sa~o sinais usados apenas pra nao dar ruim

component multiplexador is
port (I: in std_logic_vector(7 downto 0);
	  Q: in std_logic_vector(7 downto 0);
	  OPCOES: in std_logic_vector(1 downto 0);
	  SAIDA: out std_logic_vector(7 downto 0)
	  );
end component;

component registrador is
port (Enable: in std_logic;
	  Reset: in std_logic;
      SW: in std_logic_vector(7 downto 0);
      CLOCK_50: in std_logic;
      saida: out std_logic_vector(7 downto 0)
);
end component;

component ButtonSync is
	port
	(
		-- Input ports
		key0	: in  std_logic;
		key1	: in  std_logic;
		key2	: in  std_logic;
		key3	: in  std_logic;	
		clk : in std_logic;
		-- Output ports
	--reset	
		btn0	: out std_logic;
	--enable
		btn1	: out std_logic;
		btn2	: out std_logic;
		btn3	: out std_logic
	);
end component;

begin 
	
	b: ButtonSync port map(KEY(0),KEY(1),KEY(2),KEY(3),CLOCK_50, Reset, Enable, w2, w3);
	m: multiplexador port map(SW(7 downto 0), S2, SW(9 downto 8), S1);
	r: registrador port map(Enable, Reset, S1, CLOCK_50, S2);
	LEDR <= S2;
	
end circuito;	






