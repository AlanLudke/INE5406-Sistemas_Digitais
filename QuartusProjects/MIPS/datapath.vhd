LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity datapath is
	generic (DATA_S : integer := 32; INSTRUCT_S : integer:= 26; ADDR_S : integer := 5);
	port 
	(
		--debug signals to check in testbench
		dbg_mux_wAddr : out std_logic_vector(ADDR_S-1 downto 0);
		dbg_mux_wData3, dbg_mux2ula, dbg_ula_result, dbg_reg1, dbg_reg2, dbg_signal_extender : out std_logic_vector(DATA_S-1 downto 0);
		dbg_zero : out std_logic;
		dbg_reg_addr1, dbg_reg_addr2 : out std_logic_vector(ADDR_S-1 downto 0);
		dbg_ula_OpFunct : out std_logic_vector(7 downto 0);
		--project signals
		clk, rst: in std_logic;
		i_instruction : in std_logic_vector(INSTRUCT_S-1 downto 0);
		i_control : in std_logic_vector(5 downto 0);-- 8 [sel_DVI(7), sel_DVC(6), sel_wAddr(5),  sel_wData3(4), sel_mux2ula(3), regfile_we(2), ula_op(1 downto 0) ] 0
		i_dataMem : in std_logic_vector(DATA_S-1 downto 0);
		o_pc : out integer range 0 to 255;
		o_ula_result : out std_logic_vector(DATA_S-1 downto 0);
		o_rReg1 : out std_logic_vector(DATA_S-1 downto 0)
	);
end datapath;

architecture behavior of datapath is
component pc_counter is
	generic(MIN_COUNT : natural := 0; MAX_COUNT : natural := 255);
	port
	(
		clk		  : in std_logic;
		reset	  : in std_logic;
		enable	  : in std_logic;
		q		  : out integer range MIN_COUNT to MAX_COUNT
	);
end component;

component reg_file is
generic (DATA_S : integer := 32; N_REGS: integer := 32; ADDR_S: integer := 5);--ADDR_S = log2(N_REGS)
	port (
		clk : in std_logic;
		i_we3 : in std_logic;
		i_rAddr1, i_rAddr2, i_wAddr3 : std_logic_vector(ADDR_S-1 downto 0);
		i_wData3 : in std_logic_vector  (DATA_S-1 DOWNTO 0);
		o_rReg1, o_rReg2 : out std_logic_vector (DATA_S-1 DOWNTO 0)
	);
end component;

component mux2x1 is
	generic (N : integer := 32);
	port 
	(
		a		: in std_logic_vector  (N-1 downto 0);
		b		: in std_logic_vector  (N-1 downto 0);
		sel   : in std_logic;
		s	   : out std_logic_vector (N-1 downto 0)
	);
end component;

component ula_wrapper is
	generic (DATA_S : integer := 32);
	port 
	(
		a		: in std_logic_vector  (DATA_S-1 downto 0);
		b		: in std_logic_vector  (DATA_S-1 downto 0);
		ulaop : in std_logic_vector  (1 downto 0);
		funct	: in std_logic_vector  (5 downto 0);
		result	   : out std_logic_vector (DATA_S-1 downto 0);
		zero	   : out std_logic
	);
end component;

component signal_extender is
	generic(N_IN : integer := 16; N_OUT : integer := 32);
	port 
	(
		in_value : in std_logic_vector(N_IN-1 downto 0);
		out_value : out std_logic_vector(N_OUT-1 downto 0)
	);
end component;

begin

end behavior;