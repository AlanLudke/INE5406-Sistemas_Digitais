-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Lite Edition"

-- DATE "05/10/2018 10:57:22"

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

ENTITY 	PortaoGaragem IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	SA : IN std_logic;
	SF : IN std_logic;
	SO : IN std_logic;
	CR : IN std_logic;
	output : OUT std_logic_vector(1 DOWNTO 0)
	);
END PortaoGaragem;

-- Design Ports Information
-- output[0]	=>  Location: PIN_AG1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_AG7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CR	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SF	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SO	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SA	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PortaoGaragem IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_SA : std_logic;
SIGNAL ww_SF : std_logic;
SIGNAL ww_SO : std_logic;
SIGNAL ww_CR : std_logic;
SIGNAL ww_output : std_logic_vector(1 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \CR~input_o\ : std_logic;
SIGNAL \SF~input_o\ : std_logic;
SIGNAL \SO~input_o\ : std_logic;
SIGNAL \SA~input_o\ : std_logic;
SIGNAL \process_0~5_combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \comb~4_combout\ : std_logic;
SIGNAL \next_state.ABERTO_135~combout\ : std_logic;
SIGNAL \state.ABERTO~0_combout\ : std_logic;
SIGNAL \state.ABERTO~q\ : std_logic;
SIGNAL \next_state.FECHANDO~0_combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \next_state.FECHANDO_102~combout\ : std_logic;
SIGNAL \state.FECHANDO~0_combout\ : std_logic;
SIGNAL \state.FECHANDO~q\ : std_logic;
SIGNAL \next_state.ABERTO~0_combout\ : std_logic;
SIGNAL \comb~5_combout\ : std_logic;
SIGNAL \comb~6_combout\ : std_logic;
SIGNAL \next_state.FECHADO_113~combout\ : std_logic;
SIGNAL \state.FECHADO~0_combout\ : std_logic;
SIGNAL \state.FECHADO~q\ : std_logic;
SIGNAL \process_0~4_combout\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \next_state.ABRINDO_124~combout\ : std_logic;
SIGNAL \state.ABRINDO~0_combout\ : std_logic;
SIGNAL \state.ABRINDO~q\ : std_logic;
SIGNAL \ALT_INV_SA~input_o\ : std_logic;
SIGNAL \ALT_INV_SO~input_o\ : std_logic;
SIGNAL \ALT_INV_SF~input_o\ : std_logic;
SIGNAL \ALT_INV_CR~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_next_state.FECHADO_113~combout\ : std_logic;
SIGNAL \ALT_INV_next_state.ABERTO_135~combout\ : std_logic;
SIGNAL \ALT_INV_next_state.FECHANDO_102~combout\ : std_logic;
SIGNAL \ALT_INV_next_state.ABRINDO_124~combout\ : std_logic;
SIGNAL \ALT_INV_comb~6_combout\ : std_logic;
SIGNAL \ALT_INV_comb~5_combout\ : std_logic;
SIGNAL \ALT_INV_comb~4_combout\ : std_logic;
SIGNAL \ALT_INV_comb~3_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~5_combout\ : std_logic;
SIGNAL \ALT_INV_comb~2_combout\ : std_logic;
SIGNAL \ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~4_combout\ : std_logic;
SIGNAL \ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \ALT_INV_next_state.FECHANDO~0_combout\ : std_logic;
SIGNAL \ALT_INV_next_state.ABERTO~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.FECHADO~q\ : std_logic;
SIGNAL \ALT_INV_state.ABERTO~q\ : std_logic;
SIGNAL \ALT_INV_state.FECHANDO~q\ : std_logic;
SIGNAL \ALT_INV_state.ABRINDO~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_SA <= SA;
ww_SF <= SF;
ww_SO <= SO;
ww_CR <= CR;
output <= ww_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_SA~input_o\ <= NOT \SA~input_o\;
\ALT_INV_SO~input_o\ <= NOT \SO~input_o\;
\ALT_INV_SF~input_o\ <= NOT \SF~input_o\;
\ALT_INV_CR~input_o\ <= NOT \CR~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_next_state.FECHADO_113~combout\ <= NOT \next_state.FECHADO_113~combout\;
\ALT_INV_next_state.ABERTO_135~combout\ <= NOT \next_state.ABERTO_135~combout\;
\ALT_INV_next_state.FECHANDO_102~combout\ <= NOT \next_state.FECHANDO_102~combout\;
\ALT_INV_next_state.ABRINDO_124~combout\ <= NOT \next_state.ABRINDO_124~combout\;
\ALT_INV_comb~6_combout\ <= NOT \comb~6_combout\;
\ALT_INV_comb~5_combout\ <= NOT \comb~5_combout\;
\ALT_INV_comb~4_combout\ <= NOT \comb~4_combout\;
\ALT_INV_comb~3_combout\ <= NOT \comb~3_combout\;
\ALT_INV_process_0~5_combout\ <= NOT \process_0~5_combout\;
\ALT_INV_comb~2_combout\ <= NOT \comb~2_combout\;
\ALT_INV_comb~1_combout\ <= NOT \comb~1_combout\;
\ALT_INV_process_0~4_combout\ <= NOT \process_0~4_combout\;
\ALT_INV_comb~0_combout\ <= NOT \comb~0_combout\;
\ALT_INV_next_state.FECHANDO~0_combout\ <= NOT \next_state.FECHANDO~0_combout\;
\ALT_INV_next_state.ABERTO~0_combout\ <= NOT \next_state.ABERTO~0_combout\;
\ALT_INV_state.FECHADO~q\ <= NOT \state.FECHADO~q\;
\ALT_INV_state.ABERTO~q\ <= NOT \state.ABERTO~q\;
\ALT_INV_state.FECHANDO~q\ <= NOT \state.FECHANDO~q\;
\ALT_INV_state.ABRINDO~q\ <= NOT \state.ABRINDO~q\;

-- Location: IOOBUF_X10_Y0_N42
\output[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \state.ABRINDO~q\,
	devoe => ww_devoe,
	o => ww_output(0));

-- Location: IOOBUF_X10_Y0_N93
\output[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \state.FECHANDO~q\,
	devoe => ww_devoe,
	o => ww_output(1));

-- Location: IOIBUF_X89_Y23_N21
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G11
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X12_Y0_N18
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X12_Y0_N1
\CR~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CR,
	o => \CR~input_o\);

-- Location: IOIBUF_X10_Y0_N58
\SF~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SF,
	o => \SF~input_o\);

-- Location: IOIBUF_X12_Y0_N35
\SO~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SO,
	o => \SO~input_o\);

-- Location: IOIBUF_X12_Y0_N52
\SA~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SA,
	o => \SA~input_o\);

-- Location: LABCELL_X12_Y1_N42
\process_0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~5_combout\ = ( \state.ABRINDO~q\ & ( \SA~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SA~input_o\,
	dataf => \ALT_INV_state.ABRINDO~q\,
	combout => \process_0~5_combout\);

-- Location: LABCELL_X12_Y1_N48
\comb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = ( \state.ABERTO~q\ & ( \state.FECHANDO~q\ & ( (!\SO~input_o\ & (((!\process_0~5_combout\ & \CR~input_o\)) # (\next_state.ABERTO~0_combout\))) ) ) ) # ( !\state.ABERTO~q\ & ( \state.FECHANDO~q\ & ( (!\SO~input_o\ & 
-- \next_state.ABERTO~0_combout\) ) ) ) # ( \state.ABERTO~q\ & ( !\state.FECHANDO~q\ & ( ((!\process_0~5_combout\ & \CR~input_o\)) # (\next_state.ABERTO~0_combout\) ) ) ) # ( !\state.ABERTO~q\ & ( !\state.FECHANDO~q\ & ( \next_state.ABERTO~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011111100111100001010000010100000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SO~input_o\,
	datab => \ALT_INV_process_0~5_combout\,
	datac => \ALT_INV_next_state.ABERTO~0_combout\,
	datad => \ALT_INV_CR~input_o\,
	datae => \ALT_INV_state.ABERTO~q\,
	dataf => \ALT_INV_state.FECHANDO~q\,
	combout => \comb~3_combout\);

-- Location: LABCELL_X12_Y1_N57
\comb~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~4_combout\ = ( \state.FECHANDO~q\ & ( ((!\next_state.ABERTO~0_combout\ & \process_0~5_combout\)) # (\SO~input_o\) ) ) # ( !\state.FECHANDO~q\ & ( (!\next_state.ABERTO~0_combout\ & \process_0~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010111111110000101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_next_state.ABERTO~0_combout\,
	datac => \ALT_INV_process_0~5_combout\,
	datad => \ALT_INV_SO~input_o\,
	dataf => \ALT_INV_state.FECHANDO~q\,
	combout => \comb~4_combout\);

-- Location: LABCELL_X12_Y1_N39
\next_state.ABERTO_135\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state.ABERTO_135~combout\ = ( \next_state.ABERTO_135~combout\ & ( !\comb~3_combout\ ) ) # ( !\next_state.ABERTO_135~combout\ & ( (!\comb~3_combout\ & \comb~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~3_combout\,
	datac => \ALT_INV_comb~4_combout\,
	dataf => \ALT_INV_next_state.ABERTO_135~combout\,
	combout => \next_state.ABERTO_135~combout\);

-- Location: LABCELL_X12_Y1_N36
\state.ABERTO~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.ABERTO~0_combout\ = (\next_state.ABERTO_135~combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_next_state.ABERTO_135~combout\,
	datac => \ALT_INV_reset~input_o\,
	combout => \state.ABERTO~0_combout\);

-- Location: FF_X12_Y1_N38
\state.ABERTO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \state.ABERTO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ABERTO~q\);

-- Location: LABCELL_X12_Y1_N24
\next_state.FECHANDO~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state.FECHANDO~0_combout\ = ( \SA~input_o\ & ( ((\state.FECHANDO~q\ & \SO~input_o\)) # (\state.ABRINDO~q\) ) ) # ( !\SA~input_o\ & ( (\state.FECHANDO~q\ & \SO~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100001111001111110000111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state.FECHANDO~q\,
	datac => \ALT_INV_state.ABRINDO~q\,
	datad => \ALT_INV_SO~input_o\,
	dataf => \ALT_INV_SA~input_o\,
	combout => \next_state.FECHANDO~0_combout\);

-- Location: LABCELL_X12_Y1_N3
\comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = ( !\next_state.FECHANDO~0_combout\ & ( (\CR~input_o\ & (!\next_state.ABERTO~0_combout\ & \state.ABERTO~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_CR~input_o\,
	datac => \ALT_INV_next_state.ABERTO~0_combout\,
	datad => \ALT_INV_state.ABERTO~q\,
	dataf => \ALT_INV_next_state.FECHANDO~0_combout\,
	combout => \comb~2_combout\);

-- Location: LABCELL_X12_Y1_N27
\comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = ( \next_state.ABERTO~0_combout\ ) # ( !\next_state.ABERTO~0_combout\ & ( \next_state.FECHANDO~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_next_state.FECHANDO~0_combout\,
	dataf => \ALT_INV_next_state.ABERTO~0_combout\,
	combout => \comb~1_combout\);

-- Location: LABCELL_X12_Y1_N12
\next_state.FECHANDO_102\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state.FECHANDO_102~combout\ = ( \next_state.FECHANDO_102~combout\ & ( !\comb~1_combout\ ) ) # ( !\next_state.FECHANDO_102~combout\ & ( (\comb~2_combout\ & !\comb~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_comb~2_combout\,
	datad => \ALT_INV_comb~1_combout\,
	dataf => \ALT_INV_next_state.FECHANDO_102~combout\,
	combout => \next_state.FECHANDO_102~combout\);

-- Location: LABCELL_X12_Y1_N30
\state.FECHANDO~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.FECHANDO~0_combout\ = ( \next_state.FECHANDO_102~combout\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	dataf => \ALT_INV_next_state.FECHANDO_102~combout\,
	combout => \state.FECHANDO~0_combout\);

-- Location: FF_X12_Y1_N32
\state.FECHANDO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \state.FECHANDO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.FECHANDO~q\);

-- Location: LABCELL_X12_Y1_N18
\next_state.ABERTO~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state.ABERTO~0_combout\ = (!\SF~input_o\ & (((\CR~input_o\ & !\state.FECHADO~q\)))) # (\SF~input_o\ & (((\CR~input_o\ & !\state.FECHADO~q\)) # (\state.FECHANDO~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111100010001000111110001000100011111000100010001111100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SF~input_o\,
	datab => \ALT_INV_state.FECHANDO~q\,
	datac => \ALT_INV_CR~input_o\,
	datad => \ALT_INV_state.FECHADO~q\,
	combout => \next_state.ABERTO~0_combout\);

-- Location: LABCELL_X12_Y1_N21
\comb~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~5_combout\ = (\SF~input_o\ & (\state.FECHANDO~q\ & !\SO~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SF~input_o\,
	datab => \ALT_INV_state.FECHANDO~q\,
	datac => \ALT_INV_SO~input_o\,
	combout => \comb~5_combout\);

-- Location: LABCELL_X12_Y1_N54
\comb~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~6_combout\ = ( \next_state.FECHANDO~0_combout\ & ( !\comb~5_combout\ ) ) # ( !\next_state.FECHANDO~0_combout\ & ( (!\comb~5_combout\ & (((\CR~input_o\ & \state.ABERTO~q\)) # (\next_state.ABERTO~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011100000000010101110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_next_state.ABERTO~0_combout\,
	datab => \ALT_INV_CR~input_o\,
	datac => \ALT_INV_state.ABERTO~q\,
	datad => \ALT_INV_comb~5_combout\,
	dataf => \ALT_INV_next_state.FECHANDO~0_combout\,
	combout => \comb~6_combout\);

-- Location: LABCELL_X12_Y1_N45
\next_state.FECHADO_113\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state.FECHADO_113~combout\ = ( \next_state.FECHADO_113~combout\ & ( !\comb~6_combout\ ) ) # ( !\next_state.FECHADO_113~combout\ & ( (!\comb~6_combout\ & \comb~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_comb~6_combout\,
	datad => \ALT_INV_comb~5_combout\,
	dataf => \ALT_INV_next_state.FECHADO_113~combout\,
	combout => \next_state.FECHADO_113~combout\);

-- Location: LABCELL_X12_Y1_N15
\state.FECHADO~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.FECHADO~0_combout\ = ( !\next_state.FECHADO_113~combout\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	dataf => \ALT_INV_next_state.FECHADO_113~combout\,
	combout => \state.FECHADO~0_combout\);

-- Location: FF_X12_Y1_N17
\state.FECHADO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \state.FECHADO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.FECHADO~q\);

-- Location: LABCELL_X12_Y1_N9
\process_0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_0~4_combout\ = (\CR~input_o\ & !\state.FECHADO~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CR~input_o\,
	datad => \ALT_INV_state.FECHADO~q\,
	combout => \process_0~4_combout\);

-- Location: LABCELL_X12_Y1_N0
\comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = ( \next_state.ABERTO~0_combout\ & ( (!\CR~input_o\) # (\state.FECHADO~q\) ) ) # ( !\next_state.ABERTO~0_combout\ & ( (!\CR~input_o\ & (((\next_state.FECHANDO~0_combout\)))) # (\CR~input_o\ & (\state.FECHADO~q\ & 
-- ((\next_state.FECHANDO~0_combout\) # (\state.ABERTO~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000011111000011000001111111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.ABERTO~q\,
	datab => \ALT_INV_CR~input_o\,
	datac => \ALT_INV_next_state.FECHANDO~0_combout\,
	datad => \ALT_INV_state.FECHADO~q\,
	dataf => \ALT_INV_next_state.ABERTO~0_combout\,
	combout => \comb~0_combout\);

-- Location: LABCELL_X12_Y1_N6
\next_state.ABRINDO_124\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state.ABRINDO_124~combout\ = ( \next_state.ABRINDO_124~combout\ & ( !\comb~0_combout\ ) ) # ( !\next_state.ABRINDO_124~combout\ & ( (\process_0~4_combout\ & !\comb~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_0~4_combout\,
	datac => \ALT_INV_comb~0_combout\,
	dataf => \ALT_INV_next_state.ABRINDO_124~combout\,
	combout => \next_state.ABRINDO_124~combout\);

-- Location: LABCELL_X12_Y1_N33
\state.ABRINDO~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.ABRINDO~0_combout\ = ( \next_state.ABRINDO_124~combout\ & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	dataf => \ALT_INV_next_state.ABRINDO_124~combout\,
	combout => \state.ABRINDO~0_combout\);

-- Location: FF_X12_Y1_N35
\state.ABRINDO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \state.ABRINDO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.ABRINDO~q\);

-- Location: LABCELL_X70_Y3_N3
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


