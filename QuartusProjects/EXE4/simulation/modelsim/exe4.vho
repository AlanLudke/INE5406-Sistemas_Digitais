-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Web Edition"

-- DATE "11/09/2017 12:12:55"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	multimodo IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END multimodo;

-- Design Ports Information
-- KEY[2]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF multimodo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \m|Add0~1_sumout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \m|Add0~2\ : std_logic;
SIGNAL \m|Add0~5_sumout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \m|Add0~6\ : std_logic;
SIGNAL \m|Add0~9_sumout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \m|Add0~10\ : std_logic;
SIGNAL \m|Add0~14\ : std_logic;
SIGNAL \m|Add0~18\ : std_logic;
SIGNAL \m|Add0~22\ : std_logic;
SIGNAL \m|Add0~26\ : std_logic;
SIGNAL \m|Add0~29_sumout\ : std_logic;
SIGNAL \m|SAIDA[7]~7_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \b|btn0state.EsperaApertar~0_combout\ : std_logic;
SIGNAL \b|btn0state.EsperaApertar~q\ : std_logic;
SIGNAL \b|btn0next.SaidaAtiva~0_combout\ : std_logic;
SIGNAL \b|btn0state.SaidaAtiva~q\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \b|btn1state.EsperaApertar~0_combout\ : std_logic;
SIGNAL \b|btn1state.EsperaApertar~q\ : std_logic;
SIGNAL \b|btn1next.SaidaAtiva~0_combout\ : std_logic;
SIGNAL \b|btn1state.SaidaAtiva~q\ : std_logic;
SIGNAL \m|Add0~25_sumout\ : std_logic;
SIGNAL \m|SAIDA[6]~6_combout\ : std_logic;
SIGNAL \m|Add0~21_sumout\ : std_logic;
SIGNAL \m|SAIDA[5]~5_combout\ : std_logic;
SIGNAL \m|Add0~17_sumout\ : std_logic;
SIGNAL \m|SAIDA[4]~4_combout\ : std_logic;
SIGNAL \m|Add0~13_sumout\ : std_logic;
SIGNAL \m|SAIDA[3]~3_combout\ : std_logic;
SIGNAL \m|SAIDA[2]~2_combout\ : std_logic;
SIGNAL \m|SAIDA[1]~1_combout\ : std_logic;
SIGNAL \m|SAIDA[0]~0_combout\ : std_logic;
SIGNAL \r|saida\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \b|ALT_INV_btn1state.EsperaApertar~q\ : std_logic;
SIGNAL \b|ALT_INV_btn0state.EsperaApertar~q\ : std_logic;
SIGNAL \b|ALT_INV_btn0state.SaidaAtiva~q\ : std_logic;
SIGNAL \r|ALT_INV_saida\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \m|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \m|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \m|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \m|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \m|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \m|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \m|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \m|ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\b|ALT_INV_btn1state.EsperaApertar~q\ <= NOT \b|btn1state.EsperaApertar~q\;
\b|ALT_INV_btn0state.EsperaApertar~q\ <= NOT \b|btn0state.EsperaApertar~q\;
\b|ALT_INV_btn0state.SaidaAtiva~q\ <= NOT \b|btn0state.SaidaAtiva~q\;
\r|ALT_INV_saida\(7) <= NOT \r|saida\(7);
\r|ALT_INV_saida\(6) <= NOT \r|saida\(6);
\r|ALT_INV_saida\(5) <= NOT \r|saida\(5);
\r|ALT_INV_saida\(4) <= NOT \r|saida\(4);
\r|ALT_INV_saida\(3) <= NOT \r|saida\(3);
\r|ALT_INV_saida\(2) <= NOT \r|saida\(2);
\r|ALT_INV_saida\(1) <= NOT \r|saida\(1);
\r|ALT_INV_saida\(0) <= NOT \r|saida\(0);
\m|ALT_INV_Add0~29_sumout\ <= NOT \m|Add0~29_sumout\;
\m|ALT_INV_Add0~25_sumout\ <= NOT \m|Add0~25_sumout\;
\m|ALT_INV_Add0~21_sumout\ <= NOT \m|Add0~21_sumout\;
\m|ALT_INV_Add0~17_sumout\ <= NOT \m|Add0~17_sumout\;
\m|ALT_INV_Add0~13_sumout\ <= NOT \m|Add0~13_sumout\;
\m|ALT_INV_Add0~9_sumout\ <= NOT \m|Add0~9_sumout\;
\m|ALT_INV_Add0~5_sumout\ <= NOT \m|Add0~5_sumout\;
\m|ALT_INV_Add0~1_sumout\ <= NOT \m|Add0~1_sumout\;

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \r|saida\(0),
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X52_Y0_N19
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \r|saida\(1),
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X60_Y0_N2
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \r|saida\(2),
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X80_Y0_N2
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \r|saida\(3),
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X60_Y0_N19
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \r|saida\(4),
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X80_Y0_N19
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \r|saida\(5),
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X84_Y0_N2
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \r|saida\(6),
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X89_Y6_N5
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \r|saida\(7),
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOIBUF_X32_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G6
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: IOIBUF_X2_Y0_N58
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LABCELL_X22_Y1_N0
\m|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \m|Add0~1_sumout\ = SUM(( \r|saida\(0) ) + ( \SW[0]~input_o\ ) + ( !VCC ))
-- \m|Add0~2\ = CARRY(( \r|saida\(0) ) + ( \SW[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datad => \r|ALT_INV_saida\(0),
	cin => GND,
	sumout => \m|Add0~1_sumout\,
	cout => \m|Add0~2\);

-- Location: IOIBUF_X16_Y0_N1
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LABCELL_X22_Y1_N3
\m|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \m|Add0~5_sumout\ = SUM(( \r|saida\(1) ) + ( \SW[1]~input_o\ ) + ( \m|Add0~2\ ))
-- \m|Add0~6\ = CARRY(( \r|saida\(1) ) + ( \SW[1]~input_o\ ) + ( \m|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \r|ALT_INV_saida\(1),
	cin => \m|Add0~2\,
	sumout => \m|Add0~5_sumout\,
	cout => \m|Add0~6\);

-- Location: IOIBUF_X8_Y0_N35
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LABCELL_X22_Y1_N6
\m|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \m|Add0~9_sumout\ = SUM(( \r|saida\(2) ) + ( \SW[2]~input_o\ ) + ( \m|Add0~6\ ))
-- \m|Add0~10\ = CARRY(( \r|saida\(2) ) + ( \SW[2]~input_o\ ) + ( \m|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[2]~input_o\,
	datad => \r|ALT_INV_saida\(2),
	cin => \m|Add0~6\,
	sumout => \m|Add0~9_sumout\,
	cout => \m|Add0~10\);

-- Location: IOIBUF_X4_Y0_N52
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X4_Y0_N1
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: LABCELL_X22_Y1_N9
\m|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \m|Add0~13_sumout\ = SUM(( \r|saida\(3) ) + ( \SW[3]~input_o\ ) + ( \m|Add0~10\ ))
-- \m|Add0~14\ = CARRY(( \r|saida\(3) ) + ( \SW[3]~input_o\ ) + ( \m|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[3]~input_o\,
	datad => \r|ALT_INV_saida\(3),
	cin => \m|Add0~10\,
	sumout => \m|Add0~13_sumout\,
	cout => \m|Add0~14\);

-- Location: LABCELL_X22_Y1_N12
\m|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \m|Add0~17_sumout\ = SUM(( \r|saida\(4) ) + ( \SW[4]~input_o\ ) + ( \m|Add0~14\ ))
-- \m|Add0~18\ = CARRY(( \r|saida\(4) ) + ( \SW[4]~input_o\ ) + ( \m|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[4]~input_o\,
	datac => \r|ALT_INV_saida\(4),
	cin => \m|Add0~14\,
	sumout => \m|Add0~17_sumout\,
	cout => \m|Add0~18\);

-- Location: LABCELL_X22_Y1_N15
\m|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \m|Add0~21_sumout\ = SUM(( \r|saida\(5) ) + ( \SW[5]~input_o\ ) + ( \m|Add0~18\ ))
-- \m|Add0~22\ = CARRY(( \r|saida\(5) ) + ( \SW[5]~input_o\ ) + ( \m|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[5]~input_o\,
	datad => \r|ALT_INV_saida\(5),
	cin => \m|Add0~18\,
	sumout => \m|Add0~21_sumout\,
	cout => \m|Add0~22\);

-- Location: LABCELL_X22_Y1_N18
\m|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \m|Add0~25_sumout\ = SUM(( \SW[6]~input_o\ ) + ( \r|saida\(6) ) + ( \m|Add0~22\ ))
-- \m|Add0~26\ = CARRY(( \SW[6]~input_o\ ) + ( \r|saida\(6) ) + ( \m|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \r|ALT_INV_saida\(6),
	datad => \ALT_INV_SW[6]~input_o\,
	cin => \m|Add0~22\,
	sumout => \m|Add0~25_sumout\,
	cout => \m|Add0~26\);

-- Location: LABCELL_X22_Y1_N21
\m|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \m|Add0~29_sumout\ = SUM(( \r|saida\(7) ) + ( \SW[7]~input_o\ ) + ( \m|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datac => \r|ALT_INV_saida\(7),
	cin => \m|Add0~26\,
	sumout => \m|Add0~29_sumout\);

-- Location: LABCELL_X22_Y1_N57
\m|SAIDA[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \m|SAIDA[7]~7_combout\ = ( \m|Add0~29_sumout\ & ( (!\SW[9]~input_o\ & ((!\SW[8]~input_o\) # ((\SW[7]~input_o\)))) # (\SW[9]~input_o\ & (\SW[8]~input_o\ & (\r|saida\(6)))) ) ) # ( !\m|Add0~29_sumout\ & ( (\SW[8]~input_o\ & ((!\SW[9]~input_o\ & 
-- ((\SW[7]~input_o\))) # (\SW[9]~input_o\ & (\r|saida\(6))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001110001001101010111000100110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \ALT_INV_SW[8]~input_o\,
	datac => \r|ALT_INV_saida\(6),
	datad => \ALT_INV_SW[7]~input_o\,
	dataf => \m|ALT_INV_Add0~29_sumout\,
	combout => \m|SAIDA[7]~7_combout\);

-- Location: IOIBUF_X36_Y0_N1
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LABCELL_X22_Y1_N27
\b|btn0state.EsperaApertar~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b|btn0state.EsperaApertar~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	combout => \b|btn0state.EsperaApertar~0_combout\);

-- Location: FF_X22_Y1_N28
\b|btn0state.EsperaApertar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b|btn0state.EsperaApertar~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b|btn0state.EsperaApertar~q\);

-- Location: LABCELL_X22_Y1_N24
\b|btn0next.SaidaAtiva~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b|btn0next.SaidaAtiva~0_combout\ = ( !\b|btn0state.EsperaApertar~q\ & ( !\KEY[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	dataf => \b|ALT_INV_btn0state.EsperaApertar~q\,
	combout => \b|btn0next.SaidaAtiva~0_combout\);

-- Location: FF_X22_Y1_N26
\b|btn0state.SaidaAtiva\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b|btn0next.SaidaAtiva~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b|btn0state.SaidaAtiva~q\);

-- Location: IOIBUF_X36_Y0_N18
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LABCELL_X23_Y1_N15
\b|btn1state.EsperaApertar~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b|btn1state.EsperaApertar~0_combout\ = !\KEY[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	combout => \b|btn1state.EsperaApertar~0_combout\);

-- Location: FF_X23_Y1_N16
\b|btn1state.EsperaApertar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b|btn1state.EsperaApertar~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b|btn1state.EsperaApertar~q\);

-- Location: LABCELL_X23_Y1_N12
\b|btn1next.SaidaAtiva~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \b|btn1next.SaidaAtiva~0_combout\ = ( !\b|btn1state.EsperaApertar~q\ & ( !\KEY[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	dataf => \b|ALT_INV_btn1state.EsperaApertar~q\,
	combout => \b|btn1next.SaidaAtiva~0_combout\);

-- Location: FF_X23_Y1_N14
\b|btn1state.SaidaAtiva\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \b|btn1next.SaidaAtiva~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b|btn1state.SaidaAtiva~q\);

-- Location: FF_X22_Y1_N59
\r|saida[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \m|SAIDA[7]~7_combout\,
	clrn => \b|ALT_INV_btn0state.SaidaAtiva~q\,
	ena => \b|btn1state.SaidaAtiva~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|saida\(7));

-- Location: LABCELL_X22_Y1_N42
\m|SAIDA[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \m|SAIDA[6]~6_combout\ = ( \r|saida\(5) & ( \m|Add0~25_sumout\ & ( (!\SW[8]~input_o\ & (((!\SW[9]~input_o\) # (\r|saida\(7))))) # (\SW[8]~input_o\ & (((\SW[9]~input_o\)) # (\SW[6]~input_o\))) ) ) ) # ( !\r|saida\(5) & ( \m|Add0~25_sumout\ & ( 
-- (!\SW[8]~input_o\ & (((!\SW[9]~input_o\) # (\r|saida\(7))))) # (\SW[8]~input_o\ & (\SW[6]~input_o\ & (!\SW[9]~input_o\))) ) ) ) # ( \r|saida\(5) & ( !\m|Add0~25_sumout\ & ( (!\SW[8]~input_o\ & (((\SW[9]~input_o\ & \r|saida\(7))))) # (\SW[8]~input_o\ & 
-- (((\SW[9]~input_o\)) # (\SW[6]~input_o\))) ) ) ) # ( !\r|saida\(5) & ( !\m|Add0~25_sumout\ & ( (!\SW[8]~input_o\ & (((\SW[9]~input_o\ & \r|saida\(7))))) # (\SW[8]~input_o\ & (\SW[6]~input_o\ & (!\SW[9]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011010000101010001111110110000101110101011010110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[8]~input_o\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \r|ALT_INV_saida\(7),
	datae => \r|ALT_INV_saida\(5),
	dataf => \m|ALT_INV_Add0~25_sumout\,
	combout => \m|SAIDA[6]~6_combout\);

-- Location: FF_X22_Y1_N44
\r|saida[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \m|SAIDA[6]~6_combout\,
	clrn => \b|ALT_INV_btn0state.SaidaAtiva~q\,
	ena => \b|btn1state.SaidaAtiva~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|saida\(6));

-- Location: LABCELL_X22_Y1_N36
\m|SAIDA[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \m|SAIDA[5]~5_combout\ = ( \SW[9]~input_o\ & ( \m|Add0~21_sumout\ & ( (!\SW[8]~input_o\ & ((\r|saida\(6)))) # (\SW[8]~input_o\ & (\r|saida\(4))) ) ) ) # ( !\SW[9]~input_o\ & ( \m|Add0~21_sumout\ & ( (!\SW[8]~input_o\) # (\SW[5]~input_o\) ) ) ) # ( 
-- \SW[9]~input_o\ & ( !\m|Add0~21_sumout\ & ( (!\SW[8]~input_o\ & ((\r|saida\(6)))) # (\SW[8]~input_o\ & (\r|saida\(4))) ) ) ) # ( !\SW[9]~input_o\ & ( !\m|Add0~21_sumout\ & ( (\SW[8]~input_o\ & \SW[5]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000001011010111110111011101110110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[8]~input_o\,
	datab => \ALT_INV_SW[5]~input_o\,
	datac => \r|ALT_INV_saida\(4),
	datad => \r|ALT_INV_saida\(6),
	datae => \ALT_INV_SW[9]~input_o\,
	dataf => \m|ALT_INV_Add0~21_sumout\,
	combout => \m|SAIDA[5]~5_combout\);

-- Location: FF_X22_Y1_N38
\r|saida[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \m|SAIDA[5]~5_combout\,
	clrn => \b|ALT_INV_btn0state.SaidaAtiva~q\,
	ena => \b|btn1state.SaidaAtiva~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|saida\(5));

-- Location: LABCELL_X22_Y1_N48
\m|SAIDA[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \m|SAIDA[4]~4_combout\ = ( \r|saida\(5) & ( \m|Add0~17_sumout\ & ( (!\SW[8]~input_o\) # ((!\SW[9]~input_o\ & (\SW[4]~input_o\)) # (\SW[9]~input_o\ & ((\r|saida\(3))))) ) ) ) # ( !\r|saida\(5) & ( \m|Add0~17_sumout\ & ( (!\SW[8]~input_o\ & 
-- (!\SW[9]~input_o\)) # (\SW[8]~input_o\ & ((!\SW[9]~input_o\ & (\SW[4]~input_o\)) # (\SW[9]~input_o\ & ((\r|saida\(3)))))) ) ) ) # ( \r|saida\(5) & ( !\m|Add0~17_sumout\ & ( (!\SW[8]~input_o\ & (\SW[9]~input_o\)) # (\SW[8]~input_o\ & ((!\SW[9]~input_o\ & 
-- (\SW[4]~input_o\)) # (\SW[9]~input_o\ & ((\r|saida\(3)))))) ) ) ) # ( !\r|saida\(5) & ( !\m|Add0~17_sumout\ & ( (\SW[8]~input_o\ & ((!\SW[9]~input_o\ & (\SW[4]~input_o\)) # (\SW[9]~input_o\ & ((\r|saida\(3)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000010101001001100011011110001100100111011010111010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[8]~input_o\,
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \ALT_INV_SW[4]~input_o\,
	datad => \r|ALT_INV_saida\(3),
	datae => \r|ALT_INV_saida\(5),
	dataf => \m|ALT_INV_Add0~17_sumout\,
	combout => \m|SAIDA[4]~4_combout\);

-- Location: FF_X22_Y1_N50
\r|saida[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \m|SAIDA[4]~4_combout\,
	clrn => \b|ALT_INV_btn0state.SaidaAtiva~q\,
	ena => \b|btn1state.SaidaAtiva~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|saida\(4));

-- Location: LABCELL_X23_Y1_N48
\m|SAIDA[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \m|SAIDA[3]~3_combout\ = ( \r|saida\(4) & ( \m|Add0~13_sumout\ & ( (!\SW[8]~input_o\) # ((!\SW[9]~input_o\ & (\SW[3]~input_o\)) # (\SW[9]~input_o\ & ((\r|saida\(2))))) ) ) ) # ( !\r|saida\(4) & ( \m|Add0~13_sumout\ & ( (!\SW[9]~input_o\ & 
-- (((!\SW[8]~input_o\)) # (\SW[3]~input_o\))) # (\SW[9]~input_o\ & (((\SW[8]~input_o\ & \r|saida\(2))))) ) ) ) # ( \r|saida\(4) & ( !\m|Add0~13_sumout\ & ( (!\SW[9]~input_o\ & (\SW[3]~input_o\ & (\SW[8]~input_o\))) # (\SW[9]~input_o\ & (((!\SW[8]~input_o\) 
-- # (\r|saida\(2))))) ) ) ) # ( !\r|saida\(4) & ( !\m|Add0~13_sumout\ & ( (\SW[8]~input_o\ & ((!\SW[9]~input_o\ & (\SW[3]~input_o\)) # (\SW[9]~input_o\ & ((\r|saida\(2)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000111010100100101011110100010101001111111001011110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \ALT_INV_SW[3]~input_o\,
	datac => \ALT_INV_SW[8]~input_o\,
	datad => \r|ALT_INV_saida\(2),
	datae => \r|ALT_INV_saida\(4),
	dataf => \m|ALT_INV_Add0~13_sumout\,
	combout => \m|SAIDA[3]~3_combout\);

-- Location: FF_X23_Y1_N50
\r|saida[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \m|SAIDA[3]~3_combout\,
	clrn => \b|ALT_INV_btn0state.SaidaAtiva~q\,
	ena => \b|btn1state.SaidaAtiva~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|saida\(3));

-- Location: LABCELL_X23_Y1_N6
\m|SAIDA[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \m|SAIDA[2]~2_combout\ = ( \m|Add0~9_sumout\ & ( \r|saida\(3) & ( (!\SW[8]~input_o\) # ((!\SW[9]~input_o\ & (\SW[2]~input_o\)) # (\SW[9]~input_o\ & ((\r|saida\(1))))) ) ) ) # ( !\m|Add0~9_sumout\ & ( \r|saida\(3) & ( (!\SW[8]~input_o\ & 
-- (((\SW[9]~input_o\)))) # (\SW[8]~input_o\ & ((!\SW[9]~input_o\ & (\SW[2]~input_o\)) # (\SW[9]~input_o\ & ((\r|saida\(1)))))) ) ) ) # ( \m|Add0~9_sumout\ & ( !\r|saida\(3) & ( (!\SW[8]~input_o\ & (((!\SW[9]~input_o\)))) # (\SW[8]~input_o\ & 
-- ((!\SW[9]~input_o\ & (\SW[2]~input_o\)) # (\SW[9]~input_o\ & ((\r|saida\(1)))))) ) ) ) # ( !\m|Add0~9_sumout\ & ( !\r|saida\(3) & ( (\SW[8]~input_o\ & ((!\SW[9]~input_o\ & (\SW[2]~input_o\)) # (\SW[9]~input_o\ & ((\r|saida\(1)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101101100001011010100011010000111111011101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[8]~input_o\,
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \r|ALT_INV_saida\(1),
	datae => \m|ALT_INV_Add0~9_sumout\,
	dataf => \r|ALT_INV_saida\(3),
	combout => \m|SAIDA[2]~2_combout\);

-- Location: FF_X23_Y1_N8
\r|saida[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \m|SAIDA[2]~2_combout\,
	clrn => \b|ALT_INV_btn0state.SaidaAtiva~q\,
	ena => \b|btn1state.SaidaAtiva~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|saida\(2));

-- Location: LABCELL_X22_Y1_N30
\m|SAIDA[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \m|SAIDA[1]~1_combout\ = ( \r|saida\(0) & ( \r|saida\(2) & ( ((!\SW[8]~input_o\ & (\m|Add0~5_sumout\)) # (\SW[8]~input_o\ & ((\SW[1]~input_o\)))) # (\SW[9]~input_o\) ) ) ) # ( !\r|saida\(0) & ( \r|saida\(2) & ( (!\SW[8]~input_o\ & (((\m|Add0~5_sumout\)) # 
-- (\SW[9]~input_o\))) # (\SW[8]~input_o\ & (!\SW[9]~input_o\ & ((\SW[1]~input_o\)))) ) ) ) # ( \r|saida\(0) & ( !\r|saida\(2) & ( (!\SW[8]~input_o\ & (!\SW[9]~input_o\ & (\m|Add0~5_sumout\))) # (\SW[8]~input_o\ & (((\SW[1]~input_o\)) # (\SW[9]~input_o\))) ) 
-- ) ) # ( !\r|saida\(0) & ( !\r|saida\(2) & ( (!\SW[9]~input_o\ & ((!\SW[8]~input_o\ & (\m|Add0~5_sumout\)) # (\SW[8]~input_o\ & ((\SW[1]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000110010101110100101010011011100011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[8]~input_o\,
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \m|ALT_INV_Add0~5_sumout\,
	datad => \ALT_INV_SW[1]~input_o\,
	datae => \r|ALT_INV_saida\(0),
	dataf => \r|ALT_INV_saida\(2),
	combout => \m|SAIDA[1]~1_combout\);

-- Location: FF_X22_Y1_N32
\r|saida[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \m|SAIDA[1]~1_combout\,
	clrn => \b|ALT_INV_btn0state.SaidaAtiva~q\,
	ena => \b|btn1state.SaidaAtiva~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|saida\(1));

-- Location: LABCELL_X22_Y1_N54
\m|SAIDA[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \m|SAIDA[0]~0_combout\ = ( \r|saida\(1) & ( (!\SW[9]~input_o\ & ((!\SW[8]~input_o\ & ((\m|Add0~1_sumout\))) # (\SW[8]~input_o\ & (\SW[0]~input_o\)))) # (\SW[9]~input_o\ & (!\SW[8]~input_o\)) ) ) # ( !\r|saida\(1) & ( (!\SW[9]~input_o\ & ((!\SW[8]~input_o\ 
-- & ((\m|Add0~1_sumout\))) # (\SW[8]~input_o\ & (\SW[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001000110110011100100011011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \ALT_INV_SW[8]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \m|ALT_INV_Add0~1_sumout\,
	dataf => \r|ALT_INV_saida\(1),
	combout => \m|SAIDA[0]~0_combout\);

-- Location: FF_X22_Y1_N56
\r|saida[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \m|SAIDA[0]~0_combout\,
	clrn => \b|ALT_INV_btn0state.SaidaAtiva~q\,
	ena => \b|btn1state.SaidaAtiva~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \r|saida\(0));

-- Location: IOIBUF_X40_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X40_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: MLABCELL_X34_Y8_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


