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

-- DATE "10/08/2017 22:57:50"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Exe2 IS
    PORT (
	SW : IN std_logic_vector(9 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(1 DOWNTO 0)
	);
END Exe2;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Exe2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(1 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SSub|MB2|E~0_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SSub|FA0|S~combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SSub|FA3|D~combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SSub|FA1|Cout~combout\ : std_logic;
SIGNAL \SSub|FA1|S~combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \Decod4|DEC1|F[0]~0_combout\ : std_logic;
SIGNAL \Decod4|DEC1|F[1]~1_combout\ : std_logic;
SIGNAL \Decod4|DEC1|F[2]~2_combout\ : std_logic;
SIGNAL \SSub|FA2|S~combout\ : std_logic;
SIGNAL \SSub|FA0|Cout~combout\ : std_logic;
SIGNAL \SSub|FA1|D~combout\ : std_logic;
SIGNAL \Decod4|DEC1|F[3]~3_combout\ : std_logic;
SIGNAL \Decod4|DEC1|F[4]~4_combout\ : std_logic;
SIGNAL \Decod4|DEC1|F[5]~5_combout\ : std_logic;
SIGNAL \SSub|FA3|S~combout\ : std_logic;
SIGNAL \Decod4|DEC1|F[6]~6_combout\ : std_logic;
SIGNAL \SSub|MB3|E~0_combout\ : std_logic;
SIGNAL \SSub|Overflow~combout\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \SSub|MB3|ALT_INV_E~0_combout\ : std_logic;
SIGNAL \Decod4|DEC1|ALT_INV_F[6]~6_combout\ : std_logic;
SIGNAL \SSub|FA3|ALT_INV_S~combout\ : std_logic;
SIGNAL \SSub|FA2|ALT_INV_S~combout\ : std_logic;
SIGNAL \SSub|FA0|ALT_INV_Cout~combout\ : std_logic;
SIGNAL \SSub|FA1|ALT_INV_D~combout\ : std_logic;
SIGNAL \Decod4|DEC1|ALT_INV_F[1]~1_combout\ : std_logic;
SIGNAL \SSub|FA3|ALT_INV_D~combout\ : std_logic;
SIGNAL \SSub|MB2|ALT_INV_E~0_combout\ : std_logic;
SIGNAL \SSub|FA1|ALT_INV_Cout~combout\ : std_logic;
SIGNAL \SSub|FA0|ALT_INV_S~combout\ : std_logic;
SIGNAL \SSub|FA1|ALT_INV_S~combout\ : std_logic;

BEGIN

ww_SW <= SW;
HEX0 <= ww_HEX0;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\SSub|MB3|ALT_INV_E~0_combout\ <= NOT \SSub|MB3|E~0_combout\;
\Decod4|DEC1|ALT_INV_F[6]~6_combout\ <= NOT \Decod4|DEC1|F[6]~6_combout\;
\SSub|FA3|ALT_INV_S~combout\ <= NOT \SSub|FA3|S~combout\;
\SSub|FA2|ALT_INV_S~combout\ <= NOT \SSub|FA2|S~combout\;
\SSub|FA0|ALT_INV_Cout~combout\ <= NOT \SSub|FA0|Cout~combout\;
\SSub|FA1|ALT_INV_D~combout\ <= NOT \SSub|FA1|D~combout\;
\Decod4|DEC1|ALT_INV_F[1]~1_combout\ <= NOT \Decod4|DEC1|F[1]~1_combout\;
\SSub|FA3|ALT_INV_D~combout\ <= NOT \SSub|FA3|D~combout\;
\SSub|MB2|ALT_INV_E~0_combout\ <= NOT \SSub|MB2|E~0_combout\;
\SSub|FA1|ALT_INV_Cout~combout\ <= NOT \SSub|FA1|Cout~combout\;
\SSub|FA0|ALT_INV_S~combout\ <= NOT \SSub|FA0|S~combout\;
\SSub|FA1|ALT_INV_S~combout\ <= NOT \SSub|FA1|S~combout\;

-- Location: IOOBUF_X89_Y8_N39
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decod4|DEC1|F[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X89_Y11_N79
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decod4|DEC1|ALT_INV_F[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X89_Y11_N96
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decod4|DEC1|F[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X89_Y4_N79
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decod4|DEC1|F[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X89_Y13_N56
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decod4|DEC1|F[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X89_Y13_N39
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decod4|DEC1|F[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X89_Y4_N96
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Decod4|DEC1|ALT_INV_F[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SSub|FA3|S~combout\,
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
	i => \SSub|Overflow~combout\,
	devoe => ww_devoe,
	o => ww_LEDR(1));

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

-- Location: LABCELL_X10_Y4_N33
\SSub|MB2|E~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SSub|MB2|E~0_combout\ = ( !\SW[8]~input_o\ & ( \SW[6]~input_o\ ) ) # ( \SW[8]~input_o\ & ( !\SW[6]~input_o\ & ( \SW[9]~input_o\ ) ) ) # ( !\SW[8]~input_o\ & ( !\SW[6]~input_o\ & ( \SW[9]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[9]~input_o\,
	datae => \ALT_INV_SW[8]~input_o\,
	dataf => \ALT_INV_SW[6]~input_o\,
	combout => \SSub|MB2|E~0_combout\);

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

-- Location: LABCELL_X18_Y4_N6
\SSub|FA0|S\ : cyclonev_lcell_comb
-- Equation(s):
-- \SSub|FA0|S~combout\ = ( \SW[0]~input_o\ & ( (!\SW[4]~input_o\ & (!\SW[8]~input_o\ $ (\SW[9]~input_o\))) ) ) # ( !\SW[0]~input_o\ & ( (!\SW[8]~input_o\ $ (!\SW[9]~input_o\)) # (\SW[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110111101101111011011110110111110010000100100001001000010010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[8]~input_o\,
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \ALT_INV_SW[4]~input_o\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \SSub|FA0|S~combout\);

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

-- Location: LABCELL_X10_Y4_N9
\SSub|FA3|D\ : cyclonev_lcell_comb
-- Equation(s):
-- \SSub|FA3|D~combout\ = ( \SW[7]~input_o\ & ( \SW[3]~input_o\ & ( \SW[8]~input_o\ ) ) ) # ( !\SW[7]~input_o\ & ( \SW[3]~input_o\ & ( !\SW[9]~input_o\ ) ) ) # ( \SW[7]~input_o\ & ( !\SW[3]~input_o\ & ( !\SW[8]~input_o\ ) ) ) # ( !\SW[7]~input_o\ & ( 
-- !\SW[3]~input_o\ & ( \SW[9]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111101010101010101011110000111100000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[8]~input_o\,
	datac => \ALT_INV_SW[9]~input_o\,
	datae => \ALT_INV_SW[7]~input_o\,
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \SSub|FA3|D~combout\);

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

-- Location: LABCELL_X18_Y4_N42
\SSub|FA1|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \SSub|FA1|Cout~combout\ = ( \SW[4]~input_o\ & ( \SW[5]~input_o\ & ( (!\SW[0]~input_o\ & (!\SW[8]~input_o\ & \SW[1]~input_o\)) # (\SW[0]~input_o\ & ((!\SW[8]~input_o\) # (\SW[1]~input_o\))) ) ) ) # ( !\SW[4]~input_o\ & ( \SW[5]~input_o\ & ( 
-- (!\SW[0]~input_o\ & (\SW[1]~input_o\ & ((!\SW[8]~input_o\) # (\SW[9]~input_o\)))) # (\SW[0]~input_o\ & (((\SW[9]~input_o\ & !\SW[8]~input_o\)) # (\SW[1]~input_o\))) ) ) ) # ( \SW[4]~input_o\ & ( !\SW[5]~input_o\ & ( (!\SW[0]~input_o\ & (\SW[9]~input_o\ & 
-- \SW[1]~input_o\)) # (\SW[0]~input_o\ & ((\SW[1]~input_o\) # (\SW[9]~input_o\))) ) ) ) # ( !\SW[4]~input_o\ & ( !\SW[5]~input_o\ & ( (!\SW[0]~input_o\ & (\SW[9]~input_o\ & ((\SW[1]~input_o\) # (\SW[8]~input_o\)))) # (\SW[0]~input_o\ & (((\SW[8]~input_o\ & 
-- \SW[1]~input_o\)) # (\SW[9]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100110111000100010111011100010000111101110101000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \ALT_INV_SW[8]~input_o\,
	datad => \ALT_INV_SW[1]~input_o\,
	datae => \ALT_INV_SW[4]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \SSub|FA1|Cout~combout\);

-- Location: LABCELL_X18_Y4_N0
\SSub|FA1|S\ : cyclonev_lcell_comb
-- Equation(s):
-- \SSub|FA1|S~combout\ = ( \SW[4]~input_o\ & ( \SW[5]~input_o\ & ( !\SW[0]~input_o\ $ (!\SW[8]~input_o\ $ (!\SW[1]~input_o\)) ) ) ) # ( !\SW[4]~input_o\ & ( \SW[5]~input_o\ & ( !\SW[1]~input_o\ $ (((!\SW[0]~input_o\ & (!\SW[9]~input_o\ & \SW[8]~input_o\)) # 
-- (\SW[0]~input_o\ & (\SW[9]~input_o\ & !\SW[8]~input_o\)))) ) ) ) # ( \SW[4]~input_o\ & ( !\SW[5]~input_o\ & ( !\SW[0]~input_o\ $ (!\SW[9]~input_o\ $ (\SW[1]~input_o\)) ) ) ) # ( !\SW[4]~input_o\ & ( !\SW[5]~input_o\ & ( !\SW[1]~input_o\ $ 
-- (((!\SW[0]~input_o\ & ((!\SW[9]~input_o\) # (\SW[8]~input_o\))) # (\SW[0]~input_o\ & ((!\SW[8]~input_o\) # (\SW[9]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010011011011011001101001100111100111000110001010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \ALT_INV_SW[8]~input_o\,
	datad => \ALT_INV_SW[1]~input_o\,
	datae => \ALT_INV_SW[4]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \SSub|FA1|S~combout\);

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

-- Location: LABCELL_X18_Y4_N18
\Decod4|DEC1|F[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decod4|DEC1|F[0]~0_combout\ = ( \SSub|FA1|S~combout\ & ( \SW[2]~input_o\ & ( (\SSub|FA0|S~combout\ & ((!\SSub|MB2|E~0_combout\ & (\SSub|FA3|D~combout\ & !\SSub|FA1|Cout~combout\)) # (\SSub|MB2|E~0_combout\ & (!\SSub|FA3|D~combout\ & 
-- \SSub|FA1|Cout~combout\)))) ) ) ) # ( !\SSub|FA1|S~combout\ & ( \SW[2]~input_o\ & ( (!\SSub|FA0|S~combout\ & (!\SSub|MB2|E~0_combout\ $ (((\SSub|FA1|Cout~combout\))))) # (\SSub|FA0|S~combout\ & (\SSub|FA3|D~combout\ & (!\SSub|MB2|E~0_combout\ $ 
-- (!\SSub|FA1|Cout~combout\)))) ) ) ) # ( \SSub|FA1|S~combout\ & ( !\SW[2]~input_o\ & ( (\SSub|FA0|S~combout\ & (\SSub|FA3|D~combout\ & (!\SSub|MB2|E~0_combout\ $ (!\SSub|FA1|Cout~combout\)))) ) ) ) # ( !\SSub|FA1|S~combout\ & ( !\SW[2]~input_o\ & ( 
-- (!\SSub|FA0|S~combout\ & (!\SSub|MB2|E~0_combout\ $ (((!\SSub|FA1|Cout~combout\))))) # (\SSub|FA0|S~combout\ & ((!\SSub|MB2|E~0_combout\ & (!\SSub|FA3|D~combout\ & !\SSub|FA1|Cout~combout\)) # (\SSub|MB2|E~0_combout\ & (\SSub|FA3|D~combout\ & 
-- \SSub|FA1|Cout~combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010010001001000000010000001010001001010001100000001000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SSub|MB2|ALT_INV_E~0_combout\,
	datab => \SSub|FA0|ALT_INV_S~combout\,
	datac => \SSub|FA3|ALT_INV_D~combout\,
	datad => \SSub|FA1|ALT_INV_Cout~combout\,
	datae => \SSub|FA1|ALT_INV_S~combout\,
	dataf => \ALT_INV_SW[2]~input_o\,
	combout => \Decod4|DEC1|F[0]~0_combout\);

-- Location: LABCELL_X18_Y4_N24
\Decod4|DEC1|F[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decod4|DEC1|F[1]~1_combout\ = ( \SSub|FA1|S~combout\ & ( \SW[2]~input_o\ & ( (!\SSub|FA0|S~combout\ & (!\SSub|FA3|D~combout\ $ (((!\SSub|MB2|E~0_combout\) # (!\SSub|FA1|Cout~combout\))))) # (\SSub|FA0|S~combout\ & ((!\SSub|MB2|E~0_combout\ $ 
-- (\SSub|FA1|Cout~combout\)) # (\SSub|FA3|D~combout\))) ) ) ) # ( !\SSub|FA1|S~combout\ & ( \SW[2]~input_o\ & ( (!\SSub|FA0|S~combout\) # ((!\SSub|MB2|E~0_combout\ & ((\SSub|FA1|Cout~combout\) # (\SSub|FA3|D~combout\))) # (\SSub|MB2|E~0_combout\ & 
-- ((!\SSub|FA3|D~combout\) # (!\SSub|FA1|Cout~combout\)))) ) ) ) # ( \SSub|FA1|S~combout\ & ( !\SW[2]~input_o\ & ( (!\SSub|MB2|E~0_combout\ & ((!\SSub|FA3|D~combout\ & ((!\SSub|FA1|Cout~combout\) # (\SSub|FA0|S~combout\))) # (\SSub|FA3|D~combout\ & 
-- ((\SSub|FA1|Cout~combout\))))) # (\SSub|MB2|E~0_combout\ & (((\SSub|FA0|S~combout\ & !\SSub|FA1|Cout~combout\)) # (\SSub|FA3|D~combout\))) ) ) ) # ( !\SSub|FA1|S~combout\ & ( !\SW[2]~input_o\ & ( (!\SSub|FA0|S~combout\) # ((!\SSub|MB2|E~0_combout\ $ 
-- (\SSub|FA1|Cout~combout\)) # (\SSub|FA3|D~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111111011111101101010010111111011111111111100010111101011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SSub|MB2|ALT_INV_E~0_combout\,
	datab => \SSub|FA0|ALT_INV_S~combout\,
	datac => \SSub|FA3|ALT_INV_D~combout\,
	datad => \SSub|FA1|ALT_INV_Cout~combout\,
	datae => \SSub|FA1|ALT_INV_S~combout\,
	dataf => \ALT_INV_SW[2]~input_o\,
	combout => \Decod4|DEC1|F[1]~1_combout\);

-- Location: LABCELL_X18_Y4_N30
\Decod4|DEC1|F[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decod4|DEC1|F[2]~2_combout\ = ( \SSub|FA1|S~combout\ & ( \SW[2]~input_o\ & ( (!\SSub|FA0|S~combout\ & (!\SSub|FA3|D~combout\ $ (((!\SSub|MB2|E~0_combout\) # (!\SSub|FA1|Cout~combout\))))) ) ) ) # ( \SSub|FA1|S~combout\ & ( !\SW[2]~input_o\ & ( 
-- (!\SSub|FA0|S~combout\ & (!\SSub|FA3|D~combout\ $ (((\SSub|FA1|Cout~combout\) # (\SSub|MB2|E~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100001000000110000000000000000000000110001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SSub|MB2|ALT_INV_E~0_combout\,
	datab => \SSub|FA0|ALT_INV_S~combout\,
	datac => \SSub|FA3|ALT_INV_D~combout\,
	datad => \SSub|FA1|ALT_INV_Cout~combout\,
	datae => \SSub|FA1|ALT_INV_S~combout\,
	dataf => \ALT_INV_SW[2]~input_o\,
	combout => \Decod4|DEC1|F[2]~2_combout\);

-- Location: LABCELL_X18_Y4_N12
\SSub|FA2|S\ : cyclonev_lcell_comb
-- Equation(s):
-- \SSub|FA2|S~combout\ = ( \SSub|FA1|Cout~combout\ & ( !\SSub|MB2|E~0_combout\ $ (\SW[2]~input_o\) ) ) # ( !\SSub|FA1|Cout~combout\ & ( !\SSub|MB2|E~0_combout\ $ (!\SW[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SSub|MB2|ALT_INV_E~0_combout\,
	datac => \ALT_INV_SW[2]~input_o\,
	dataf => \SSub|FA1|ALT_INV_Cout~combout\,
	combout => \SSub|FA2|S~combout\);

-- Location: LABCELL_X18_Y4_N9
\SSub|FA0|Cout\ : cyclonev_lcell_comb
-- Equation(s):
-- \SSub|FA0|Cout~combout\ = ( \SW[0]~input_o\ & ( ((\SW[4]~input_o\) # (\SW[9]~input_o\)) # (\SW[8]~input_o\) ) ) # ( !\SW[0]~input_o\ & ( (\SW[8]~input_o\ & (\SW[9]~input_o\ & !\SW[4]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000100010000000001110111111111110111011111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[8]~input_o\,
	datab => \ALT_INV_SW[9]~input_o\,
	datad => \ALT_INV_SW[4]~input_o\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \SSub|FA0|Cout~combout\);

-- Location: LABCELL_X18_Y4_N36
\SSub|FA1|D\ : cyclonev_lcell_comb
-- Equation(s):
-- \SSub|FA1|D~combout\ = ( \SW[8]~input_o\ & ( \SW[5]~input_o\ & ( \SW[1]~input_o\ ) ) ) # ( !\SW[8]~input_o\ & ( \SW[5]~input_o\ & ( !\SW[1]~input_o\ ) ) ) # ( \SW[8]~input_o\ & ( !\SW[5]~input_o\ & ( !\SW[9]~input_o\ $ (!\SW[1]~input_o\) ) ) ) # ( 
-- !\SW[8]~input_o\ & ( !\SW[5]~input_o\ & ( !\SW[9]~input_o\ $ (!\SW[1]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110011111111000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[9]~input_o\,
	datad => \ALT_INV_SW[1]~input_o\,
	datae => \ALT_INV_SW[8]~input_o\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \SSub|FA1|D~combout\);

-- Location: LABCELL_X17_Y4_N0
\Decod4|DEC1|F[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decod4|DEC1|F[3]~3_combout\ = ( \SSub|FA1|D~combout\ & ( (!\SSub|FA0|S~combout\ & (\SSub|FA2|S~combout\ & \SSub|FA0|Cout~combout\)) # (\SSub|FA0|S~combout\ & (!\SSub|FA2|S~combout\ $ (!\SSub|FA0|Cout~combout\))) ) ) # ( !\SSub|FA1|D~combout\ & ( 
-- (!\SSub|FA0|S~combout\ & (\SSub|FA2|S~combout\ & !\SSub|FA0|Cout~combout\)) # (\SSub|FA0|S~combout\ & (!\SSub|FA2|S~combout\ $ (\SSub|FA0|Cout~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000101100001000101100001011001100001011000010001011000010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SSub|FA0|ALT_INV_S~combout\,
	datab => \SSub|FA2|ALT_INV_S~combout\,
	datac => \SSub|FA0|ALT_INV_Cout~combout\,
	datae => \SSub|FA1|ALT_INV_D~combout\,
	combout => \Decod4|DEC1|F[3]~3_combout\);

-- Location: LABCELL_X17_Y4_N9
\Decod4|DEC1|F[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decod4|DEC1|F[4]~4_combout\ = ( \SSub|FA1|D~combout\ & ( ((\SSub|FA0|Cout~combout\ & \SSub|FA2|S~combout\)) # (\SSub|FA0|S~combout\) ) ) # ( !\SSub|FA1|D~combout\ & ( ((!\SSub|FA0|Cout~combout\ & \SSub|FA2|S~combout\)) # (\SSub|FA0|S~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101011111111000001011111111100001010111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SSub|FA0|ALT_INV_Cout~combout\,
	datac => \SSub|FA2|ALT_INV_S~combout\,
	datad => \SSub|FA0|ALT_INV_S~combout\,
	datae => \SSub|FA1|ALT_INV_D~combout\,
	combout => \Decod4|DEC1|F[4]~4_combout\);

-- Location: LABCELL_X18_Y4_N51
\Decod4|DEC1|F[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decod4|DEC1|F[5]~5_combout\ = ( \SSub|FA1|S~combout\ & ( \SW[2]~input_o\ & ( (!\SSub|FA0|S~combout\ & (!\SSub|FA3|D~combout\ $ (((!\SSub|FA1|Cout~combout\) # (!\SSub|MB2|E~0_combout\))))) # (\SSub|FA0|S~combout\ & ((!\SSub|FA1|Cout~combout\ $ 
-- (\SSub|MB2|E~0_combout\)) # (\SSub|FA3|D~combout\))) ) ) ) # ( !\SSub|FA1|S~combout\ & ( \SW[2]~input_o\ & ( (\SSub|FA0|S~combout\ & ((!\SSub|FA3|D~combout\ & ((\SSub|MB2|E~0_combout\) # (\SSub|FA1|Cout~combout\))) # (\SSub|FA3|D~combout\ & 
-- ((!\SSub|FA1|Cout~combout\) # (!\SSub|MB2|E~0_combout\))))) ) ) ) # ( \SSub|FA1|S~combout\ & ( !\SW[2]~input_o\ & ( (!\SSub|FA3|D~combout\ & ((!\SSub|FA1|Cout~combout\ & ((!\SSub|MB2|E~0_combout\) # (\SSub|FA0|S~combout\))) # (\SSub|FA1|Cout~combout\ & 
-- (\SSub|FA0|S~combout\ & !\SSub|MB2|E~0_combout\)))) # (\SSub|FA3|D~combout\ & (((\SSub|MB2|E~0_combout\)) # (\SSub|FA1|Cout~combout\))) ) ) ) # ( !\SSub|FA1|S~combout\ & ( !\SW[2]~input_o\ & ( (\SSub|FA0|S~combout\ & ((!\SSub|FA1|Cout~combout\ $ 
-- (\SSub|MB2|E~0_combout\)) # (\SSub|FA3|D~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110100000111100110110101110100000111000011100101110101100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SSub|FA3|ALT_INV_D~combout\,
	datab => \SSub|FA1|ALT_INV_Cout~combout\,
	datac => \SSub|FA0|ALT_INV_S~combout\,
	datad => \SSub|MB2|ALT_INV_E~0_combout\,
	datae => \SSub|FA1|ALT_INV_S~combout\,
	dataf => \ALT_INV_SW[2]~input_o\,
	combout => \Decod4|DEC1|F[5]~5_combout\);

-- Location: LABCELL_X18_Y4_N54
\SSub|FA3|S\ : cyclonev_lcell_comb
-- Equation(s):
-- \SSub|FA3|S~combout\ = ( \SSub|FA1|Cout~combout\ & ( !\SSub|FA3|D~combout\ $ (((!\SSub|MB2|E~0_combout\ & !\SW[2]~input_o\))) ) ) # ( !\SSub|FA1|Cout~combout\ & ( !\SSub|FA3|D~combout\ $ (((!\SSub|MB2|E~0_combout\) # (!\SW[2]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111010000001011111101001011111101000000101111110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \SSub|MB2|ALT_INV_E~0_combout\,
	datac => \ALT_INV_SW[2]~input_o\,
	datad => \SSub|FA3|ALT_INV_D~combout\,
	dataf => \SSub|FA1|ALT_INV_Cout~combout\,
	combout => \SSub|FA3|S~combout\);

-- Location: LABCELL_X18_Y4_N57
\Decod4|DEC1|F[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decod4|DEC1|F[6]~6_combout\ = ( \SSub|FA0|S~combout\ & ( !\SSub|FA2|S~combout\ $ (!\SSub|FA1|S~combout\) ) ) # ( !\SSub|FA0|S~combout\ & ( ((\SSub|FA1|S~combout\) # (\SSub|FA3|S~combout\)) # (\SSub|FA2|S~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111111111001111111111111100110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \SSub|FA2|ALT_INV_S~combout\,
	datac => \SSub|FA3|ALT_INV_S~combout\,
	datad => \SSub|FA1|ALT_INV_S~combout\,
	dataf => \SSub|FA0|ALT_INV_S~combout\,
	combout => \Decod4|DEC1|F[6]~6_combout\);

-- Location: LABCELL_X10_Y4_N42
\SSub|MB3|E~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SSub|MB3|E~0_combout\ = ( \SW[7]~input_o\ & ( !\SW[8]~input_o\ ) ) # ( !\SW[7]~input_o\ & ( \SW[9]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111100001111000000110011001100111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \ALT_INV_SW[8]~input_o\,
	datae => \ALT_INV_SW[7]~input_o\,
	combout => \SSub|MB3|E~0_combout\);

-- Location: LABCELL_X10_Y4_N21
\SSub|Overflow\ : cyclonev_lcell_comb
-- Equation(s):
-- \SSub|Overflow~combout\ = ( \SSub|MB2|E~0_combout\ & ( \SSub|FA1|Cout~combout\ & ( (!\SW[3]~input_o\ & !\SSub|MB3|E~0_combout\) ) ) ) # ( !\SSub|MB2|E~0_combout\ & ( \SSub|FA1|Cout~combout\ & ( (!\SW[3]~input_o\ & (!\SSub|MB3|E~0_combout\ & 
-- \SW[2]~input_o\)) # (\SW[3]~input_o\ & (\SSub|MB3|E~0_combout\ & !\SW[2]~input_o\)) ) ) ) # ( \SSub|MB2|E~0_combout\ & ( !\SSub|FA1|Cout~combout\ & ( (!\SW[3]~input_o\ & (!\SSub|MB3|E~0_combout\ & \SW[2]~input_o\)) # (\SW[3]~input_o\ & 
-- (\SSub|MB3|E~0_combout\ & !\SW[2]~input_o\)) ) ) ) # ( !\SSub|MB2|E~0_combout\ & ( !\SSub|FA1|Cout~combout\ & ( (\SW[3]~input_o\ & \SSub|MB3|E~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001011010000000000101101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[3]~input_o\,
	datac => \SSub|MB3|ALT_INV_E~0_combout\,
	datad => \ALT_INV_SW[2]~input_o\,
	datae => \SSub|MB2|ALT_INV_E~0_combout\,
	dataf => \SSub|FA1|ALT_INV_Cout~combout\,
	combout => \SSub|Overflow~combout\);

-- Location: LABCELL_X4_Y9_N0
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


