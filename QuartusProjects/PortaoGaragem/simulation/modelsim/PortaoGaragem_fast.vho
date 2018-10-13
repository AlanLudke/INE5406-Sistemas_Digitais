-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "09/27/2018 14:40:28"

-- 
-- Device: Altera EP2C5T144C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
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
-- output[0]	=>  Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[1]	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reset	=>  Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CR	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SF	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SA	=>  Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SO	=>  Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \next_state.FECHANDO~0_combout\ : std_logic;
SIGNAL \comb~7_combout\ : std_logic;
SIGNAL \process_0~7_combout\ : std_logic;
SIGNAL \comb~8_combout\ : std_logic;
SIGNAL \comb~9_combout\ : std_logic;
SIGNAL \comb~10_combout\ : std_logic;
SIGNAL \SF~combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \SO~combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \CR~combout\ : std_logic;
SIGNAL \comb~12_combout\ : std_logic;
SIGNAL \next_state.FECHANDO_102~combout\ : std_logic;
SIGNAL \state.FECHANDO~0_combout\ : std_logic;
SIGNAL \state.FECHANDO~regout\ : std_logic;
SIGNAL \comb~11_combout\ : std_logic;
SIGNAL \next_state.FECHADO_113~combout\ : std_logic;
SIGNAL \state.FECHADO~0_combout\ : std_logic;
SIGNAL \state.FECHADO~regout\ : std_logic;
SIGNAL \next_state.ABERTO~0_combout\ : std_logic;
SIGNAL \SA~combout\ : std_logic;
SIGNAL \process_0~6_combout\ : std_logic;
SIGNAL \comb~13_combout\ : std_logic;
SIGNAL \next_state.ABERTO_135~combout\ : std_logic;
SIGNAL \state.ABERTO~0_combout\ : std_logic;
SIGNAL \state.ABERTO~regout\ : std_logic;
SIGNAL \process_0~4_combout\ : std_logic;
SIGNAL \process_0~5_combout\ : std_logic;
SIGNAL \comb~6_combout\ : std_logic;
SIGNAL \next_state.ABRINDO_124~combout\ : std_logic;
SIGNAL \state.ABRINDO~0_combout\ : std_logic;
SIGNAL \state.ABRINDO~regout\ : std_logic;

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

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

-- Location: LCCOMB_X13_Y5_N10
\next_state.FECHANDO~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \next_state.FECHANDO~0_combout\ = (\SA~combout\ & (!\state.ABRINDO~regout\ & ((!\SO~combout\) # (!\state.FECHANDO~regout\)))) # (!\SA~combout\ & (((!\SO~combout\)) # (!\state.FECHANDO~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SA~combout\,
	datab => \state.FECHANDO~regout\,
	datac => \SO~combout\,
	datad => \state.ABRINDO~regout\,
	combout => \next_state.FECHANDO~0_combout\);

-- Location: LCCOMB_X13_Y5_N16
\comb~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~7_combout\ = (!\next_state.ABERTO~0_combout\) # (!\next_state.FECHANDO~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state.FECHANDO~0_combout\,
	datad => \next_state.ABERTO~0_combout\,
	combout => \comb~7_combout\);

-- Location: LCCOMB_X14_Y7_N12
\process_0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~7_combout\ = (\SO~combout\ & \state.FECHANDO~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SO~combout\,
	datad => \state.FECHANDO~regout\,
	combout => \process_0~7_combout\);

-- Location: LCCOMB_X14_Y7_N6
\comb~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~8_combout\ = (!\process_0~7_combout\ & (((\process_0~4_combout\ & !\process_0~6_combout\)) # (!\next_state.ABERTO~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~4_combout\,
	datab => \process_0~6_combout\,
	datac => \next_state.ABERTO~0_combout\,
	datad => \process_0~7_combout\,
	combout => \comb~8_combout\);

-- Location: LCCOMB_X13_Y5_N2
\comb~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~9_combout\ = ((\SO~combout\) # (!\state.FECHANDO~regout\)) # (!\SF~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SF~combout\,
	datac => \SO~combout\,
	datad => \state.FECHANDO~regout\,
	combout => \comb~9_combout\);

-- Location: LCCOMB_X13_Y5_N12
\comb~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~10_combout\ = (\comb~9_combout\ & (((\process_0~4_combout\) # (!\next_state.ABERTO~0_combout\)) # (!\next_state.FECHANDO~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state.FECHANDO~0_combout\,
	datab => \process_0~4_combout\,
	datac => \comb~9_combout\,
	datad => \next_state.ABERTO~0_combout\,
	combout => \comb~10_combout\);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SF~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SF,
	combout => \SF~combout\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SO~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SO,
	combout => \SO~combout\);

-- Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CR~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CR,
	combout => \CR~combout\);

-- Location: LCCOMB_X13_Y5_N8
\comb~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~12_combout\ = (\next_state.FECHANDO~0_combout\ & (\next_state.ABERTO~0_combout\ & (\CR~combout\ & \state.ABERTO~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state.FECHANDO~0_combout\,
	datab => \next_state.ABERTO~0_combout\,
	datac => \CR~combout\,
	datad => \state.ABERTO~regout\,
	combout => \comb~12_combout\);

-- Location: LCCOMB_X13_Y5_N4
\next_state.FECHANDO_102\ : cycloneii_lcell_comb
-- Equation(s):
-- \next_state.FECHANDO_102~combout\ = (!\comb~7_combout\ & ((\comb~12_combout\) # (\next_state.FECHANDO_102~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~7_combout\,
	datab => \comb~12_combout\,
	datac => \next_state.FECHANDO_102~combout\,
	combout => \next_state.FECHANDO_102~combout\);

-- Location: LCCOMB_X13_Y5_N18
\state.FECHANDO~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \state.FECHANDO~0_combout\ = (!\reset~combout\ & \next_state.FECHANDO_102~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~combout\,
	datac => \next_state.FECHANDO_102~combout\,
	combout => \state.FECHANDO~0_combout\);

-- Location: LCFF_X13_Y5_N19
\state.FECHANDO\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \state.FECHANDO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.FECHANDO~regout\);

-- Location: LCCOMB_X13_Y5_N30
\comb~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~11_combout\ = (\SF~combout\ & (!\SO~combout\ & \state.FECHANDO~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SF~combout\,
	datac => \SO~combout\,
	datad => \state.FECHANDO~regout\,
	combout => \comb~11_combout\);

-- Location: LCCOMB_X13_Y5_N14
\next_state.FECHADO_113\ : cycloneii_lcell_comb
-- Equation(s):
-- \next_state.FECHADO_113~combout\ = (!\comb~10_combout\ & ((\next_state.FECHADO_113~combout\) # (\comb~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~10_combout\,
	datac => \next_state.FECHADO_113~combout\,
	datad => \comb~11_combout\,
	combout => \next_state.FECHADO_113~combout\);

-- Location: LCCOMB_X13_Y5_N6
\state.FECHADO~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \state.FECHADO~0_combout\ = (!\reset~combout\ & !\next_state.FECHADO_113~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~combout\,
	datac => \next_state.FECHADO_113~combout\,
	combout => \state.FECHADO~0_combout\);

-- Location: LCFF_X13_Y5_N7
\state.FECHADO\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \state.FECHADO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.FECHADO~regout\);

-- Location: LCCOMB_X13_Y5_N0
\next_state.ABERTO~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \next_state.ABERTO~0_combout\ = (\SF~combout\ & (!\state.FECHANDO~regout\ & ((\state.FECHADO~regout\) # (!\CR~combout\)))) # (!\SF~combout\ & (((\state.FECHADO~regout\) # (!\CR~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SF~combout\,
	datab => \state.FECHANDO~regout\,
	datac => \CR~combout\,
	datad => \state.FECHADO~regout\,
	combout => \next_state.ABERTO~0_combout\);

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SA~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SA,
	combout => \SA~combout\);

-- Location: LCCOMB_X14_Y7_N2
\process_0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~6_combout\ = (\SA~combout\ & \state.ABRINDO~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SA~combout\,
	datad => \state.ABRINDO~regout\,
	combout => \process_0~6_combout\);

-- Location: LCCOMB_X14_Y7_N0
\comb~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~13_combout\ = (\state.FECHANDO~regout\ & ((\SO~combout\) # ((\next_state.ABERTO~0_combout\ & \process_0~6_combout\)))) # (!\state.FECHANDO~regout\ & (((\next_state.ABERTO~0_combout\ & \process_0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.FECHANDO~regout\,
	datab => \SO~combout\,
	datac => \next_state.ABERTO~0_combout\,
	datad => \process_0~6_combout\,
	combout => \comb~13_combout\);

-- Location: LCCOMB_X14_Y7_N26
\next_state.ABERTO_135\ : cycloneii_lcell_comb
-- Equation(s):
-- \next_state.ABERTO_135~combout\ = (!\comb~8_combout\ & ((\comb~13_combout\) # (\next_state.ABERTO_135~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~8_combout\,
	datab => \comb~13_combout\,
	datad => \next_state.ABERTO_135~combout\,
	combout => \next_state.ABERTO_135~combout\);

-- Location: LCCOMB_X14_Y7_N8
\state.ABERTO~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \state.ABERTO~0_combout\ = (\next_state.ABERTO_135~combout\ & !\reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \next_state.ABERTO_135~combout\,
	datad => \reset~combout\,
	combout => \state.ABERTO~0_combout\);

-- Location: LCFF_X14_Y7_N9
\state.ABERTO\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \state.ABERTO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.ABERTO~regout\);

-- Location: LCCOMB_X13_Y5_N28
\process_0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~4_combout\ = (\state.ABERTO~regout\ & \CR~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.ABERTO~regout\,
	datac => \CR~combout\,
	combout => \process_0~4_combout\);

-- Location: LCCOMB_X13_Y5_N20
\process_0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~5_combout\ = (!\state.FECHADO~regout\ & \CR~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.FECHADO~regout\,
	datac => \CR~combout\,
	combout => \process_0~5_combout\);

-- Location: LCCOMB_X13_Y5_N22
\comb~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \comb~6_combout\ = (!\process_0~5_combout\ & (((\process_0~4_combout\) # (!\next_state.ABERTO~0_combout\)) # (!\next_state.FECHANDO~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \next_state.FECHANDO~0_combout\,
	datab => \process_0~4_combout\,
	datac => \process_0~5_combout\,
	datad => \next_state.ABERTO~0_combout\,
	combout => \comb~6_combout\);

-- Location: LCCOMB_X13_Y5_N26
\next_state.ABRINDO_124\ : cycloneii_lcell_comb
-- Equation(s):
-- \next_state.ABRINDO_124~combout\ = (!\comb~6_combout\ & ((\process_0~5_combout\) # (\next_state.ABRINDO_124~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb~6_combout\,
	datac => \process_0~5_combout\,
	datad => \next_state.ABRINDO_124~combout\,
	combout => \next_state.ABRINDO_124~combout\);

-- Location: LCCOMB_X13_Y5_N24
\state.ABRINDO~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \state.ABRINDO~0_combout\ = (\next_state.ABRINDO_124~combout\ & !\reset~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \next_state.ABRINDO_124~combout\,
	datac => \reset~combout\,
	combout => \state.ABRINDO~0_combout\);

-- Location: LCFF_X13_Y5_N25
\state.ABRINDO\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \state.ABRINDO~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.ABRINDO~regout\);

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \state.ABRINDO~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(0));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \state.FECHANDO~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(1));
END structure;


