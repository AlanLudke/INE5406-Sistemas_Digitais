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

-- DATE "11/23/2015 23:30:21"

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

ENTITY 	super_top IS
    PORT (
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 9);
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	clock_50 : IN std_logic
	);
END super_top;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF super_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 9);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clock_50 : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock_50~input_o\ : std_logic;
SIGNAL \L0|divided_clock~0_combout\ : std_logic;
SIGNAL \L0|divided_clock~feeder_combout\ : std_logic;
SIGNAL \clock_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \L0|limit[14]~0_combout\ : std_logic;
SIGNAL \L0|PE~7_combout\ : std_logic;
SIGNAL \L0|PE.D1~q\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \L4|L0|rounds[2]~DUPLICATE_q\ : std_logic;
SIGNAL \L4|L0|LessThan0~0_combout\ : std_logic;
SIGNAL \L4|L0|Selector8~0_combout\ : std_logic;
SIGNAL \L4|L0|PE.S1~q\ : std_logic;
SIGNAL \L4|L0|EA.S0~q\ : std_logic;
SIGNAL \L4|L0|habilit_credit~q\ : std_logic;
SIGNAL \L4|L0|Selector6~0_combout\ : std_logic;
SIGNAL \L4|L0|habilit_credit~DUPLICATE_q\ : std_logic;
SIGNAL \L4|L0|EA.S4~DUPLICATE_q\ : std_logic;
SIGNAL \L4|L0|EA.S3~DUPLICATE_q\ : std_logic;
SIGNAL \L4|L0|EA.S5~DUPLICATE_q\ : std_logic;
SIGNAL \L4|L0|Selector3~0_combout\ : std_logic;
SIGNAL \L4|L0|enable_c0~q\ : std_logic;
SIGNAL \L1|L0|EA.S9~q\ : std_logic;
SIGNAL \L1|L0|EA.S10~q\ : std_logic;
SIGNAL \L1|L0|EA.S11~q\ : std_logic;
SIGNAL \L1|L0|EA.S12~q\ : std_logic;
SIGNAL \L1|L0|EA.S13~q\ : std_logic;
SIGNAL \L1|L0|EA.S14~q\ : std_logic;
SIGNAL \L1|L0|EA.S15~q\ : std_logic;
SIGNAL \L1|L0|EA.S0~0_combout\ : std_logic;
SIGNAL \L1|L0|EA.S0~q\ : std_logic;
SIGNAL \L1|L0|EA.S1~0_combout\ : std_logic;
SIGNAL \L1|L0|EA.S1~q\ : std_logic;
SIGNAL \L1|L0|EA.S2~q\ : std_logic;
SIGNAL \L1|L0|EA.S3~q\ : std_logic;
SIGNAL \L1|L0|WideOr1~1_combout\ : std_logic;
SIGNAL \L1|L0|WideOr1~combout\ : std_logic;
SIGNAL \L4|L0|Selector5~0_combout\ : std_logic;
SIGNAL \L4|L0|enable_c2~q\ : std_logic;
SIGNAL \L1|L2|EA.S15~q\ : std_logic;
SIGNAL \L1|L2|EA.S0~0_combout\ : std_logic;
SIGNAL \L1|L2|EA.S0~q\ : std_logic;
SIGNAL \L1|L2|EA.S1~0_combout\ : std_logic;
SIGNAL \L1|L2|EA.S1~q\ : std_logic;
SIGNAL \L1|L2|EA.S2~q\ : std_logic;
SIGNAL \L1|L2|EA.S3~q\ : std_logic;
SIGNAL \L1|L2|EA.S4~q\ : std_logic;
SIGNAL \L1|L2|EA.S5~q\ : std_logic;
SIGNAL \L1|L2|EA.S6~q\ : std_logic;
SIGNAL \L1|L2|EA.S7~feeder_combout\ : std_logic;
SIGNAL \L1|L2|EA.S7~q\ : std_logic;
SIGNAL \L1|L2|EA.S8~q\ : std_logic;
SIGNAL \L1|L2|EA.S9~q\ : std_logic;
SIGNAL \L1|L2|EA.S10~q\ : std_logic;
SIGNAL \L1|L2|EA.S11~q\ : std_logic;
SIGNAL \L1|L2|EA.S12~q\ : std_logic;
SIGNAL \L1|L2|EA.S13~q\ : std_logic;
SIGNAL \L1|L2|EA.S14~q\ : std_logic;
SIGNAL \L1|L2|WideOr3~1_combout\ : std_logic;
SIGNAL \L1|L2|WideOr0~0_combout\ : std_logic;
SIGNAL \L1|L2|WideOr3~0_combout\ : std_logic;
SIGNAL \L2|Equal4~1_combout\ : std_logic;
SIGNAL \L1|L0|EA.S4~q\ : std_logic;
SIGNAL \L1|L0|EA.S5~q\ : std_logic;
SIGNAL \L1|L0|EA.S6~q\ : std_logic;
SIGNAL \L1|L0|WideOr3~0_combout\ : std_logic;
SIGNAL \L1|L0|EA.S7~q\ : std_logic;
SIGNAL \L1|L0|WideOr0~0_combout\ : std_logic;
SIGNAL \L1|L0|WideOr0~combout\ : std_logic;
SIGNAL \L4|L0|Selector4~0_combout\ : std_logic;
SIGNAL \L4|L0|enable_c1~q\ : std_logic;
SIGNAL \L1|L1|EA.S15~q\ : std_logic;
SIGNAL \L1|L1|EA.S0~0_combout\ : std_logic;
SIGNAL \L1|L1|EA.S0~q\ : std_logic;
SIGNAL \L1|L1|EA.S1~0_combout\ : std_logic;
SIGNAL \L1|L1|EA.S1~q\ : std_logic;
SIGNAL \L1|L1|EA.S2~q\ : std_logic;
SIGNAL \L1|L1|EA.S3~q\ : std_logic;
SIGNAL \L1|L1|EA.S4~q\ : std_logic;
SIGNAL \L1|L1|EA.S5~q\ : std_logic;
SIGNAL \L1|L1|EA.S6~q\ : std_logic;
SIGNAL \L1|L1|EA.S7~q\ : std_logic;
SIGNAL \L1|L1|EA.S8~q\ : std_logic;
SIGNAL \L1|L1|EA.S9~q\ : std_logic;
SIGNAL \L1|L1|EA.S10~q\ : std_logic;
SIGNAL \L1|L1|EA.S11~q\ : std_logic;
SIGNAL \L1|L1|EA.S12~q\ : std_logic;
SIGNAL \L1|L1|EA.S13~q\ : std_logic;
SIGNAL \L1|L1|EA.S14~q\ : std_logic;
SIGNAL \L1|L1|WideOr3~1_combout\ : std_logic;
SIGNAL \L1|L2|WideOr1~0_combout\ : std_logic;
SIGNAL \L1|L2|WideOr1~1_combout\ : std_logic;
SIGNAL \L1|L1|WideOr3~0_combout\ : std_logic;
SIGNAL \L1|L1|WideOr1~0_combout\ : std_logic;
SIGNAL \L1|L1|WideOr1~1_combout\ : std_logic;
SIGNAL \L2|Equal0~0_combout\ : std_logic;
SIGNAL \L1|L1|WideOr2~0_combout\ : std_logic;
SIGNAL \L1|L0|WideOr3~1_combout\ : std_logic;
SIGNAL \L1|L1|WideOr0~0_combout\ : std_logic;
SIGNAL \L2|Equal4~0_combout\ : std_logic;
SIGNAL \L1|L2|WideOr2~0_combout\ : std_logic;
SIGNAL \L1|L2|WideOr2~combout\ : std_logic;
SIGNAL \L2|Equal0~1_combout\ : std_logic;
SIGNAL \L1|L1|WideOr2~combout\ : std_logic;
SIGNAL \L1|L1|WideOr0~combout\ : std_logic;
SIGNAL \L1|L2|WideOr0~combout\ : std_logic;
SIGNAL \L1|L5|F[2]~7_combout\ : std_logic;
SIGNAL \L2|Equal4~2_combout\ : std_logic;
SIGNAL \L2|Equal2~0_combout\ : std_logic;
SIGNAL \L2|Equal2~1_combout\ : std_logic;
SIGNAL \L2|Equal4~4_combout\ : std_logic;
SIGNAL \L2|WideNor0~0_combout\ : std_logic;
SIGNAL \L2|WideOr3~0_combout\ : std_logic;
SIGNAL \L1|L0|WideOr2~0_combout\ : std_logic;
SIGNAL \L2|Equal16~0_combout\ : std_logic;
SIGNAL \L2|Equal16~1_combout\ : std_logic;
SIGNAL \L2|Equal12~0_combout\ : std_logic;
SIGNAL \L2|Equal12~1_combout\ : std_logic;
SIGNAL \L2|WideOr1~0_combout\ : std_logic;
SIGNAL \L2|Equal4~3_combout\ : std_logic;
SIGNAL \L2|WideOr3~1_combout\ : std_logic;
SIGNAL \L2|Equal14~0_combout\ : std_logic;
SIGNAL \L2|WideOr3~combout\ : std_logic;
SIGNAL \L2|WideOr0~0_combout\ : std_logic;
SIGNAL \L2|WideNor0~combout\ : std_logic;
SIGNAL \L2|Equal1~0_combout\ : std_logic;
SIGNAL \L2|WideOr4~combout\ : std_logic;
SIGNAL \L2|WideOr5~0_combout\ : std_logic;
SIGNAL \L2|WideOr5~combout\ : std_logic;
SIGNAL \L2|WideOr6~0_combout\ : std_logic;
SIGNAL \L2|WideOr6~combout\ : std_logic;
SIGNAL \L2|WideOr7~combout\ : std_logic;
SIGNAL \L3|L0|Add0~1_sumout\ : std_logic;
SIGNAL \L3|L1|Q[0]~0_combout\ : std_logic;
SIGNAL \L3|L0|Add0~2\ : std_logic;
SIGNAL \L3|L0|Add0~5_sumout\ : std_logic;
SIGNAL \L3|L1|Q[1]~1_combout\ : std_logic;
SIGNAL \L3|L0|Add0~6\ : std_logic;
SIGNAL \L3|L0|Add0~9_sumout\ : std_logic;
SIGNAL \L3|L1|Q[2]~2_combout\ : std_logic;
SIGNAL \L3|L0|Add0~10\ : std_logic;
SIGNAL \L3|L0|Add0~13_sumout\ : std_logic;
SIGNAL \L3|L0|Add0~14\ : std_logic;
SIGNAL \L3|L0|Add0~17_sumout\ : std_logic;
SIGNAL \L3|L1|Q[4]~3_combout\ : std_logic;
SIGNAL \L2|WideOr0~combout\ : std_logic;
SIGNAL \L2|WideOr1~combout\ : std_logic;
SIGNAL \L2|WideOr2~0_combout\ : std_logic;
SIGNAL \L3|L0|Add0~18\ : std_logic;
SIGNAL \L3|L0|Add0~21_sumout\ : std_logic;
SIGNAL \L3|L0|Add0~22\ : std_logic;
SIGNAL \L3|L0|Add0~25_sumout\ : std_logic;
SIGNAL \L3|L0|Add0~26\ : std_logic;
SIGNAL \L3|L0|Add0~29_sumout\ : std_logic;
SIGNAL \L3|L0|Add0~30\ : std_logic;
SIGNAL \L3|L0|Add0~33_sumout\ : std_logic;
SIGNAL \L3|L0|Add0~34\ : std_logic;
SIGNAL \L3|L0|Add0~37_sumout\ : std_logic;
SIGNAL \L3|L0|Add0~38\ : std_logic;
SIGNAL \L3|L0|Add0~41_sumout\ : std_logic;
SIGNAL \L3|below_equal_zero~1_combout\ : std_logic;
SIGNAL \L3|below_equal_zero~0_combout\ : std_logic;
SIGNAL \L4|L0|process_0~0_combout\ : std_logic;
SIGNAL \L4|L0|EA.S1~DUPLICATE_q\ : std_logic;
SIGNAL \L4|L0|Selector10~0_combout\ : std_logic;
SIGNAL \L4|L0|PE.B1~q\ : std_logic;
SIGNAL \L4|L0|EA.B1~q\ : std_logic;
SIGNAL \L4|L0|Selector9~0_combout\ : std_logic;
SIGNAL \L4|L0|PE.S2~q\ : std_logic;
SIGNAL \L4|L0|EA.S2~q\ : std_logic;
SIGNAL \L4|L0|Selector11~0_combout\ : std_logic;
SIGNAL \L4|L0|PE.B2~q\ : std_logic;
SIGNAL \L4|L0|EA.B2~q\ : std_logic;
SIGNAL \L4|L0|PE~15_combout\ : std_logic;
SIGNAL \L4|L0|PE.S3~q\ : std_logic;
SIGNAL \L4|L0|EA.S3~q\ : std_logic;
SIGNAL \L4|L0|Selector12~0_combout\ : std_logic;
SIGNAL \L4|L0|PE.B3~q\ : std_logic;
SIGNAL \L4|L0|EA.B3~q\ : std_logic;
SIGNAL \L4|L0|PE~17_combout\ : std_logic;
SIGNAL \L4|L0|PE.S4~q\ : std_logic;
SIGNAL \L4|L0|EA.S4~q\ : std_logic;
SIGNAL \L4|L0|Selector13~0_combout\ : std_logic;
SIGNAL \L4|L0|PE.B4~q\ : std_logic;
SIGNAL \L4|L0|EA.B4~q\ : std_logic;
SIGNAL \L4|L0|PE~16_combout\ : std_logic;
SIGNAL \L4|L0|PE.S5~q\ : std_logic;
SIGNAL \L4|L0|EA.S5~q\ : std_logic;
SIGNAL \L4|L0|Selector14~0_combout\ : std_logic;
SIGNAL \L4|L0|PE.B5~q\ : std_logic;
SIGNAL \L4|L0|EA.B5~q\ : std_logic;
SIGNAL \L4|L0|PE~14_combout\ : std_logic;
SIGNAL \L4|L0|PE.S6~q\ : std_logic;
SIGNAL \L4|L0|EA.S6~q\ : std_logic;
SIGNAL \L4|L0|rounds[3]~DUPLICATE_q\ : std_logic;
SIGNAL \L4|L0|EA.S1~q\ : std_logic;
SIGNAL \L4|L0|Selector17~0_combout\ : std_logic;
SIGNAL \L4|L0|Selector15~0_combout\ : std_logic;
SIGNAL \L4|L0|Selector18~0_combout\ : std_logic;
SIGNAL \L4|L0|Selector16~0_combout\ : std_logic;
SIGNAL \L4|L0|PE~18_combout\ : std_logic;
SIGNAL \L4|L0|PE.S0~q\ : std_logic;
SIGNAL \L4|L0|EA.S0~DUPLICATE_q\ : std_logic;
SIGNAL \L4|L0|Selector7~0_combout\ : std_logic;
SIGNAL \L4|L0|reset_reg~q\ : std_logic;
SIGNAL \L1|L2|process_0~0_combout\ : std_logic;
SIGNAL \L0|EA.D1~q\ : std_logic;
SIGNAL \L0|Add0~93_sumout\ : std_logic;
SIGNAL \L0|Selector23~0_combout\ : std_logic;
SIGNAL \L0|Add0~94\ : std_logic;
SIGNAL \L0|Add0~89_sumout\ : std_logic;
SIGNAL \L0|Selector22~0_combout\ : std_logic;
SIGNAL \L0|Add0~90\ : std_logic;
SIGNAL \L0|Add0~85_sumout\ : std_logic;
SIGNAL \L0|Selector21~0_combout\ : std_logic;
SIGNAL \L0|Add0~86\ : std_logic;
SIGNAL \L0|Add0~81_sumout\ : std_logic;
SIGNAL \L0|Selector20~0_combout\ : std_logic;
SIGNAL \L0|Add0~82\ : std_logic;
SIGNAL \L0|Add0~21_sumout\ : std_logic;
SIGNAL \L0|Selector19~0_combout\ : std_logic;
SIGNAL \L0|delay[4]~DUPLICATE_q\ : std_logic;
SIGNAL \L0|Add0~22\ : std_logic;
SIGNAL \L0|Add0~13_sumout\ : std_logic;
SIGNAL \L0|Selector18~0_combout\ : std_logic;
SIGNAL \L0|Add0~14\ : std_logic;
SIGNAL \L0|Add0~17_sumout\ : std_logic;
SIGNAL \L0|Selector17~0_combout\ : std_logic;
SIGNAL \L0|Add0~18\ : std_logic;
SIGNAL \L0|Add0~9_sumout\ : std_logic;
SIGNAL \L0|Selector16~0_combout\ : std_logic;
SIGNAL \L0|Add0~10\ : std_logic;
SIGNAL \L0|Add0~29_sumout\ : std_logic;
SIGNAL \L0|Selector15~0_combout\ : std_logic;
SIGNAL \L0|delay[8]~DUPLICATE_q\ : std_logic;
SIGNAL \L0|Add0~30\ : std_logic;
SIGNAL \L0|Add0~33_sumout\ : std_logic;
SIGNAL \L0|Selector14~0_combout\ : std_logic;
SIGNAL \L0|Add0~34\ : std_logic;
SIGNAL \L0|Add0~37_sumout\ : std_logic;
SIGNAL \L0|Selector13~0_combout\ : std_logic;
SIGNAL \L0|Add0~38\ : std_logic;
SIGNAL \L0|Add0~25_sumout\ : std_logic;
SIGNAL \L0|Selector12~0_combout\ : std_logic;
SIGNAL \L0|Add0~26\ : std_logic;
SIGNAL \L0|Add0~41_sumout\ : std_logic;
SIGNAL \L0|Selector11~0_combout\ : std_logic;
SIGNAL \L0|Add0~42\ : std_logic;
SIGNAL \L0|Add0~45_sumout\ : std_logic;
SIGNAL \L0|Selector10~0_combout\ : std_logic;
SIGNAL \L0|Add0~46\ : std_logic;
SIGNAL \L0|Add0~5_sumout\ : std_logic;
SIGNAL \L0|Selector9~0_combout\ : std_logic;
SIGNAL \L0|Add0~6\ : std_logic;
SIGNAL \L0|Add0~57_sumout\ : std_logic;
SIGNAL \L0|Selector8~0_combout\ : std_logic;
SIGNAL \L0|delay[15]~DUPLICATE_q\ : std_logic;
SIGNAL \L0|Add0~58\ : std_logic;
SIGNAL \L0|Add0~53_sumout\ : std_logic;
SIGNAL \L0|Selector7~0_combout\ : std_logic;
SIGNAL \L0|delay[16]~DUPLICATE_q\ : std_logic;
SIGNAL \L0|Add0~54\ : std_logic;
SIGNAL \L0|Add0~49_sumout\ : std_logic;
SIGNAL \L0|Selector6~0_combout\ : std_logic;
SIGNAL \L0|LessThan0~5_combout\ : std_logic;
SIGNAL \L0|delay[23]~DUPLICATE_q\ : std_logic;
SIGNAL \L0|Add0~50\ : std_logic;
SIGNAL \L0|Add0~69_sumout\ : std_logic;
SIGNAL \L0|Selector5~0_combout\ : std_logic;
SIGNAL \L0|Add0~70\ : std_logic;
SIGNAL \L0|Add0~65_sumout\ : std_logic;
SIGNAL \L0|Selector4~0_combout\ : std_logic;
SIGNAL \L0|Add0~66\ : std_logic;
SIGNAL \L0|Add0~73_sumout\ : std_logic;
SIGNAL \L0|Selector3~0_combout\ : std_logic;
SIGNAL \L0|delay[20]~DUPLICATE_q\ : std_logic;
SIGNAL \L0|Add0~74\ : std_logic;
SIGNAL \L0|Add0~77_sumout\ : std_logic;
SIGNAL \L0|Selector2~0_combout\ : std_logic;
SIGNAL \L0|delay[21]~DUPLICATE_q\ : std_logic;
SIGNAL \L0|Add0~78\ : std_logic;
SIGNAL \L0|Add0~62\ : std_logic;
SIGNAL \L0|Add0~1_sumout\ : std_logic;
SIGNAL \L0|Selector0~0_combout\ : std_logic;
SIGNAL \L0|LessThan0~6_combout\ : std_logic;
SIGNAL \L0|LessThan0~0_combout\ : std_logic;
SIGNAL \L0|LessThan0~1_combout\ : std_logic;
SIGNAL \L0|LessThan0~2_combout\ : std_logic;
SIGNAL \L0|LessThan0~3_combout\ : std_logic;
SIGNAL \L0|LessThan0~4_combout\ : std_logic;
SIGNAL \L0|PE~8_combout\ : std_logic;
SIGNAL \L0|PE.D2~q\ : std_logic;
SIGNAL \L0|EA.D2~q\ : std_logic;
SIGNAL \L0|Add0~61_sumout\ : std_logic;
SIGNAL \L0|Selector1~0_combout\ : std_logic;
SIGNAL \L0|LessThan0~7_combout\ : std_logic;
SIGNAL \L0|PE~6_combout\ : std_logic;
SIGNAL \L0|PE.D3~q\ : std_logic;
SIGNAL \L0|EA.D3~feeder_combout\ : std_logic;
SIGNAL \L0|EA.D3~q\ : std_logic;
SIGNAL \L0|PE.D0~0_combout\ : std_logic;
SIGNAL \L0|PE.D0~q\ : std_logic;
SIGNAL \L0|EA.D0~feeder_combout\ : std_logic;
SIGNAL \L0|EA.D0~q\ : std_logic;
SIGNAL \L0|divided_clock~q\ : std_logic;
SIGNAL \L1|L0|EA.S8~q\ : std_logic;
SIGNAL \L1|L0|WideOr1~0_combout\ : std_logic;
SIGNAL \L1|L0|WideOr2~combout\ : std_logic;
SIGNAL \L1|L0|WideOr3~combout\ : std_logic;
SIGNAL \L1|L3|F[0]~0_combout\ : std_logic;
SIGNAL \L1|L3|F[1]~1_combout\ : std_logic;
SIGNAL \L1|L3|F[2]~2_combout\ : std_logic;
SIGNAL \L1|L3|F[3]~3_combout\ : std_logic;
SIGNAL \L1|L3|F[4]~4_combout\ : std_logic;
SIGNAL \L1|L3|F[5]~5_combout\ : std_logic;
SIGNAL \L1|L3|F[6]~6_combout\ : std_logic;
SIGNAL \L1|L1|WideOr3~combout\ : std_logic;
SIGNAL \L1|L1|WideOr1~combout\ : std_logic;
SIGNAL \L1|L4|F[0]~0_combout\ : std_logic;
SIGNAL \L1|L4|F[1]~1_combout\ : std_logic;
SIGNAL \L1|L4|F[2]~2_combout\ : std_logic;
SIGNAL \L1|L4|F[3]~3_combout\ : std_logic;
SIGNAL \L1|L4|F[4]~4_combout\ : std_logic;
SIGNAL \L1|L4|F[5]~5_combout\ : std_logic;
SIGNAL \L1|L4|F[6]~6_combout\ : std_logic;
SIGNAL \L1|L2|WideOr3~combout\ : std_logic;
SIGNAL \L1|L2|WideOr1~combout\ : std_logic;
SIGNAL \L1|L5|F[0]~0_combout\ : std_logic;
SIGNAL \L1|L5|F[1]~1_combout\ : std_logic;
SIGNAL \L1|L5|F[2]~2_combout\ : std_logic;
SIGNAL \L1|L5|F[3]~3_combout\ : std_logic;
SIGNAL \L1|L5|F[4]~4_combout\ : std_logic;
SIGNAL \L1|L5|F[5]~5_combout\ : std_logic;
SIGNAL \L1|L5|F[6]~6_combout\ : std_logic;
SIGNAL \L4|L1|F[0]~0_combout\ : std_logic;
SIGNAL \L4|L1|F[1]~1_combout\ : std_logic;
SIGNAL \L4|L0|rounds[0]~DUPLICATE_q\ : std_logic;
SIGNAL \L4|L1|F[2]~2_combout\ : std_logic;
SIGNAL \L4|L1|F[3]~3_combout\ : std_logic;
SIGNAL \L4|L1|F[4]~4_combout\ : std_logic;
SIGNAL \L4|L1|F[5]~5_combout\ : std_logic;
SIGNAL \L4|L1|F[6]~6_combout\ : std_logic;
SIGNAL \L4|L0|EA.B4~DUPLICATE_q\ : std_logic;
SIGNAL \L4|L0|EA.B2~DUPLICATE_q\ : std_logic;
SIGNAL \L4|L0|WideOr0~combout\ : std_logic;
SIGNAL \L4|L0|Selector2~0_combout\ : std_logic;
SIGNAL \L4|L0|Selector0~0_combout\ : std_logic;
SIGNAL \L4|L0|Selector1~0_combout\ : std_logic;
SIGNAL \L4|L2|F[0]~0_combout\ : std_logic;
SIGNAL \L4|L2|F[1]~1_combout\ : std_logic;
SIGNAL \L4|L2|F[2]~2_combout\ : std_logic;
SIGNAL \L4|L2|F[3]~3_combout\ : std_logic;
SIGNAL \L4|L2|F[4]~4_combout\ : std_logic;
SIGNAL \rtl~4_combout\ : std_logic;
SIGNAL \L4|L2|F[6]~5_combout\ : std_logic;
SIGNAL \L4|L0|rounds\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \L4|L0|current_state\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \L3|L1|Q\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \L0|delay\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \L0|limit\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \L4|L0|ALT_INV_EA.S5~q\ : std_logic;
SIGNAL \L4|L0|ALT_INV_EA.S3~q\ : std_logic;
SIGNAL \L4|L0|ALT_INV_EA.S2~q\ : std_logic;
SIGNAL \L4|L0|ALT_INV_WideOr0~combout\ : std_logic;
SIGNAL \L4|L0|ALT_INV_EA.B5~q\ : std_logic;
SIGNAL \L4|L0|ALT_INV_EA.B4~q\ : std_logic;
SIGNAL \L4|L0|ALT_INV_EA.B3~q\ : std_logic;
SIGNAL \L4|L0|ALT_INV_EA.B2~q\ : std_logic;
SIGNAL \L4|L0|ALT_INV_EA.B1~q\ : std_logic;
SIGNAL \L4|L0|ALT_INV_EA.S1~q\ : std_logic;
SIGNAL \L4|L0|ALT_INV_EA.S6~q\ : std_logic;
SIGNAL \L4|L0|ALT_INV_enable_c2~q\ : std_logic;
SIGNAL \L1|L2|ALT_INV_EA.S15~q\ : std_logic;
SIGNAL \L4|L0|ALT_INV_enable_c1~q\ : std_logic;
SIGNAL \L1|L1|ALT_INV_EA.S15~q\ : std_logic;
SIGNAL \L4|L0|ALT_INV_enable_c0~q\ : std_logic;
SIGNAL \L1|L2|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \L4|L0|ALT_INV_reset_reg~q\ : std_logic;
SIGNAL \L0|ALT_INV_divided_clock~q\ : std_logic;
SIGNAL \L1|L0|ALT_INV_EA.S15~q\ : std_logic;
SIGNAL \L3|L1|ALT_INV_Q\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \L4|L0|ALT_INV_current_state\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \L4|L1|ALT_INV_F[6]~6_combout\ : std_logic;
SIGNAL \L4|L1|ALT_INV_F[2]~2_combout\ : std_logic;
SIGNAL \L4|L0|ALT_INV_rounds\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \L1|L5|ALT_INV_F[2]~2_combout\ : std_logic;
SIGNAL \L1|L2|ALT_INV_WideOr1~combout\ : std_logic;
SIGNAL \L1|L2|ALT_INV_WideOr1~1_combout\ : std_logic;
SIGNAL \L1|L2|ALT_INV_EA.S11~q\ : std_logic;
SIGNAL \L1|L2|ALT_INV_WideOr0~combout\ : std_logic;
SIGNAL \L1|L2|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \L1|L2|ALT_INV_EA.S7~q\ : std_logic;
SIGNAL \L1|L2|ALT_INV_EA.S3~q\ : std_logic;
SIGNAL \L1|L2|ALT_INV_WideOr2~combout\ : std_logic;
SIGNAL \L1|L2|ALT_INV_WideOr2~0_combout\ : std_logic;
SIGNAL \L1|L2|ALT_INV_EA.S13~q\ : std_logic;
SIGNAL \L1|L2|ALT_INV_EA.S5~q\ : std_logic;
SIGNAL \L1|L2|ALT_INV_WideOr1~0_combout\ : std_logic;
SIGNAL \L1|L2|ALT_INV_EA.S9~q\ : std_logic;
SIGNAL \L1|L2|ALT_INV_EA.S1~q\ : std_logic;
SIGNAL \L1|L2|ALT_INV_WideOr3~combout\ : std_logic;
SIGNAL \L1|L2|ALT_INV_WideOr3~1_combout\ : std_logic;
SIGNAL \L1|L2|ALT_INV_EA.S14~q\ : std_logic;
SIGNAL \L1|L2|ALT_INV_EA.S12~q\ : std_logic;
SIGNAL \L1|L2|ALT_INV_EA.S10~q\ : std_logic;
SIGNAL \L1|L2|ALT_INV_EA.S8~q\ : std_logic;
SIGNAL \L1|L2|ALT_INV_WideOr3~0_combout\ : std_logic;
SIGNAL \L1|L2|ALT_INV_EA.S6~q\ : std_logic;
SIGNAL \L1|L2|ALT_INV_EA.S4~q\ : std_logic;
SIGNAL \L1|L2|ALT_INV_EA.S2~q\ : std_logic;
SIGNAL \L1|L2|ALT_INV_EA.S0~q\ : std_logic;
SIGNAL \L1|L4|ALT_INV_F[2]~2_combout\ : std_logic;
SIGNAL \L1|L1|ALT_INV_WideOr1~combout\ : std_logic;
SIGNAL \L1|L1|ALT_INV_WideOr1~1_combout\ : std_logic;
SIGNAL \L1|L1|ALT_INV_EA.S11~q\ : std_logic;
SIGNAL \L1|L1|ALT_INV_WideOr0~combout\ : std_logic;
SIGNAL \L1|L1|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \L1|L1|ALT_INV_EA.S7~q\ : std_logic;
SIGNAL \L1|L1|ALT_INV_EA.S3~q\ : std_logic;
SIGNAL \L1|L1|ALT_INV_WideOr2~combout\ : std_logic;
SIGNAL \L1|L1|ALT_INV_WideOr2~0_combout\ : std_logic;
SIGNAL \L1|L1|ALT_INV_EA.S13~q\ : std_logic;
SIGNAL \L1|L1|ALT_INV_EA.S5~q\ : std_logic;
SIGNAL \L1|L1|ALT_INV_WideOr1~0_combout\ : std_logic;
SIGNAL \L1|L1|ALT_INV_EA.S9~q\ : std_logic;
SIGNAL \L1|L1|ALT_INV_EA.S1~q\ : std_logic;
SIGNAL \L1|L1|ALT_INV_WideOr3~combout\ : std_logic;
SIGNAL \L1|L1|ALT_INV_WideOr3~1_combout\ : std_logic;
SIGNAL \L1|L1|ALT_INV_EA.S14~q\ : std_logic;
SIGNAL \L1|L1|ALT_INV_EA.S12~q\ : std_logic;
SIGNAL \L1|L1|ALT_INV_EA.S10~q\ : std_logic;
SIGNAL \L1|L1|ALT_INV_EA.S8~q\ : std_logic;
SIGNAL \L1|L1|ALT_INV_WideOr3~0_combout\ : std_logic;
SIGNAL \L1|L1|ALT_INV_EA.S6~q\ : std_logic;
SIGNAL \L1|L1|ALT_INV_EA.S4~q\ : std_logic;
SIGNAL \L1|L1|ALT_INV_EA.S2~q\ : std_logic;
SIGNAL \L1|L1|ALT_INV_EA.S0~q\ : std_logic;
SIGNAL \L1|L3|ALT_INV_F[2]~2_combout\ : std_logic;
SIGNAL \L1|L0|ALT_INV_WideOr1~combout\ : std_logic;
SIGNAL \L1|L0|ALT_INV_WideOr1~1_combout\ : std_logic;
SIGNAL \L1|L0|ALT_INV_EA.S11~q\ : std_logic;
SIGNAL \L1|L0|ALT_INV_WideOr0~combout\ : std_logic;
SIGNAL \L1|L0|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \L1|L0|ALT_INV_EA.S7~q\ : std_logic;
SIGNAL \L1|L0|ALT_INV_EA.S3~q\ : std_logic;
SIGNAL \L1|L0|ALT_INV_WideOr2~combout\ : std_logic;
SIGNAL \L1|L0|ALT_INV_WideOr2~0_combout\ : std_logic;
SIGNAL \L1|L0|ALT_INV_EA.S13~q\ : std_logic;
SIGNAL \L1|L0|ALT_INV_EA.S5~q\ : std_logic;
SIGNAL \L1|L0|ALT_INV_WideOr1~0_combout\ : std_logic;
SIGNAL \L1|L0|ALT_INV_EA.S9~q\ : std_logic;
SIGNAL \L1|L0|ALT_INV_EA.S1~q\ : std_logic;
SIGNAL \L1|L0|ALT_INV_WideOr3~combout\ : std_logic;
SIGNAL \L1|L0|ALT_INV_WideOr3~1_combout\ : std_logic;
SIGNAL \L1|L0|ALT_INV_EA.S14~q\ : std_logic;
SIGNAL \L1|L0|ALT_INV_EA.S12~q\ : std_logic;
SIGNAL \L1|L0|ALT_INV_EA.S10~q\ : std_logic;
SIGNAL \L1|L0|ALT_INV_EA.S8~q\ : std_logic;
SIGNAL \L1|L0|ALT_INV_WideOr3~0_combout\ : std_logic;
SIGNAL \L1|L0|ALT_INV_EA.S6~q\ : std_logic;
SIGNAL \L1|L0|ALT_INV_EA.S4~q\ : std_logic;
SIGNAL \L1|L0|ALT_INV_EA.S2~q\ : std_logic;
SIGNAL \L1|L0|ALT_INV_EA.S0~q\ : std_logic;
SIGNAL \L0|ALT_INV_Add0~93_sumout\ : std_logic;
SIGNAL \L0|ALT_INV_Add0~89_sumout\ : std_logic;
SIGNAL \L0|ALT_INV_Add0~85_sumout\ : std_logic;
SIGNAL \L0|ALT_INV_Add0~81_sumout\ : std_logic;
SIGNAL \L0|ALT_INV_Add0~77_sumout\ : std_logic;
SIGNAL \L0|ALT_INV_Add0~73_sumout\ : std_logic;
SIGNAL \L0|ALT_INV_Add0~69_sumout\ : std_logic;
SIGNAL \L0|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \L0|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \L0|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \L0|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \L0|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \L0|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \L0|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \L0|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \L0|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \L0|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \L0|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \L0|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \L0|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \L0|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \L0|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \L0|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \L0|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \L3|L0|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \L3|L0|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \L3|L0|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \L3|L0|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \L0|ALT_INV_delay[21]~DUPLICATE_q\ : std_logic;
SIGNAL \L0|ALT_INV_delay[20]~DUPLICATE_q\ : std_logic;
SIGNAL \L0|ALT_INV_delay[15]~DUPLICATE_q\ : std_logic;
SIGNAL \L0|ALT_INV_delay[16]~DUPLICATE_q\ : std_logic;
SIGNAL \L0|ALT_INV_delay[8]~DUPLICATE_q\ : std_logic;
SIGNAL \L0|ALT_INV_delay[4]~DUPLICATE_q\ : std_logic;
SIGNAL \L0|ALT_INV_delay[23]~DUPLICATE_q\ : std_logic;
SIGNAL \L4|L0|ALT_INV_habilit_credit~DUPLICATE_q\ : std_logic;
SIGNAL \L4|L0|ALT_INV_EA.S0~DUPLICATE_q\ : std_logic;
SIGNAL \L4|L0|ALT_INV_EA.S4~DUPLICATE_q\ : std_logic;
SIGNAL \L4|L0|ALT_INV_EA.S5~DUPLICATE_q\ : std_logic;
SIGNAL \L4|L0|ALT_INV_EA.S3~DUPLICATE_q\ : std_logic;
SIGNAL \L4|L0|ALT_INV_EA.B4~DUPLICATE_q\ : std_logic;
SIGNAL \L4|L0|ALT_INV_EA.B2~DUPLICATE_q\ : std_logic;
SIGNAL \L4|L0|ALT_INV_EA.S1~DUPLICATE_q\ : std_logic;
SIGNAL \L4|L0|ALT_INV_rounds[3]~DUPLICATE_q\ : std_logic;
SIGNAL \L4|L0|ALT_INV_rounds[2]~DUPLICATE_q\ : std_logic;
SIGNAL \L4|L0|ALT_INV_rounds[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_clock_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_clock_50~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \L0|ALT_INV_divided_clock~0_combout\ : std_logic;
SIGNAL \L0|ALT_INV_delay\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \L0|ALT_INV_EA.D2~q\ : std_logic;
SIGNAL \L0|ALT_INV_LessThan0~7_combout\ : std_logic;
SIGNAL \L0|ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \L0|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \L0|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \L0|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \L0|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \L0|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \L0|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \L0|ALT_INV_limit\ : std_logic_vector(14 DOWNTO 11);
SIGNAL \L0|ALT_INV_EA.D1~q\ : std_logic;
SIGNAL \L0|ALT_INV_PE.D3~q\ : std_logic;
SIGNAL \L0|ALT_INV_EA.D3~q\ : std_logic;
SIGNAL \L4|L0|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \L0|ALT_INV_PE.D0~q\ : std_logic;
SIGNAL \L2|ALT_INV_WideOr0~combout\ : std_logic;
SIGNAL \L2|ALT_INV_WideOr1~combout\ : std_logic;
SIGNAL \L2|ALT_INV_WideOr2~0_combout\ : std_logic;
SIGNAL \L2|ALT_INV_WideOr3~combout\ : std_logic;
SIGNAL \L2|ALT_INV_WideOr4~combout\ : std_logic;
SIGNAL \L2|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \L2|ALT_INV_WideOr5~combout\ : std_logic;
SIGNAL \L2|ALT_INV_WideOr5~0_combout\ : std_logic;
SIGNAL \L2|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \L2|ALT_INV_WideNor0~combout\ : std_logic;
SIGNAL \L2|ALT_INV_WideOr6~combout\ : std_logic;
SIGNAL \L2|ALT_INV_WideOr3~1_combout\ : std_logic;
SIGNAL \L2|ALT_INV_Equal14~0_combout\ : std_logic;
SIGNAL \L2|ALT_INV_WideNor0~0_combout\ : std_logic;
SIGNAL \L2|ALT_INV_WideOr1~0_combout\ : std_logic;
SIGNAL \L2|ALT_INV_Equal16~1_combout\ : std_logic;
SIGNAL \L2|ALT_INV_Equal16~0_combout\ : std_logic;
SIGNAL \L2|ALT_INV_WideOr6~0_combout\ : std_logic;
SIGNAL \L2|ALT_INV_WideOr3~0_combout\ : std_logic;
SIGNAL \L2|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \L2|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \L2|ALT_INV_Equal4~4_combout\ : std_logic;
SIGNAL \L2|ALT_INV_WideOr7~combout\ : std_logic;
SIGNAL \L2|ALT_INV_Equal12~1_combout\ : std_logic;
SIGNAL \L2|ALT_INV_Equal12~0_combout\ : std_logic;
SIGNAL \L2|ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \L2|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \L1|L5|ALT_INV_F[2]~7_combout\ : std_logic;
SIGNAL \L2|ALT_INV_Equal4~3_combout\ : std_logic;
SIGNAL \L2|ALT_INV_Equal4~2_combout\ : std_logic;
SIGNAL \L2|ALT_INV_Equal4~1_combout\ : std_logic;
SIGNAL \L2|ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \L4|L0|ALT_INV_habilit_credit~q\ : std_logic;
SIGNAL \L4|L0|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \L3|ALT_INV_below_equal_zero~1_combout\ : std_logic;
SIGNAL \L3|ALT_INV_below_equal_zero~0_combout\ : std_logic;
SIGNAL \L4|L0|ALT_INV_EA.S0~q\ : std_logic;
SIGNAL \L0|ALT_INV_EA.D0~q\ : std_logic;
SIGNAL \L4|L0|ALT_INV_EA.S4~q\ : std_logic;

BEGIN

HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_SW <= SW;
LEDR <= ww_LEDR;
ww_KEY <= KEY;
ww_clock_50 <= clock_50;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\L4|L0|ALT_INV_EA.S5~q\ <= NOT \L4|L0|EA.S5~q\;
\L4|L0|ALT_INV_EA.S3~q\ <= NOT \L4|L0|EA.S3~q\;
\L4|L0|ALT_INV_EA.S2~q\ <= NOT \L4|L0|EA.S2~q\;
\L4|L0|ALT_INV_WideOr0~combout\ <= NOT \L4|L0|WideOr0~combout\;
\L4|L0|ALT_INV_EA.B5~q\ <= NOT \L4|L0|EA.B5~q\;
\L4|L0|ALT_INV_EA.B4~q\ <= NOT \L4|L0|EA.B4~q\;
\L4|L0|ALT_INV_EA.B3~q\ <= NOT \L4|L0|EA.B3~q\;
\L4|L0|ALT_INV_EA.B2~q\ <= NOT \L4|L0|EA.B2~q\;
\L4|L0|ALT_INV_EA.B1~q\ <= NOT \L4|L0|EA.B1~q\;
\L4|L0|ALT_INV_EA.S1~q\ <= NOT \L4|L0|EA.S1~q\;
\L4|L0|ALT_INV_EA.S6~q\ <= NOT \L4|L0|EA.S6~q\;
\L4|L0|ALT_INV_enable_c2~q\ <= NOT \L4|L0|enable_c2~q\;
\L1|L2|ALT_INV_EA.S15~q\ <= NOT \L1|L2|EA.S15~q\;
\L4|L0|ALT_INV_enable_c1~q\ <= NOT \L4|L0|enable_c1~q\;
\L1|L1|ALT_INV_EA.S15~q\ <= NOT \L1|L1|EA.S15~q\;
\L4|L0|ALT_INV_enable_c0~q\ <= NOT \L4|L0|enable_c0~q\;
\L1|L2|ALT_INV_process_0~0_combout\ <= NOT \L1|L2|process_0~0_combout\;
\L4|L0|ALT_INV_reset_reg~q\ <= NOT \L4|L0|reset_reg~q\;
\L0|ALT_INV_divided_clock~q\ <= NOT \L0|divided_clock~q\;
\L1|L0|ALT_INV_EA.S15~q\ <= NOT \L1|L0|EA.S15~q\;
\L3|L1|ALT_INV_Q\(9) <= NOT \L3|L1|Q\(9);
\L3|L1|ALT_INV_Q\(8) <= NOT \L3|L1|Q\(8);
\L3|L1|ALT_INV_Q\(7) <= NOT \L3|L1|Q\(7);
\L3|L1|ALT_INV_Q\(6) <= NOT \L3|L1|Q\(6);
\L3|L1|ALT_INV_Q\(5) <= NOT \L3|L1|Q\(5);
\L3|L1|ALT_INV_Q\(4) <= NOT \L3|L1|Q\(4);
\L3|L1|ALT_INV_Q\(3) <= NOT \L3|L1|Q\(3);
\L3|L1|ALT_INV_Q\(2) <= NOT \L3|L1|Q\(2);
\L3|L1|ALT_INV_Q\(1) <= NOT \L3|L1|Q\(1);
\L3|L1|ALT_INV_Q\(0) <= NOT \L3|L1|Q\(0);
\L4|L0|ALT_INV_current_state\(2) <= NOT \L4|L0|current_state\(2);
\L4|L0|ALT_INV_current_state\(0) <= NOT \L4|L0|current_state\(0);
\L4|L0|ALT_INV_current_state\(1) <= NOT \L4|L0|current_state\(1);
\L4|L1|ALT_INV_F[6]~6_combout\ <= NOT \L4|L1|F[6]~6_combout\;
\L4|L1|ALT_INV_F[2]~2_combout\ <= NOT \L4|L1|F[2]~2_combout\;
\L4|L0|ALT_INV_rounds\(3) <= NOT \L4|L0|rounds\(3);
\L4|L0|ALT_INV_rounds\(2) <= NOT \L4|L0|rounds\(2);
\L4|L0|ALT_INV_rounds\(1) <= NOT \L4|L0|rounds\(1);
\L4|L0|ALT_INV_rounds\(0) <= NOT \L4|L0|rounds\(0);
\L1|L5|ALT_INV_F[2]~2_combout\ <= NOT \L1|L5|F[2]~2_combout\;
\L1|L2|ALT_INV_WideOr1~combout\ <= NOT \L1|L2|WideOr1~combout\;
\L1|L2|ALT_INV_WideOr1~1_combout\ <= NOT \L1|L2|WideOr1~1_combout\;
\L1|L2|ALT_INV_EA.S11~q\ <= NOT \L1|L2|EA.S11~q\;
\L1|L2|ALT_INV_WideOr0~combout\ <= NOT \L1|L2|WideOr0~combout\;
\L1|L2|ALT_INV_WideOr0~0_combout\ <= NOT \L1|L2|WideOr0~0_combout\;
\L1|L2|ALT_INV_EA.S7~q\ <= NOT \L1|L2|EA.S7~q\;
\L1|L2|ALT_INV_EA.S3~q\ <= NOT \L1|L2|EA.S3~q\;
\L1|L2|ALT_INV_WideOr2~combout\ <= NOT \L1|L2|WideOr2~combout\;
\L1|L2|ALT_INV_WideOr2~0_combout\ <= NOT \L1|L2|WideOr2~0_combout\;
\L1|L2|ALT_INV_EA.S13~q\ <= NOT \L1|L2|EA.S13~q\;
\L1|L2|ALT_INV_EA.S5~q\ <= NOT \L1|L2|EA.S5~q\;
\L1|L2|ALT_INV_WideOr1~0_combout\ <= NOT \L1|L2|WideOr1~0_combout\;
\L1|L2|ALT_INV_EA.S9~q\ <= NOT \L1|L2|EA.S9~q\;
\L1|L2|ALT_INV_EA.S1~q\ <= NOT \L1|L2|EA.S1~q\;
\L1|L2|ALT_INV_WideOr3~combout\ <= NOT \L1|L2|WideOr3~combout\;
\L1|L2|ALT_INV_WideOr3~1_combout\ <= NOT \L1|L2|WideOr3~1_combout\;
\L1|L2|ALT_INV_EA.S14~q\ <= NOT \L1|L2|EA.S14~q\;
\L1|L2|ALT_INV_EA.S12~q\ <= NOT \L1|L2|EA.S12~q\;
\L1|L2|ALT_INV_EA.S10~q\ <= NOT \L1|L2|EA.S10~q\;
\L1|L2|ALT_INV_EA.S8~q\ <= NOT \L1|L2|EA.S8~q\;
\L1|L2|ALT_INV_WideOr3~0_combout\ <= NOT \L1|L2|WideOr3~0_combout\;
\L1|L2|ALT_INV_EA.S6~q\ <= NOT \L1|L2|EA.S6~q\;
\L1|L2|ALT_INV_EA.S4~q\ <= NOT \L1|L2|EA.S4~q\;
\L1|L2|ALT_INV_EA.S2~q\ <= NOT \L1|L2|EA.S2~q\;
\L1|L2|ALT_INV_EA.S0~q\ <= NOT \L1|L2|EA.S0~q\;
\L1|L4|ALT_INV_F[2]~2_combout\ <= NOT \L1|L4|F[2]~2_combout\;
\L1|L1|ALT_INV_WideOr1~combout\ <= NOT \L1|L1|WideOr1~combout\;
\L1|L1|ALT_INV_WideOr1~1_combout\ <= NOT \L1|L1|WideOr1~1_combout\;
\L1|L1|ALT_INV_EA.S11~q\ <= NOT \L1|L1|EA.S11~q\;
\L1|L1|ALT_INV_WideOr0~combout\ <= NOT \L1|L1|WideOr0~combout\;
\L1|L1|ALT_INV_WideOr0~0_combout\ <= NOT \L1|L1|WideOr0~0_combout\;
\L1|L1|ALT_INV_EA.S7~q\ <= NOT \L1|L1|EA.S7~q\;
\L1|L1|ALT_INV_EA.S3~q\ <= NOT \L1|L1|EA.S3~q\;
\L1|L1|ALT_INV_WideOr2~combout\ <= NOT \L1|L1|WideOr2~combout\;
\L1|L1|ALT_INV_WideOr2~0_combout\ <= NOT \L1|L1|WideOr2~0_combout\;
\L1|L1|ALT_INV_EA.S13~q\ <= NOT \L1|L1|EA.S13~q\;
\L1|L1|ALT_INV_EA.S5~q\ <= NOT \L1|L1|EA.S5~q\;
\L1|L1|ALT_INV_WideOr1~0_combout\ <= NOT \L1|L1|WideOr1~0_combout\;
\L1|L1|ALT_INV_EA.S9~q\ <= NOT \L1|L1|EA.S9~q\;
\L1|L1|ALT_INV_EA.S1~q\ <= NOT \L1|L1|EA.S1~q\;
\L1|L1|ALT_INV_WideOr3~combout\ <= NOT \L1|L1|WideOr3~combout\;
\L1|L1|ALT_INV_WideOr3~1_combout\ <= NOT \L1|L1|WideOr3~1_combout\;
\L1|L1|ALT_INV_EA.S14~q\ <= NOT \L1|L1|EA.S14~q\;
\L1|L1|ALT_INV_EA.S12~q\ <= NOT \L1|L1|EA.S12~q\;
\L1|L1|ALT_INV_EA.S10~q\ <= NOT \L1|L1|EA.S10~q\;
\L1|L1|ALT_INV_EA.S8~q\ <= NOT \L1|L1|EA.S8~q\;
\L1|L1|ALT_INV_WideOr3~0_combout\ <= NOT \L1|L1|WideOr3~0_combout\;
\L1|L1|ALT_INV_EA.S6~q\ <= NOT \L1|L1|EA.S6~q\;
\L1|L1|ALT_INV_EA.S4~q\ <= NOT \L1|L1|EA.S4~q\;
\L1|L1|ALT_INV_EA.S2~q\ <= NOT \L1|L1|EA.S2~q\;
\L1|L1|ALT_INV_EA.S0~q\ <= NOT \L1|L1|EA.S0~q\;
\L1|L3|ALT_INV_F[2]~2_combout\ <= NOT \L1|L3|F[2]~2_combout\;
\L1|L0|ALT_INV_WideOr1~combout\ <= NOT \L1|L0|WideOr1~combout\;
\L1|L0|ALT_INV_WideOr1~1_combout\ <= NOT \L1|L0|WideOr1~1_combout\;
\L1|L0|ALT_INV_EA.S11~q\ <= NOT \L1|L0|EA.S11~q\;
\L1|L0|ALT_INV_WideOr0~combout\ <= NOT \L1|L0|WideOr0~combout\;
\L1|L0|ALT_INV_WideOr0~0_combout\ <= NOT \L1|L0|WideOr0~0_combout\;
\L1|L0|ALT_INV_EA.S7~q\ <= NOT \L1|L0|EA.S7~q\;
\L1|L0|ALT_INV_EA.S3~q\ <= NOT \L1|L0|EA.S3~q\;
\L1|L0|ALT_INV_WideOr2~combout\ <= NOT \L1|L0|WideOr2~combout\;
\L1|L0|ALT_INV_WideOr2~0_combout\ <= NOT \L1|L0|WideOr2~0_combout\;
\L1|L0|ALT_INV_EA.S13~q\ <= NOT \L1|L0|EA.S13~q\;
\L1|L0|ALT_INV_EA.S5~q\ <= NOT \L1|L0|EA.S5~q\;
\L1|L0|ALT_INV_WideOr1~0_combout\ <= NOT \L1|L0|WideOr1~0_combout\;
\L1|L0|ALT_INV_EA.S9~q\ <= NOT \L1|L0|EA.S9~q\;
\L1|L0|ALT_INV_EA.S1~q\ <= NOT \L1|L0|EA.S1~q\;
\L1|L0|ALT_INV_WideOr3~combout\ <= NOT \L1|L0|WideOr3~combout\;
\L1|L0|ALT_INV_WideOr3~1_combout\ <= NOT \L1|L0|WideOr3~1_combout\;
\L1|L0|ALT_INV_EA.S14~q\ <= NOT \L1|L0|EA.S14~q\;
\L1|L0|ALT_INV_EA.S12~q\ <= NOT \L1|L0|EA.S12~q\;
\L1|L0|ALT_INV_EA.S10~q\ <= NOT \L1|L0|EA.S10~q\;
\L1|L0|ALT_INV_EA.S8~q\ <= NOT \L1|L0|EA.S8~q\;
\L1|L0|ALT_INV_WideOr3~0_combout\ <= NOT \L1|L0|WideOr3~0_combout\;
\L1|L0|ALT_INV_EA.S6~q\ <= NOT \L1|L0|EA.S6~q\;
\L1|L0|ALT_INV_EA.S4~q\ <= NOT \L1|L0|EA.S4~q\;
\L1|L0|ALT_INV_EA.S2~q\ <= NOT \L1|L0|EA.S2~q\;
\L1|L0|ALT_INV_EA.S0~q\ <= NOT \L1|L0|EA.S0~q\;
\L0|ALT_INV_Add0~93_sumout\ <= NOT \L0|Add0~93_sumout\;
\L0|ALT_INV_Add0~89_sumout\ <= NOT \L0|Add0~89_sumout\;
\L0|ALT_INV_Add0~85_sumout\ <= NOT \L0|Add0~85_sumout\;
\L0|ALT_INV_Add0~81_sumout\ <= NOT \L0|Add0~81_sumout\;
\L0|ALT_INV_Add0~77_sumout\ <= NOT \L0|Add0~77_sumout\;
\L0|ALT_INV_Add0~73_sumout\ <= NOT \L0|Add0~73_sumout\;
\L0|ALT_INV_Add0~69_sumout\ <= NOT \L0|Add0~69_sumout\;
\L0|ALT_INV_Add0~65_sumout\ <= NOT \L0|Add0~65_sumout\;
\L0|ALT_INV_Add0~61_sumout\ <= NOT \L0|Add0~61_sumout\;
\L0|ALT_INV_Add0~57_sumout\ <= NOT \L0|Add0~57_sumout\;
\L0|ALT_INV_Add0~53_sumout\ <= NOT \L0|Add0~53_sumout\;
\L0|ALT_INV_Add0~49_sumout\ <= NOT \L0|Add0~49_sumout\;
\L0|ALT_INV_Add0~45_sumout\ <= NOT \L0|Add0~45_sumout\;
\L0|ALT_INV_Add0~41_sumout\ <= NOT \L0|Add0~41_sumout\;
\L0|ALT_INV_Add0~37_sumout\ <= NOT \L0|Add0~37_sumout\;
\L0|ALT_INV_Add0~33_sumout\ <= NOT \L0|Add0~33_sumout\;
\L0|ALT_INV_Add0~29_sumout\ <= NOT \L0|Add0~29_sumout\;
\L0|ALT_INV_Add0~25_sumout\ <= NOT \L0|Add0~25_sumout\;
\L0|ALT_INV_Add0~21_sumout\ <= NOT \L0|Add0~21_sumout\;
\L0|ALT_INV_Add0~17_sumout\ <= NOT \L0|Add0~17_sumout\;
\L0|ALT_INV_Add0~13_sumout\ <= NOT \L0|Add0~13_sumout\;
\L0|ALT_INV_Add0~9_sumout\ <= NOT \L0|Add0~9_sumout\;
\L0|ALT_INV_Add0~5_sumout\ <= NOT \L0|Add0~5_sumout\;
\L0|ALT_INV_Add0~1_sumout\ <= NOT \L0|Add0~1_sumout\;
\L3|L0|ALT_INV_Add0~17_sumout\ <= NOT \L3|L0|Add0~17_sumout\;
\L3|L0|ALT_INV_Add0~9_sumout\ <= NOT \L3|L0|Add0~9_sumout\;
\L3|L0|ALT_INV_Add0~5_sumout\ <= NOT \L3|L0|Add0~5_sumout\;
\L3|L0|ALT_INV_Add0~1_sumout\ <= NOT \L3|L0|Add0~1_sumout\;
\L0|ALT_INV_delay[21]~DUPLICATE_q\ <= NOT \L0|delay[21]~DUPLICATE_q\;
\L0|ALT_INV_delay[20]~DUPLICATE_q\ <= NOT \L0|delay[20]~DUPLICATE_q\;
\L0|ALT_INV_delay[15]~DUPLICATE_q\ <= NOT \L0|delay[15]~DUPLICATE_q\;
\L0|ALT_INV_delay[16]~DUPLICATE_q\ <= NOT \L0|delay[16]~DUPLICATE_q\;
\L0|ALT_INV_delay[8]~DUPLICATE_q\ <= NOT \L0|delay[8]~DUPLICATE_q\;
\L0|ALT_INV_delay[4]~DUPLICATE_q\ <= NOT \L0|delay[4]~DUPLICATE_q\;
\L0|ALT_INV_delay[23]~DUPLICATE_q\ <= NOT \L0|delay[23]~DUPLICATE_q\;
\L4|L0|ALT_INV_habilit_credit~DUPLICATE_q\ <= NOT \L4|L0|habilit_credit~DUPLICATE_q\;
\L4|L0|ALT_INV_EA.S0~DUPLICATE_q\ <= NOT \L4|L0|EA.S0~DUPLICATE_q\;
\L4|L0|ALT_INV_EA.S4~DUPLICATE_q\ <= NOT \L4|L0|EA.S4~DUPLICATE_q\;
\L4|L0|ALT_INV_EA.S5~DUPLICATE_q\ <= NOT \L4|L0|EA.S5~DUPLICATE_q\;
\L4|L0|ALT_INV_EA.S3~DUPLICATE_q\ <= NOT \L4|L0|EA.S3~DUPLICATE_q\;
\L4|L0|ALT_INV_EA.B4~DUPLICATE_q\ <= NOT \L4|L0|EA.B4~DUPLICATE_q\;
\L4|L0|ALT_INV_EA.B2~DUPLICATE_q\ <= NOT \L4|L0|EA.B2~DUPLICATE_q\;
\L4|L0|ALT_INV_EA.S1~DUPLICATE_q\ <= NOT \L4|L0|EA.S1~DUPLICATE_q\;
\L4|L0|ALT_INV_rounds[3]~DUPLICATE_q\ <= NOT \L4|L0|rounds[3]~DUPLICATE_q\;
\L4|L0|ALT_INV_rounds[2]~DUPLICATE_q\ <= NOT \L4|L0|rounds[2]~DUPLICATE_q\;
\L4|L0|ALT_INV_rounds[0]~DUPLICATE_q\ <= NOT \L4|L0|rounds[0]~DUPLICATE_q\;
\ALT_INV_clock_50~inputCLKENA0_outclk\ <= NOT \clock_50~inputCLKENA0_outclk\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_clock_50~input_o\ <= NOT \clock_50~input_o\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\L0|ALT_INV_divided_clock~0_combout\ <= NOT \L0|divided_clock~0_combout\;
\L0|ALT_INV_delay\(0) <= NOT \L0|delay\(0);
\L0|ALT_INV_delay\(1) <= NOT \L0|delay\(1);
\L0|ALT_INV_delay\(2) <= NOT \L0|delay\(2);
\L0|ALT_INV_delay\(3) <= NOT \L0|delay\(3);
\L0|ALT_INV_EA.D2~q\ <= NOT \L0|EA.D2~q\;
\L0|ALT_INV_LessThan0~7_combout\ <= NOT \L0|LessThan0~7_combout\;
\L0|ALT_INV_delay\(21) <= NOT \L0|delay\(21);
\L0|ALT_INV_delay\(20) <= NOT \L0|delay\(20);
\L0|ALT_INV_LessThan0~6_combout\ <= NOT \L0|LessThan0~6_combout\;
\L0|ALT_INV_delay\(18) <= NOT \L0|delay\(18);
\L0|ALT_INV_delay\(19) <= NOT \L0|delay\(19);
\L0|ALT_INV_delay\(22) <= NOT \L0|delay\(22);
\L0|ALT_INV_LessThan0~5_combout\ <= NOT \L0|LessThan0~5_combout\;
\L0|ALT_INV_LessThan0~4_combout\ <= NOT \L0|LessThan0~4_combout\;
\L0|ALT_INV_LessThan0~3_combout\ <= NOT \L0|LessThan0~3_combout\;
\L0|ALT_INV_delay\(15) <= NOT \L0|delay\(15);
\L0|ALT_INV_delay\(16) <= NOT \L0|delay\(16);
\L0|ALT_INV_delay\(17) <= NOT \L0|delay\(17);
\L0|ALT_INV_LessThan0~2_combout\ <= NOT \L0|LessThan0~2_combout\;
\L0|ALT_INV_delay\(13) <= NOT \L0|delay\(13);
\L0|ALT_INV_delay\(12) <= NOT \L0|delay\(12);
\L0|ALT_INV_LessThan0~1_combout\ <= NOT \L0|LessThan0~1_combout\;
\L0|ALT_INV_delay\(10) <= NOT \L0|delay\(10);
\L0|ALT_INV_delay\(9) <= NOT \L0|delay\(9);
\L0|ALT_INV_delay\(8) <= NOT \L0|delay\(8);
\L0|ALT_INV_delay\(11) <= NOT \L0|delay\(11);
\L0|ALT_INV_LessThan0~0_combout\ <= NOT \L0|LessThan0~0_combout\;
\L0|ALT_INV_delay\(4) <= NOT \L0|delay\(4);
\L0|ALT_INV_delay\(6) <= NOT \L0|delay\(6);
\L0|ALT_INV_delay\(5) <= NOT \L0|delay\(5);
\L0|ALT_INV_delay\(7) <= NOT \L0|delay\(7);
\L0|ALT_INV_limit\(11) <= NOT \L0|limit\(11);
\L0|ALT_INV_delay\(14) <= NOT \L0|delay\(14);
\L0|ALT_INV_limit\(14) <= NOT \L0|limit\(14);
\L0|ALT_INV_delay\(23) <= NOT \L0|delay\(23);
\L0|ALT_INV_EA.D1~q\ <= NOT \L0|EA.D1~q\;
\L0|ALT_INV_PE.D3~q\ <= NOT \L0|PE.D3~q\;
\L0|ALT_INV_EA.D3~q\ <= NOT \L0|EA.D3~q\;
\L4|L0|ALT_INV_LessThan0~0_combout\ <= NOT \L4|L0|LessThan0~0_combout\;
\L0|ALT_INV_PE.D0~q\ <= NOT \L0|PE.D0~q\;
\L2|ALT_INV_WideOr0~combout\ <= NOT \L2|WideOr0~combout\;
\L2|ALT_INV_WideOr1~combout\ <= NOT \L2|WideOr1~combout\;
\L2|ALT_INV_WideOr2~0_combout\ <= NOT \L2|WideOr2~0_combout\;
\L2|ALT_INV_WideOr3~combout\ <= NOT \L2|WideOr3~combout\;
\L2|ALT_INV_WideOr4~combout\ <= NOT \L2|WideOr4~combout\;
\L2|ALT_INV_Equal1~0_combout\ <= NOT \L2|Equal1~0_combout\;
\L2|ALT_INV_WideOr5~combout\ <= NOT \L2|WideOr5~combout\;
\L2|ALT_INV_WideOr5~0_combout\ <= NOT \L2|WideOr5~0_combout\;
\L2|ALT_INV_WideOr0~0_combout\ <= NOT \L2|WideOr0~0_combout\;
\L2|ALT_INV_WideNor0~combout\ <= NOT \L2|WideNor0~combout\;
\L2|ALT_INV_WideOr6~combout\ <= NOT \L2|WideOr6~combout\;
\L2|ALT_INV_WideOr3~1_combout\ <= NOT \L2|WideOr3~1_combout\;
\L2|ALT_INV_Equal14~0_combout\ <= NOT \L2|Equal14~0_combout\;
\L2|ALT_INV_WideNor0~0_combout\ <= NOT \L2|WideNor0~0_combout\;
\L2|ALT_INV_WideOr1~0_combout\ <= NOT \L2|WideOr1~0_combout\;
\L2|ALT_INV_Equal16~1_combout\ <= NOT \L2|Equal16~1_combout\;
\L2|ALT_INV_Equal16~0_combout\ <= NOT \L2|Equal16~0_combout\;
\L2|ALT_INV_WideOr6~0_combout\ <= NOT \L2|WideOr6~0_combout\;
\L2|ALT_INV_WideOr3~0_combout\ <= NOT \L2|WideOr3~0_combout\;
\L2|ALT_INV_Equal0~1_combout\ <= NOT \L2|Equal0~1_combout\;
\L2|ALT_INV_Equal0~0_combout\ <= NOT \L2|Equal0~0_combout\;
\L2|ALT_INV_Equal4~4_combout\ <= NOT \L2|Equal4~4_combout\;
\L2|ALT_INV_WideOr7~combout\ <= NOT \L2|WideOr7~combout\;
\L2|ALT_INV_Equal12~1_combout\ <= NOT \L2|Equal12~1_combout\;
\L2|ALT_INV_Equal12~0_combout\ <= NOT \L2|Equal12~0_combout\;
\L2|ALT_INV_Equal2~1_combout\ <= NOT \L2|Equal2~1_combout\;
\L2|ALT_INV_Equal2~0_combout\ <= NOT \L2|Equal2~0_combout\;
\L1|L5|ALT_INV_F[2]~7_combout\ <= NOT \L1|L5|F[2]~7_combout\;
\L2|ALT_INV_Equal4~3_combout\ <= NOT \L2|Equal4~3_combout\;
\L2|ALT_INV_Equal4~2_combout\ <= NOT \L2|Equal4~2_combout\;
\L2|ALT_INV_Equal4~1_combout\ <= NOT \L2|Equal4~1_combout\;
\L2|ALT_INV_Equal4~0_combout\ <= NOT \L2|Equal4~0_combout\;
\L4|L0|ALT_INV_habilit_credit~q\ <= NOT \L4|L0|habilit_credit~q\;
\L4|L0|ALT_INV_process_0~0_combout\ <= NOT \L4|L0|process_0~0_combout\;
\L3|ALT_INV_below_equal_zero~1_combout\ <= NOT \L3|below_equal_zero~1_combout\;
\L3|ALT_INV_below_equal_zero~0_combout\ <= NOT \L3|below_equal_zero~0_combout\;
\L3|L1|ALT_INV_Q\(10) <= NOT \L3|L1|Q\(10);
\L4|L0|ALT_INV_EA.S0~q\ <= NOT \L4|L0|EA.S0~q\;
\L0|ALT_INV_EA.D0~q\ <= NOT \L0|EA.D0~q\;
\L4|L0|ALT_INV_EA.S4~q\ <= NOT \L4|L0|EA.S4~q\;

-- Location: IOOBUF_X89_Y8_N39
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L1|L3|F[0]~0_combout\,
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
	i => \L1|L3|F[1]~1_combout\,
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
	i => \L1|L3|ALT_INV_F[2]~2_combout\,
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
	i => \L1|L3|F[3]~3_combout\,
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
	i => \L1|L3|F[4]~4_combout\,
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
	i => \L1|L3|F[5]~5_combout\,
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
	i => \L1|L3|F[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X89_Y6_N39
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L1|L4|F[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X89_Y6_N56
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L1|L4|F[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X89_Y16_N39
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L1|L4|ALT_INV_F[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X89_Y16_N56
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L1|L4|F[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X89_Y15_N39
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L1|L4|F[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X89_Y15_N56
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L1|L4|F[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X89_Y8_N56
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L1|L4|F[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X89_Y9_N22
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L1|L5|F[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X89_Y23_N39
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L1|L5|F[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X89_Y23_N56
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L1|L5|ALT_INV_F[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X89_Y20_N79
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L1|L5|F[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X89_Y25_N39
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L1|L5|F[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X89_Y20_N96
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L1|L5|F[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X89_Y25_N56
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L1|L5|F[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X89_Y16_N5
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L4|L1|F[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X89_Y16_N22
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L4|L1|F[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X89_Y4_N45
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L4|L1|ALT_INV_F[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X89_Y4_N62
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L4|L1|F[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X89_Y21_N39
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L4|L1|F[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X89_Y11_N62
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L4|L1|F[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X89_Y9_N5
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L4|L1|ALT_INV_F[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X89_Y11_N45
\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L4|L2|F[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(0));

-- Location: IOOBUF_X89_Y13_N5
\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L4|L2|F[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(1));

-- Location: IOOBUF_X89_Y13_N22
\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L4|L2|F[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(2));

-- Location: IOOBUF_X89_Y8_N22
\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L4|L2|F[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(3));

-- Location: IOOBUF_X89_Y15_N22
\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L4|L2|F[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(4));

-- Location: IOOBUF_X89_Y15_N5
\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rtl~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(5));

-- Location: IOOBUF_X89_Y20_N45
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L4|L2|F[6]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X89_Y20_N62
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X89_Y21_N56
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X89_Y25_N22
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X89_Y23_N22
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X89_Y9_N56
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X89_Y23_N5
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X89_Y9_N39
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L3|L1|ALT_INV_Q\(0),
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
	i => \L3|L1|ALT_INV_Q\(1),
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
	i => \L3|L1|ALT_INV_Q\(2),
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
	i => \L3|L1|Q\(3),
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
	i => \L3|L1|ALT_INV_Q\(4),
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
	i => \L3|L1|Q\(5),
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
	i => \L3|L1|Q\(6),
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
	i => \L3|L1|Q\(7),
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X89_Y8_N5
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L3|L1|Q\(8),
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X89_Y6_N22
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L3|L1|Q\(9),
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOIBUF_X32_Y0_N1
\clock_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock_50,
	o => \clock_50~input_o\);

-- Location: LABCELL_X80_Y9_N24
\L0|divided_clock~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|divided_clock~0_combout\ = ( !\L0|divided_clock~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \L0|ALT_INV_divided_clock~q\,
	combout => \L0|divided_clock~0_combout\);

-- Location: MLABCELL_X82_Y9_N18
\L0|divided_clock~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|divided_clock~feeder_combout\ = ( \L0|divided_clock~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \L0|ALT_INV_divided_clock~0_combout\,
	combout => \L0|divided_clock~feeder_combout\);

-- Location: CLKCTRL_G6
\clock_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clock_50~input_o\,
	outclk => \clock_50~inputCLKENA0_outclk\);

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

-- Location: LABCELL_X81_Y9_N54
\L0|limit[14]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|limit[14]~0_combout\ = !\SW[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[9]~input_o\,
	combout => \L0|limit[14]~0_combout\);

-- Location: FF_X81_Y9_N56
\L0|limit[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L0|limit[14]~0_combout\,
	ena => \L0|ALT_INV_EA.D0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|limit\(14));

-- Location: LABCELL_X81_Y9_N15
\L0|PE~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|PE~7_combout\ = ( \L0|EA.D0~q\ & ( \L0|EA.D2~q\ ) ) # ( !\L0|EA.D0~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L0|ALT_INV_EA.D2~q\,
	dataf => \L0|ALT_INV_EA.D0~q\,
	combout => \L0|PE~7_combout\);

-- Location: FF_X81_Y9_N16
\L0|PE.D1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L0|PE~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|PE.D1~q\);

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

-- Location: FF_X87_Y10_N49
\L4|L0|rounds[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L4|L0|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|L0|rounds[2]~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y8_N51
\L4|L0|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L4|L0|LessThan0~0_combout\ = ( \L4|L0|rounds[2]~DUPLICATE_q\ & ( \L4|L0|rounds\(3) ) ) # ( !\L4|L0|rounds[2]~DUPLICATE_q\ & ( (\L4|L0|rounds\(1) & \L4|L0|rounds\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L4|L0|ALT_INV_rounds\(1),
	datad => \L4|L0|ALT_INV_rounds\(3),
	dataf => \L4|L0|ALT_INV_rounds[2]~DUPLICATE_q\,
	combout => \L4|L0|LessThan0~0_combout\);

-- Location: LABCELL_X88_Y8_N57
\L4|L0|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L4|L0|Selector8~0_combout\ = ( \L4|L0|EA.S1~DUPLICATE_q\ & ( (!\L4|L0|EA.S0~DUPLICATE_q\) # (\KEY[3]~input_o\) ) ) # ( !\L4|L0|EA.S1~DUPLICATE_q\ & ( !\L4|L0|EA.S0~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[3]~input_o\,
	datad => \L4|L0|ALT_INV_EA.S0~DUPLICATE_q\,
	dataf => \L4|L0|ALT_INV_EA.S1~DUPLICATE_q\,
	combout => \L4|L0|Selector8~0_combout\);

-- Location: FF_X88_Y8_N59
\L4|L0|PE.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L4|L0|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|L0|PE.S1~q\);

-- Location: FF_X87_Y8_N47
\L4|L0|EA.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \L4|L0|PE.S0~q\,
	clrn => \L4|L0|ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|L0|EA.S0~q\);

-- Location: FF_X88_Y9_N20
\L4|L0|habilit_credit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L4|L0|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|L0|habilit_credit~q\);

-- Location: LABCELL_X88_Y9_N18
\L4|L0|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L4|L0|Selector6~0_combout\ = ( \L4|L0|EA.S2~q\ & ( (\L4|L0|EA.S6~q\ & ((!\L4|L0|LessThan0~0_combout\) # (\L4|L0|habilit_credit~q\))) ) ) # ( !\L4|L0|EA.S2~q\ & ( (!\L4|L0|EA.S6~q\ & (\L4|L0|EA.S0~q\ & ((\L4|L0|habilit_credit~q\)))) # (\L4|L0|EA.S6~q\ & 
-- (((!\L4|L0|LessThan0~0_combout\) # (\L4|L0|habilit_credit~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001110111001100000111011100110000001100110011000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L4|L0|ALT_INV_EA.S0~q\,
	datab => \L4|L0|ALT_INV_EA.S6~q\,
	datac => \L4|L0|ALT_INV_LessThan0~0_combout\,
	datad => \L4|L0|ALT_INV_habilit_credit~q\,
	dataf => \L4|L0|ALT_INV_EA.S2~q\,
	combout => \L4|L0|Selector6~0_combout\);

-- Location: FF_X88_Y9_N19
\L4|L0|habilit_credit~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L4|L0|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|L0|habilit_credit~DUPLICATE_q\);

-- Location: FF_X87_Y8_N5
\L4|L0|EA.S4~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \L4|L0|PE.S4~q\,
	clrn => \L4|L0|ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|L0|EA.S4~DUPLICATE_q\);

-- Location: FF_X87_Y8_N23
\L4|L0|EA.S3~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \L4|L0|PE.S3~q\,
	clrn => \L4|L0|ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|L0|EA.S3~DUPLICATE_q\);

-- Location: FF_X87_Y8_N11
\L4|L0|EA.S5~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \L4|L0|PE.S5~q\,
	clrn => \L4|L0|ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|L0|EA.S5~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y8_N57
\L4|L0|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L4|L0|Selector3~0_combout\ = ( \L4|L0|EA.S3~DUPLICATE_q\ & ( \L4|L0|EA.S5~DUPLICATE_q\ ) ) # ( !\L4|L0|EA.S3~DUPLICATE_q\ & ( \L4|L0|EA.S5~DUPLICATE_q\ & ( (\L4|L0|EA.S2~q\) # (\L4|L0|EA.S4~DUPLICATE_q\) ) ) ) # ( \L4|L0|EA.S3~DUPLICATE_q\ & ( 
-- !\L4|L0|EA.S5~DUPLICATE_q\ ) ) # ( !\L4|L0|EA.S3~DUPLICATE_q\ & ( !\L4|L0|EA.S5~DUPLICATE_q\ & ( (((\L4|L0|enable_c0~q\ & \L4|L0|EA.S0~q\)) # (\L4|L0|EA.S2~q\)) # (\L4|L0|EA.S4~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011111111111111111111111111101010101111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L4|L0|ALT_INV_EA.S4~DUPLICATE_q\,
	datab => \L4|L0|ALT_INV_enable_c0~q\,
	datac => \L4|L0|ALT_INV_EA.S0~q\,
	datad => \L4|L0|ALT_INV_EA.S2~q\,
	datae => \L4|L0|ALT_INV_EA.S3~DUPLICATE_q\,
	dataf => \L4|L0|ALT_INV_EA.S5~DUPLICATE_q\,
	combout => \L4|L0|Selector3~0_combout\);

-- Location: FF_X84_Y10_N20
\L4|L0|enable_c0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	asdata => \L4|L0|Selector3~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|L0|enable_c0~q\);

-- Location: FF_X84_Y10_N11
\L1|L0|EA.S9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|divided_clock~q\,
	asdata => \L1|L0|EA.S8~q\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \L4|L0|enable_c0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|L0|EA.S9~q\);

-- Location: FF_X84_Y10_N53
\L1|L0|EA.S10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|divided_clock~q\,
	asdata => \L1|L0|EA.S9~q\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \L4|L0|enable_c0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|L0|EA.S10~q\);

-- Location: FF_X84_Y10_N2
\L1|L0|EA.S11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|divided_clock~q\,
	asdata => \L1|L0|EA.S10~q\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \L4|L0|enable_c0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|L0|EA.S11~q\);

-- Location: FF_X84_Y10_N32
\L1|L0|EA.S12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|divided_clock~q\,
	asdata => \L1|L0|EA.S11~q\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \L4|L0|enable_c0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|L0|EA.S12~q\);

-- Location: FF_X85_Y10_N41
\L1|L0|EA.S13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|divided_clock~q\,
	asdata => \L1|L0|EA.S12~q\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \L4|L0|enable_c0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|L0|EA.S13~q\);

-- Location: FF_X84_Y10_N41
\L1|L0|EA.S14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|divided_clock~q\,
	asdata => \L1|L0|EA.S13~q\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \L4|L0|enable_c0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|L0|EA.S14~q\);

-- Location: FF_X84_Y10_N50
\L1|L0|EA.S15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|divided_clock~q\,
	asdata => \L1|L0|EA.S14~q\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \L4|L0|enable_c0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|L0|EA.S15~q\);

-- Location: MLABCELL_X84_Y10_N27
\L1|L0|EA.S0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L0|EA.S0~0_combout\ = !\L1|L0|EA.S15~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L1|L0|ALT_INV_EA.S15~q\,
	combout => \L1|L0|EA.S0~0_combout\);

-- Location: FF_X84_Y10_N29
\L1|L0|EA.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|divided_clock~q\,
	d => \L1|L0|EA.S0~0_combout\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	ena => \L4|L0|enable_c0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|L0|EA.S0~q\);

-- Location: MLABCELL_X84_Y10_N54
\L1|L0|EA.S1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L0|EA.S1~0_combout\ = ( !\L1|L0|EA.S0~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \L1|L0|ALT_INV_EA.S0~q\,
	combout => \L1|L0|EA.S1~0_combout\);

-- Location: FF_X84_Y10_N56
\L1|L0|EA.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|divided_clock~q\,
	d => \L1|L0|EA.S1~0_combout\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	ena => \L4|L0|enable_c0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|L0|EA.S1~q\);

-- Location: FF_X84_Y10_N44
\L1|L0|EA.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|divided_clock~q\,
	asdata => \L1|L0|EA.S1~q\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \L4|L0|enable_c0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|L0|EA.S2~q\);

-- Location: FF_X84_Y10_N35
\L1|L0|EA.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|divided_clock~q\,
	asdata => \L1|L0|EA.S2~q\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \L4|L0|enable_c0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|L0|EA.S3~q\);

-- Location: MLABCELL_X84_Y10_N21
\L1|L0|WideOr1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L0|WideOr1~1_combout\ = ( !\L1|L0|EA.S11~q\ & ( !\L1|L0|EA.S3~q\ & ( (!\L1|L0|EA.S2~q\ & !\L1|L0|EA.S10~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L1|L0|ALT_INV_EA.S2~q\,
	datad => \L1|L0|ALT_INV_EA.S10~q\,
	datae => \L1|L0|ALT_INV_EA.S11~q\,
	dataf => \L1|L0|ALT_INV_EA.S3~q\,
	combout => \L1|L0|WideOr1~1_combout\);

-- Location: MLABCELL_X84_Y10_N45
\L1|L0|WideOr1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L0|WideOr1~combout\ = ( \L1|L0|WideOr1~1_combout\ & ( \L1|L0|WideOr1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \L1|L0|ALT_INV_WideOr1~1_combout\,
	dataf => \L1|L0|ALT_INV_WideOr1~0_combout\,
	combout => \L1|L0|WideOr1~combout\);

-- Location: MLABCELL_X87_Y8_N15
\L4|L0|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L4|L0|Selector5~0_combout\ = ( \L4|L0|EA.S3~DUPLICATE_q\ & ( \L4|L0|EA.S5~DUPLICATE_q\ & ( \L4|L0|EA.S2~q\ ) ) ) # ( !\L4|L0|EA.S3~DUPLICATE_q\ & ( \L4|L0|EA.S5~DUPLICATE_q\ & ( \L4|L0|EA.S2~q\ ) ) ) # ( \L4|L0|EA.S3~DUPLICATE_q\ & ( 
-- !\L4|L0|EA.S5~DUPLICATE_q\ & ( \L4|L0|EA.S2~q\ ) ) ) # ( !\L4|L0|EA.S3~DUPLICATE_q\ & ( !\L4|L0|EA.S5~DUPLICATE_q\ & ( ((!\L4|L0|EA.S4~DUPLICATE_q\ & (\L4|L0|enable_c2~q\ & \L4|L0|EA.S0~q\))) # (\L4|L0|EA.S2~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011111111000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L4|L0|ALT_INV_EA.S4~DUPLICATE_q\,
	datab => \L4|L0|ALT_INV_enable_c2~q\,
	datac => \L4|L0|ALT_INV_EA.S0~q\,
	datad => \L4|L0|ALT_INV_EA.S2~q\,
	datae => \L4|L0|ALT_INV_EA.S3~DUPLICATE_q\,
	dataf => \L4|L0|ALT_INV_EA.S5~DUPLICATE_q\,
	combout => \L4|L0|Selector5~0_combout\);

-- Location: FF_X83_Y9_N5
\L4|L0|enable_c2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	asdata => \L4|L0|Selector5~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|L0|enable_c2~q\);

-- Location: FF_X83_Y9_N32
\L1|L2|EA.S15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|divided_clock~q\,
	asdata => \L1|L2|EA.S14~q\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \L4|L0|enable_c2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|L2|EA.S15~q\);

-- Location: LABCELL_X85_Y9_N30
\L1|L2|EA.S0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L2|EA.S0~0_combout\ = !\L1|L2|EA.S15~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L1|L2|ALT_INV_EA.S15~q\,
	combout => \L1|L2|EA.S0~0_combout\);

-- Location: FF_X85_Y9_N32
\L1|L2|EA.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|divided_clock~q\,
	d => \L1|L2|EA.S0~0_combout\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	ena => \L4|L0|enable_c2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|L2|EA.S0~q\);

-- Location: LABCELL_X83_Y9_N27
\L1|L2|EA.S1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L2|EA.S1~0_combout\ = !\L1|L2|EA.S0~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L1|L2|ALT_INV_EA.S0~q\,
	combout => \L1|L2|EA.S1~0_combout\);

-- Location: FF_X83_Y9_N29
\L1|L2|EA.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|divided_clock~q\,
	d => \L1|L2|EA.S1~0_combout\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	ena => \L4|L0|enable_c2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|L2|EA.S1~q\);

-- Location: FF_X84_Y9_N59
\L1|L2|EA.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|divided_clock~q\,
	asdata => \L1|L2|EA.S1~q\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \L4|L0|enable_c2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|L2|EA.S2~q\);

-- Location: FF_X83_Y9_N35
\L1|L2|EA.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|divided_clock~q\,
	asdata => \L1|L2|EA.S2~q\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \L4|L0|enable_c2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|L2|EA.S3~q\);

-- Location: FF_X85_Y9_N59
\L1|L2|EA.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|divided_clock~q\,
	asdata => \L1|L2|EA.S3~q\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \L4|L0|enable_c2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|L2|EA.S4~q\);

-- Location: FF_X83_Y9_N8
\L1|L2|EA.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|divided_clock~q\,
	asdata => \L1|L2|EA.S4~q\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \L4|L0|enable_c2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|L2|EA.S5~q\);

-- Location: FF_X84_Y9_N53
\L1|L2|EA.S6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|divided_clock~q\,
	asdata => \L1|L2|EA.S5~q\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \L4|L0|enable_c2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|L2|EA.S6~q\);

-- Location: LABCELL_X83_Y9_N39
\L1|L2|EA.S7~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L2|EA.S7~feeder_combout\ = \L1|L2|EA.S6~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L1|L2|ALT_INV_EA.S6~q\,
	combout => \L1|L2|EA.S7~feeder_combout\);

-- Location: FF_X83_Y9_N41
\L1|L2|EA.S7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|divided_clock~q\,
	d => \L1|L2|EA.S7~feeder_combout\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	ena => \L4|L0|enable_c2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|L2|EA.S7~q\);

-- Location: FF_X83_Y9_N38
\L1|L2|EA.S8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|divided_clock~q\,
	asdata => \L1|L2|EA.S7~q\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \L4|L0|enable_c2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|L2|EA.S8~q\);

-- Location: FF_X83_Y9_N14
\L1|L2|EA.S9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|divided_clock~q\,
	asdata => \L1|L2|EA.S8~q\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \L4|L0|enable_c2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|L2|EA.S9~q\);

-- Location: FF_X83_Y9_N56
\L1|L2|EA.S10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|divided_clock~q\,
	asdata => \L1|L2|EA.S9~q\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \L4|L0|enable_c2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|L2|EA.S10~q\);

-- Location: FF_X83_Y9_N50
\L1|L2|EA.S11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|divided_clock~q\,
	asdata => \L1|L2|EA.S10~q\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \L4|L0|enable_c2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|L2|EA.S11~q\);

-- Location: FF_X83_Y9_N17
\L1|L2|EA.S12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|divided_clock~q\,
	asdata => \L1|L2|EA.S11~q\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \L4|L0|enable_c2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|L2|EA.S12~q\);

-- Location: FF_X83_Y9_N47
\L1|L2|EA.S13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|divided_clock~q\,
	asdata => \L1|L2|EA.S12~q\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \L4|L0|enable_c2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|L2|EA.S13~q\);

-- Location: FF_X83_Y9_N44
\L1|L2|EA.S14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|divided_clock~q\,
	asdata => \L1|L2|EA.S13~q\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \L4|L0|enable_c2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|L2|EA.S14~q\);

-- Location: LABCELL_X83_Y9_N9
\L1|L2|WideOr3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L2|WideOr3~1_combout\ = ( !\L1|L2|EA.S8~q\ & ( !\L1|L2|EA.S12~q\ & ( (!\L1|L2|EA.S14~q\ & !\L1|L2|EA.S10~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L1|L2|ALT_INV_EA.S14~q\,
	datad => \L1|L2|ALT_INV_EA.S10~q\,
	datae => \L1|L2|ALT_INV_EA.S8~q\,
	dataf => \L1|L2|ALT_INV_EA.S12~q\,
	combout => \L1|L2|WideOr3~1_combout\);

-- Location: LABCELL_X83_Y9_N24
\L1|L2|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L2|WideOr0~0_combout\ = ( !\L1|L2|EA.S7~q\ & ( (!\L1|L2|EA.S5~q\ & (!\L1|L2|EA.S3~q\ & !\L1|L2|EA.S1~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L1|L2|ALT_INV_EA.S5~q\,
	datac => \L1|L2|ALT_INV_EA.S3~q\,
	datad => \L1|L2|ALT_INV_EA.S1~q\,
	dataf => \L1|L2|ALT_INV_EA.S7~q\,
	combout => \L1|L2|WideOr0~0_combout\);

-- Location: LABCELL_X85_Y9_N36
\L1|L2|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L2|WideOr3~0_combout\ = ( !\L1|L2|EA.S6~q\ & ( (!\L1|L2|EA.S4~q\ & (!\L1|L2|EA.S2~q\ & \L1|L2|EA.S0~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L1|L2|ALT_INV_EA.S4~q\,
	datac => \L1|L2|ALT_INV_EA.S2~q\,
	datad => \L1|L2|ALT_INV_EA.S0~q\,
	dataf => \L1|L2|ALT_INV_EA.S6~q\,
	combout => \L1|L2|WideOr3~0_combout\);

-- Location: LABCELL_X85_Y9_N33
\L2|Equal4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|Equal4~1_combout\ = ( \L1|L2|WideOr3~0_combout\ & ( (\L1|L2|WideOr3~1_combout\ & !\L1|L2|WideOr0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L1|L2|ALT_INV_WideOr3~1_combout\,
	datad => \L1|L2|ALT_INV_WideOr0~0_combout\,
	dataf => \L1|L2|ALT_INV_WideOr3~0_combout\,
	combout => \L2|Equal4~1_combout\);

-- Location: FF_X85_Y10_N32
\L1|L0|EA.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|divided_clock~q\,
	asdata => \L1|L0|EA.S3~q\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \L4|L0|enable_c0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|L0|EA.S4~q\);

-- Location: FF_X84_Y10_N59
\L1|L0|EA.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|divided_clock~q\,
	asdata => \L1|L0|EA.S4~q\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \L4|L0|enable_c0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|L0|EA.S5~q\);

-- Location: FF_X84_Y10_N17
\L1|L0|EA.S6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|divided_clock~q\,
	asdata => \L1|L0|EA.S5~q\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \L4|L0|enable_c0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|L0|EA.S6~q\);

-- Location: MLABCELL_X84_Y10_N48
\L1|L0|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L0|WideOr3~0_combout\ = ( \L1|L0|EA.S0~q\ & ( !\L1|L0|EA.S4~q\ & ( (!\L1|L0|EA.S2~q\ & !\L1|L0|EA.S6~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L1|L0|ALT_INV_EA.S2~q\,
	datad => \L1|L0|ALT_INV_EA.S6~q\,
	datae => \L1|L0|ALT_INV_EA.S0~q\,
	dataf => \L1|L0|ALT_INV_EA.S4~q\,
	combout => \L1|L0|WideOr3~0_combout\);

-- Location: FF_X84_Y10_N26
\L1|L0|EA.S7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|divided_clock~q\,
	asdata => \L1|L0|EA.S6~q\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \L4|L0|enable_c0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|L0|EA.S7~q\);

-- Location: MLABCELL_X84_Y10_N57
\L1|L0|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L0|WideOr0~0_combout\ = ( !\L1|L0|EA.S1~q\ & ( (!\L1|L0|EA.S3~q\ & (!\L1|L0|EA.S7~q\ & !\L1|L0|EA.S5~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L1|L0|ALT_INV_EA.S3~q\,
	datac => \L1|L0|ALT_INV_EA.S7~q\,
	datad => \L1|L0|ALT_INV_EA.S5~q\,
	dataf => \L1|L0|ALT_INV_EA.S1~q\,
	combout => \L1|L0|WideOr0~0_combout\);

-- Location: MLABCELL_X84_Y10_N0
\L1|L0|WideOr0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L0|WideOr0~combout\ = ( \L1|L0|WideOr0~0_combout\ & ( \L1|L0|WideOr3~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L1|L0|ALT_INV_WideOr3~0_combout\,
	dataf => \L1|L0|ALT_INV_WideOr0~0_combout\,
	combout => \L1|L0|WideOr0~combout\);

-- Location: MLABCELL_X87_Y8_N30
\L4|L0|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L4|L0|Selector4~0_combout\ = ( \L4|L0|EA.S3~DUPLICATE_q\ & ( \L4|L0|EA.S5~DUPLICATE_q\ ) ) # ( !\L4|L0|EA.S3~DUPLICATE_q\ & ( \L4|L0|EA.S5~DUPLICATE_q\ & ( \L4|L0|EA.S2~q\ ) ) ) # ( \L4|L0|EA.S3~DUPLICATE_q\ & ( !\L4|L0|EA.S5~DUPLICATE_q\ ) ) # ( 
-- !\L4|L0|EA.S3~DUPLICATE_q\ & ( !\L4|L0|EA.S5~DUPLICATE_q\ & ( ((!\L4|L0|EA.S4~DUPLICATE_q\ & (\L4|L0|enable_c1~q\ & \L4|L0|EA.S0~q\))) # (\L4|L0|EA.S2~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100101111111111111111111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L4|L0|ALT_INV_EA.S4~DUPLICATE_q\,
	datab => \L4|L0|ALT_INV_enable_c1~q\,
	datac => \L4|L0|ALT_INV_EA.S2~q\,
	datad => \L4|L0|ALT_INV_EA.S0~q\,
	datae => \L4|L0|ALT_INV_EA.S3~DUPLICATE_q\,
	dataf => \L4|L0|ALT_INV_EA.S5~DUPLICATE_q\,
	combout => \L4|L0|Selector4~0_combout\);

-- Location: FF_X84_Y9_N23
\L4|L0|enable_c1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	asdata => \L4|L0|Selector4~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|L0|enable_c1~q\);

-- Location: FF_X85_Y9_N29
\L1|L1|EA.S15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|divided_clock~q\,
	asdata => \L1|L1|EA.S14~q\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \L4|L0|enable_c1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|L1|EA.S15~q\);

-- Location: MLABCELL_X84_Y9_N3
\L1|L1|EA.S0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L1|EA.S0~0_combout\ = !\L1|L1|EA.S15~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L1|L1|ALT_INV_EA.S15~q\,
	combout => \L1|L1|EA.S0~0_combout\);

-- Location: FF_X84_Y9_N5
\L1|L1|EA.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|divided_clock~q\,
	d => \L1|L1|EA.S0~0_combout\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	ena => \L4|L0|enable_c1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|L1|EA.S0~q\);

-- Location: LABCELL_X85_Y10_N51
\L1|L1|EA.S1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L1|EA.S1~0_combout\ = ( !\L1|L1|EA.S0~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \L1|L1|ALT_INV_EA.S0~q\,
	combout => \L1|L1|EA.S1~0_combout\);

-- Location: FF_X85_Y10_N53
\L1|L1|EA.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|divided_clock~q\,
	d => \L1|L1|EA.S1~0_combout\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	ena => \L4|L0|enable_c1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|L1|EA.S1~q\);

-- Location: FF_X84_Y9_N44
\L1|L1|EA.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|divided_clock~q\,
	asdata => \L1|L1|EA.S1~q\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \L4|L0|enable_c1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|L1|EA.S2~q\);

-- Location: FF_X84_Y9_N2
\L1|L1|EA.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|divided_clock~q\,
	asdata => \L1|L1|EA.S2~q\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \L4|L0|enable_c1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|L1|EA.S3~q\);

-- Location: FF_X84_Y9_N14
\L1|L1|EA.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|divided_clock~q\,
	asdata => \L1|L1|EA.S3~q\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \L4|L0|enable_c1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|L1|EA.S4~q\);

-- Location: FF_X85_Y10_N20
\L1|L1|EA.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|divided_clock~q\,
	asdata => \L1|L1|EA.S4~q\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \L4|L0|enable_c1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|L1|EA.S5~q\);

-- Location: FF_X84_Y9_N47
\L1|L1|EA.S6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|divided_clock~q\,
	asdata => \L1|L1|EA.S5~q\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \L4|L0|enable_c1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|L1|EA.S6~q\);

-- Location: FF_X85_Y10_N56
\L1|L1|EA.S7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|divided_clock~q\,
	asdata => \L1|L1|EA.S6~q\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \L4|L0|enable_c1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|L1|EA.S7~q\);

-- Location: FF_X84_Y9_N26
\L1|L1|EA.S8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|divided_clock~q\,
	asdata => \L1|L1|EA.S7~q\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \L4|L0|enable_c1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|L1|EA.S8~q\);

-- Location: FF_X84_Y9_N41
\L1|L1|EA.S9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|divided_clock~q\,
	asdata => \L1|L1|EA.S8~q\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \L4|L0|enable_c1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|L1|EA.S9~q\);

-- Location: FF_X84_Y9_N17
\L1|L1|EA.S10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|divided_clock~q\,
	asdata => \L1|L1|EA.S9~q\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \L4|L0|enable_c1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|L1|EA.S10~q\);

-- Location: FF_X83_Y9_N20
\L1|L1|EA.S11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|divided_clock~q\,
	asdata => \L1|L1|EA.S10~q\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \L4|L0|enable_c1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|L1|EA.S11~q\);

-- Location: FF_X84_Y9_N38
\L1|L1|EA.S12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|divided_clock~q\,
	asdata => \L1|L1|EA.S11~q\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \L4|L0|enable_c1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|L1|EA.S12~q\);

-- Location: FF_X84_Y9_N11
\L1|L1|EA.S13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|divided_clock~q\,
	asdata => \L1|L1|EA.S12~q\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \L4|L0|enable_c1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|L1|EA.S13~q\);

-- Location: FF_X84_Y9_N8
\L1|L1|EA.S14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|divided_clock~q\,
	asdata => \L1|L1|EA.S13~q\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \L4|L0|enable_c1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|L1|EA.S14~q\);

-- Location: MLABCELL_X84_Y9_N33
\L1|L1|WideOr3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L1|WideOr3~1_combout\ = ( !\L1|L1|EA.S10~q\ & ( !\L1|L1|EA.S8~q\ & ( (!\L1|L1|EA.S14~q\ & !\L1|L1|EA.S12~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L1|L1|ALT_INV_EA.S14~q\,
	datad => \L1|L1|ALT_INV_EA.S12~q\,
	datae => \L1|L1|ALT_INV_EA.S10~q\,
	dataf => \L1|L1|ALT_INV_EA.S8~q\,
	combout => \L1|L1|WideOr3~1_combout\);

-- Location: LABCELL_X83_Y9_N30
\L1|L2|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L2|WideOr1~0_combout\ = ( \L1|L2|EA.S0~q\ & ( !\L1|L2|EA.S8~q\ & ( (!\L1|L2|EA.S1~q\ & !\L1|L2|EA.S9~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L1|L2|ALT_INV_EA.S1~q\,
	datad => \L1|L2|ALT_INV_EA.S9~q\,
	datae => \L1|L2|ALT_INV_EA.S0~q\,
	dataf => \L1|L2|ALT_INV_EA.S8~q\,
	combout => \L1|L2|WideOr1~0_combout\);

-- Location: LABCELL_X83_Y9_N45
\L1|L2|WideOr1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L2|WideOr1~1_combout\ = ( !\L1|L2|EA.S10~q\ & ( (!\L1|L2|EA.S3~q\ & (!\L1|L2|EA.S11~q\ & !\L1|L2|EA.S2~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L1|L2|ALT_INV_EA.S3~q\,
	datab => \L1|L2|ALT_INV_EA.S11~q\,
	datac => \L1|L2|ALT_INV_EA.S2~q\,
	dataf => \L1|L2|ALT_INV_EA.S10~q\,
	combout => \L1|L2|WideOr1~1_combout\);

-- Location: MLABCELL_X84_Y9_N36
\L1|L1|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L1|WideOr3~0_combout\ = ( !\L1|L1|EA.S4~q\ & ( (\L1|L1|EA.S0~q\ & (!\L1|L1|EA.S6~q\ & !\L1|L1|EA.S2~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L1|L1|ALT_INV_EA.S0~q\,
	datab => \L1|L1|ALT_INV_EA.S6~q\,
	datac => \L1|L1|ALT_INV_EA.S2~q\,
	dataf => \L1|L1|ALT_INV_EA.S4~q\,
	combout => \L1|L1|WideOr3~0_combout\);

-- Location: MLABCELL_X84_Y9_N24
\L1|L1|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L1|WideOr1~0_combout\ = ( !\L1|L1|EA.S1~q\ & ( (\L1|L1|EA.S0~q\ & (!\L1|L1|EA.S9~q\ & !\L1|L1|EA.S8~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L1|L1|ALT_INV_EA.S0~q\,
	datac => \L1|L1|ALT_INV_EA.S9~q\,
	datad => \L1|L1|ALT_INV_EA.S8~q\,
	dataf => \L1|L1|ALT_INV_EA.S1~q\,
	combout => \L1|L1|WideOr1~0_combout\);

-- Location: LABCELL_X83_Y9_N51
\L1|L1|WideOr1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L1|WideOr1~1_combout\ = ( !\L1|L1|EA.S3~q\ & ( !\L1|L1|EA.S2~q\ & ( (!\L1|L1|EA.S10~q\ & !\L1|L1|EA.S11~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L1|L1|ALT_INV_EA.S10~q\,
	datad => \L1|L1|ALT_INV_EA.S11~q\,
	datae => \L1|L1|ALT_INV_EA.S3~q\,
	dataf => \L1|L1|ALT_INV_EA.S2~q\,
	combout => \L1|L1|WideOr1~1_combout\);

-- Location: MLABCELL_X84_Y9_N54
\L2|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|Equal0~0_combout\ = ( \L1|L1|WideOr1~0_combout\ & ( \L1|L1|WideOr1~1_combout\ & ( (\L1|L1|WideOr3~1_combout\ & (\L1|L2|WideOr1~0_combout\ & (\L1|L2|WideOr1~1_combout\ & \L1|L1|WideOr3~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L1|L1|ALT_INV_WideOr3~1_combout\,
	datab => \L1|L2|ALT_INV_WideOr1~0_combout\,
	datac => \L1|L2|ALT_INV_WideOr1~1_combout\,
	datad => \L1|L1|ALT_INV_WideOr3~0_combout\,
	datae => \L1|L1|ALT_INV_WideOr1~0_combout\,
	dataf => \L1|L1|ALT_INV_WideOr1~1_combout\,
	combout => \L2|Equal0~0_combout\);

-- Location: MLABCELL_X84_Y9_N42
\L1|L1|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L1|WideOr2~0_combout\ = ( !\L1|L1|EA.S13~q\ & ( !\L1|L1|EA.S5~q\ & ( (!\L1|L1|EA.S12~q\ & !\L1|L1|EA.S4~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L1|L1|ALT_INV_EA.S12~q\,
	datab => \L1|L1|ALT_INV_EA.S4~q\,
	datae => \L1|L1|ALT_INV_EA.S13~q\,
	dataf => \L1|L1|ALT_INV_EA.S5~q\,
	combout => \L1|L1|WideOr2~0_combout\);

-- Location: MLABCELL_X84_Y10_N33
\L1|L0|WideOr3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L0|WideOr3~1_combout\ = ( !\L1|L0|EA.S8~q\ & ( !\L1|L0|EA.S12~q\ & ( (!\L1|L0|EA.S14~q\ & !\L1|L0|EA.S10~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L1|L0|ALT_INV_EA.S14~q\,
	datad => \L1|L0|ALT_INV_EA.S10~q\,
	datae => \L1|L0|ALT_INV_EA.S8~q\,
	dataf => \L1|L0|ALT_INV_EA.S12~q\,
	combout => \L1|L0|WideOr3~1_combout\);

-- Location: LABCELL_X85_Y10_N12
\L1|L1|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L1|WideOr0~0_combout\ = ( !\L1|L1|EA.S3~q\ & ( !\L1|L1|EA.S1~q\ & ( (!\L1|L1|EA.S5~q\ & !\L1|L1|EA.S7~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L1|L1|ALT_INV_EA.S5~q\,
	datac => \L1|L1|ALT_INV_EA.S7~q\,
	datae => \L1|L1|ALT_INV_EA.S3~q\,
	dataf => \L1|L1|ALT_INV_EA.S1~q\,
	combout => \L1|L1|WideOr0~0_combout\);

-- Location: MLABCELL_X84_Y9_N48
\L2|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|Equal4~0_combout\ = ( \L1|L0|WideOr3~1_combout\ & ( \L1|L1|WideOr0~0_combout\ & ( (\L1|L1|WideOr2~0_combout\ & (!\L1|L1|WideOr3~0_combout\ & (\L1|L1|WideOr1~0_combout\ & \L1|L0|WideOr3~0_combout\))) ) ) ) # ( \L1|L0|WideOr3~1_combout\ & ( 
-- !\L1|L1|WideOr0~0_combout\ & ( (\L1|L1|WideOr2~0_combout\ & (\L1|L1|WideOr1~0_combout\ & \L1|L0|WideOr3~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010100000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L1|L1|ALT_INV_WideOr2~0_combout\,
	datab => \L1|L1|ALT_INV_WideOr3~0_combout\,
	datac => \L1|L1|ALT_INV_WideOr1~0_combout\,
	datad => \L1|L0|ALT_INV_WideOr3~0_combout\,
	datae => \L1|L0|ALT_INV_WideOr3~1_combout\,
	dataf => \L1|L1|ALT_INV_WideOr0~0_combout\,
	combout => \L2|Equal4~0_combout\);

-- Location: LABCELL_X83_Y9_N57
\L1|L2|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L2|WideOr2~0_combout\ = ( !\L1|L2|EA.S4~q\ & ( !\L1|L2|EA.S13~q\ & ( (!\L1|L2|EA.S12~q\ & !\L1|L2|EA.S5~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L1|L2|ALT_INV_EA.S12~q\,
	datac => \L1|L2|ALT_INV_EA.S5~q\,
	datae => \L1|L2|ALT_INV_EA.S4~q\,
	dataf => \L1|L2|ALT_INV_EA.S13~q\,
	combout => \L1|L2|WideOr2~0_combout\);

-- Location: LABCELL_X83_Y9_N21
\L1|L2|WideOr2\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L2|WideOr2~combout\ = ( \L1|L2|WideOr2~0_combout\ & ( \L1|L2|WideOr1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L1|L2|ALT_INV_WideOr1~0_combout\,
	dataf => \L1|L2|ALT_INV_WideOr2~0_combout\,
	combout => \L1|L2|WideOr2~combout\);

-- Location: MLABCELL_X84_Y9_N15
\L2|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|Equal0~1_combout\ = ( \L1|L2|WideOr2~combout\ & ( \L1|L0|WideOr2~combout\ & ( (\L2|Equal4~1_combout\ & (!\L1|L0|WideOr0~combout\ & (\L2|Equal0~0_combout\ & \L2|Equal4~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|ALT_INV_Equal4~1_combout\,
	datab => \L1|L0|ALT_INV_WideOr0~combout\,
	datac => \L2|ALT_INV_Equal0~0_combout\,
	datad => \L2|ALT_INV_Equal4~0_combout\,
	datae => \L1|L2|ALT_INV_WideOr2~combout\,
	dataf => \L1|L0|ALT_INV_WideOr2~combout\,
	combout => \L2|Equal0~1_combout\);

-- Location: MLABCELL_X84_Y9_N39
\L1|L1|WideOr2\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L1|WideOr2~combout\ = ( \L1|L1|WideOr2~0_combout\ & ( \L1|L1|WideOr1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L1|L1|ALT_INV_WideOr1~0_combout\,
	dataf => \L1|L1|ALT_INV_WideOr2~0_combout\,
	combout => \L1|L1|WideOr2~combout\);

-- Location: LABCELL_X85_Y10_N9
\L1|L1|WideOr0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L1|WideOr0~combout\ = ( \L1|L1|WideOr3~0_combout\ & ( \L1|L1|WideOr0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L1|L1|ALT_INV_WideOr0~0_combout\,
	dataf => \L1|L1|ALT_INV_WideOr3~0_combout\,
	combout => \L1|L1|WideOr0~combout\);

-- Location: MLABCELL_X84_Y9_N9
\L1|L2|WideOr0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L2|WideOr0~combout\ = ( \L1|L2|WideOr3~0_combout\ & ( \L1|L2|WideOr0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L1|L2|ALT_INV_WideOr0~0_combout\,
	dataf => \L1|L2|ALT_INV_WideOr3~0_combout\,
	combout => \L1|L2|WideOr0~combout\);

-- Location: MLABCELL_X84_Y9_N27
\L1|L5|F[2]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L5|F[2]~7_combout\ = ( \L1|L2|WideOr1~0_combout\ & ( (\L1|L2|WideOr2~0_combout\ & ((!\L1|L2|WideOr3~1_combout\) # (!\L1|L2|WideOr3~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010100000101010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L1|L2|ALT_INV_WideOr2~0_combout\,
	datac => \L1|L2|ALT_INV_WideOr3~1_combout\,
	datad => \L1|L2|ALT_INV_WideOr3~0_combout\,
	dataf => \L1|L2|ALT_INV_WideOr1~0_combout\,
	combout => \L1|L5|F[2]~7_combout\);

-- Location: LABCELL_X85_Y9_N42
\L2|Equal4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|Equal4~2_combout\ = ( !\L1|L1|WideOr1~1_combout\ & ( \L1|L1|WideOr1~0_combout\ & ( (!\L1|L1|WideOr3~0_combout\ & (((!\L1|L2|WideOr1~0_combout\) # (!\L1|L2|WideOr1~1_combout\)))) # (\L1|L1|WideOr3~0_combout\ & (!\L1|L1|WideOr3~1_combout\ & 
-- ((!\L1|L2|WideOr1~0_combout\) # (!\L1|L2|WideOr1~1_combout\)))) ) ) ) # ( \L1|L1|WideOr1~1_combout\ & ( !\L1|L1|WideOr1~0_combout\ & ( (!\L1|L1|WideOr3~0_combout\ & (((!\L1|L2|WideOr1~0_combout\) # (!\L1|L2|WideOr1~1_combout\)))) # 
-- (\L1|L1|WideOr3~0_combout\ & (!\L1|L1|WideOr3~1_combout\ & ((!\L1|L2|WideOr1~0_combout\) # (!\L1|L2|WideOr1~1_combout\)))) ) ) ) # ( !\L1|L1|WideOr1~1_combout\ & ( !\L1|L1|WideOr1~0_combout\ & ( (!\L1|L1|WideOr3~0_combout\ & (((!\L1|L2|WideOr1~0_combout\) 
-- # (!\L1|L2|WideOr1~1_combout\)))) # (\L1|L1|WideOr3~0_combout\ & (!\L1|L1|WideOr3~1_combout\ & ((!\L1|L2|WideOr1~0_combout\) # (!\L1|L2|WideOr1~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011100000111011101110000011101110111000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L1|L1|ALT_INV_WideOr3~0_combout\,
	datab => \L1|L1|ALT_INV_WideOr3~1_combout\,
	datac => \L1|L2|ALT_INV_WideOr1~0_combout\,
	datad => \L1|L2|ALT_INV_WideOr1~1_combout\,
	datae => \L1|L1|ALT_INV_WideOr1~1_combout\,
	dataf => \L1|L1|ALT_INV_WideOr1~0_combout\,
	combout => \L2|Equal4~2_combout\);

-- Location: MLABCELL_X84_Y10_N6
\L2|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|Equal2~0_combout\ = ( !\L1|L0|WideOr3~1_combout\ & ( \L1|L0|WideOr0~0_combout\ & ( (\L1|L0|WideOr3~0_combout\ & ((!\L1|L0|WideOr1~0_combout\) # (!\L1|L0|WideOr1~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L1|L0|ALT_INV_WideOr3~0_combout\,
	datac => \L1|L0|ALT_INV_WideOr1~0_combout\,
	datad => \L1|L0|ALT_INV_WideOr1~1_combout\,
	datae => \L1|L0|ALT_INV_WideOr3~1_combout\,
	dataf => \L1|L0|ALT_INV_WideOr0~0_combout\,
	combout => \L2|Equal2~0_combout\);

-- Location: LABCELL_X85_Y9_N21
\L2|Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|Equal2~1_combout\ = ( \L2|Equal4~2_combout\ & ( \L2|Equal2~0_combout\ & ( (\L1|L1|WideOr2~combout\ & (\L1|L1|WideOr0~combout\ & (\L1|L2|WideOr0~combout\ & \L1|L5|F[2]~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L1|L1|ALT_INV_WideOr2~combout\,
	datab => \L1|L1|ALT_INV_WideOr0~combout\,
	datac => \L1|L2|ALT_INV_WideOr0~combout\,
	datad => \L1|L5|ALT_INV_F[2]~7_combout\,
	datae => \L2|ALT_INV_Equal4~2_combout\,
	dataf => \L2|ALT_INV_Equal2~0_combout\,
	combout => \L2|Equal2~1_combout\);

-- Location: LABCELL_X85_Y9_N24
\L2|Equal4~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|Equal4~4_combout\ = ( !\L1|L0|WideOr0~combout\ & ( \L2|Equal4~0_combout\ & ( (\L2|Equal4~2_combout\ & (\L2|Equal4~1_combout\ & !\L1|L2|WideOr2~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L2|ALT_INV_Equal4~2_combout\,
	datac => \L2|ALT_INV_Equal4~1_combout\,
	datad => \L1|L2|ALT_INV_WideOr2~combout\,
	datae => \L1|L0|ALT_INV_WideOr0~combout\,
	dataf => \L2|ALT_INV_Equal4~0_combout\,
	combout => \L2|Equal4~4_combout\);

-- Location: LABCELL_X85_Y9_N0
\L2|WideNor0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|WideNor0~0_combout\ = ( \L2|Equal2~1_combout\ & ( \L2|Equal4~4_combout\ & ( (\L1|L0|WideOr2~combout\ & !\L1|L0|WideOr1~combout\) ) ) ) # ( !\L2|Equal2~1_combout\ & ( \L2|Equal4~4_combout\ & ( (!\L1|L0|WideOr2~combout\ & (\L1|L0|WideOr1~combout\ & 
-- ((!\L2|Equal0~1_combout\) # (\SW[9]~input_o\)))) # (\L1|L0|WideOr2~combout\ & (((!\L1|L0|WideOr1~combout\)))) ) ) ) # ( \L2|Equal2~1_combout\ & ( !\L2|Equal4~4_combout\ & ( (\L1|L0|WideOr2~combout\ & (((!\L1|L0|WideOr1~combout\) # 
-- (!\L2|Equal0~1_combout\)) # (\SW[9]~input_o\))) ) ) ) # ( !\L2|Equal2~1_combout\ & ( !\L2|Equal4~4_combout\ & ( ((!\L1|L0|WideOr1~combout\) # (!\L2|Equal0~1_combout\)) # (\SW[9]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110101001100110011000100111100001101000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \L1|L0|ALT_INV_WideOr2~combout\,
	datac => \L1|L0|ALT_INV_WideOr1~combout\,
	datad => \L2|ALT_INV_Equal0~1_combout\,
	datae => \L2|ALT_INV_Equal2~1_combout\,
	dataf => \L2|ALT_INV_Equal4~4_combout\,
	combout => \L2|WideNor0~0_combout\);

-- Location: LABCELL_X85_Y9_N15
\L2|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|WideOr3~0_combout\ = ( \L2|Equal2~1_combout\ & ( \L2|Equal4~4_combout\ & ( (!\SW[9]~input_o\ & (\L1|L0|WideOr2~combout\)) # (\SW[9]~input_o\ & (((\L2|Equal0~1_combout\ & \L1|L0|WideOr1~combout\)))) ) ) ) # ( !\L2|Equal2~1_combout\ & ( 
-- \L2|Equal4~4_combout\ & ( (!\SW[9]~input_o\ & (\L1|L0|WideOr2~combout\ & ((!\L1|L0|WideOr1~combout\)))) # (\SW[9]~input_o\ & (((\L2|Equal0~1_combout\ & \L1|L0|WideOr1~combout\)))) ) ) ) # ( \L2|Equal2~1_combout\ & ( !\L2|Equal4~4_combout\ & ( 
-- (!\SW[9]~input_o\ & (\L1|L0|WideOr2~combout\)) # (\SW[9]~input_o\ & (((\L2|Equal0~1_combout\ & \L1|L0|WideOr1~combout\)))) ) ) ) # ( !\L2|Equal2~1_combout\ & ( !\L2|Equal4~4_combout\ & ( (\SW[9]~input_o\ & (\L2|Equal0~1_combout\ & 
-- \L1|L0|WideOr1~combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101001000100010011100100010000001010010001000100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \L1|L0|ALT_INV_WideOr2~combout\,
	datac => \L2|ALT_INV_Equal0~1_combout\,
	datad => \L1|L0|ALT_INV_WideOr1~combout\,
	datae => \L2|ALT_INV_Equal2~1_combout\,
	dataf => \L2|ALT_INV_Equal4~4_combout\,
	combout => \L2|WideOr3~0_combout\);

-- Location: MLABCELL_X84_Y10_N3
\L1|L0|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L0|WideOr2~0_combout\ = ( !\L1|L0|EA.S4~q\ & ( (!\L1|L0|EA.S13~q\ & (!\L1|L0|EA.S12~q\ & !\L1|L0|EA.S5~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L1|L0|ALT_INV_EA.S13~q\,
	datab => \L1|L0|ALT_INV_EA.S12~q\,
	datac => \L1|L0|ALT_INV_EA.S5~q\,
	dataf => \L1|L0|ALT_INV_EA.S4~q\,
	combout => \L1|L0|WideOr2~0_combout\);

-- Location: MLABCELL_X84_Y10_N36
\L2|Equal16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|Equal16~0_combout\ = ( !\L1|L0|WideOr2~0_combout\ & ( \L1|L0|WideOr1~0_combout\ & ( (\L1|L0|WideOr0~0_combout\ & (\L1|L0|WideOr3~0_combout\ & !\L1|L0|WideOr1~1_combout\)) ) ) ) # ( \L1|L0|WideOr2~0_combout\ & ( !\L1|L0|WideOr1~0_combout\ & ( 
-- (\L1|L0|WideOr0~0_combout\ & \L1|L0|WideOr3~0_combout\) ) ) ) # ( !\L1|L0|WideOr2~0_combout\ & ( !\L1|L0|WideOr1~0_combout\ & ( (\L1|L0|WideOr0~0_combout\ & \L1|L0|WideOr3~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L1|L0|ALT_INV_WideOr0~0_combout\,
	datac => \L1|L0|ALT_INV_WideOr3~0_combout\,
	datad => \L1|L0|ALT_INV_WideOr1~1_combout\,
	datae => \L1|L0|ALT_INV_WideOr2~0_combout\,
	dataf => \L1|L0|ALT_INV_WideOr1~0_combout\,
	combout => \L2|Equal16~0_combout\);

-- Location: MLABCELL_X84_Y9_N0
\L2|Equal16~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|Equal16~1_combout\ = ( \L2|Equal4~1_combout\ & ( (\L2|Equal4~0_combout\ & (\L2|Equal0~0_combout\ & (\L1|L2|WideOr2~combout\ & \L2|Equal16~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|ALT_INV_Equal4~0_combout\,
	datab => \L2|ALT_INV_Equal0~0_combout\,
	datac => \L1|L2|ALT_INV_WideOr2~combout\,
	datad => \L2|ALT_INV_Equal16~0_combout\,
	dataf => \L2|ALT_INV_Equal4~1_combout\,
	combout => \L2|Equal16~1_combout\);

-- Location: MLABCELL_X84_Y10_N12
\L2|Equal12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|Equal12~0_combout\ = ( \L1|L0|WideOr3~1_combout\ & ( \L1|L0|WideOr1~0_combout\ & ( (\L1|L0|WideOr3~0_combout\ & (\L1|L0|WideOr1~1_combout\ & (!\L1|L0|WideOr0~0_combout\ & !\L1|L0|WideOr2~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L1|L0|ALT_INV_WideOr3~0_combout\,
	datab => \L1|L0|ALT_INV_WideOr1~1_combout\,
	datac => \L1|L0|ALT_INV_WideOr0~0_combout\,
	datad => \L1|L0|ALT_INV_WideOr2~0_combout\,
	datae => \L1|L0|ALT_INV_WideOr3~1_combout\,
	dataf => \L1|L0|ALT_INV_WideOr1~0_combout\,
	combout => \L2|Equal12~0_combout\);

-- Location: LABCELL_X85_Y9_N18
\L2|Equal12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|Equal12~1_combout\ = ( \L2|Equal4~2_combout\ & ( \L2|Equal12~0_combout\ & ( (\L1|L1|WideOr2~combout\ & (\L1|L1|WideOr0~combout\ & (\L1|L5|F[2]~7_combout\ & \L1|L2|WideOr0~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L1|L1|ALT_INV_WideOr2~combout\,
	datab => \L1|L1|ALT_INV_WideOr0~combout\,
	datac => \L1|L5|ALT_INV_F[2]~7_combout\,
	datad => \L1|L2|ALT_INV_WideOr0~combout\,
	datae => \L2|ALT_INV_Equal4~2_combout\,
	dataf => \L2|ALT_INV_Equal12~0_combout\,
	combout => \L2|Equal12~1_combout\);

-- Location: MLABCELL_X84_Y9_N18
\L2|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|WideOr1~0_combout\ = ( \L2|Equal12~1_combout\ & ( \SW[9]~input_o\ ) ) # ( !\L2|Equal12~1_combout\ & ( (\SW[9]~input_o\ & (((!\L1|L0|WideOr1~combout\ & \L2|Equal0~1_combout\)) # (\L2|Equal16~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101000101000001010100010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \L1|L0|ALT_INV_WideOr1~combout\,
	datac => \L2|ALT_INV_Equal16~1_combout\,
	datad => \L2|ALT_INV_Equal0~1_combout\,
	dataf => \L2|ALT_INV_Equal12~1_combout\,
	combout => \L2|WideOr1~0_combout\);

-- Location: LABCELL_X85_Y9_N6
\L2|Equal4~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|Equal4~3_combout\ = ( !\L1|L0|WideOr1~combout\ & ( \L2|Equal4~0_combout\ & ( (\L2|Equal4~1_combout\ & (\L2|Equal4~2_combout\ & (!\L1|L0|WideOr0~combout\ & !\L1|L2|WideOr2~combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|ALT_INV_Equal4~1_combout\,
	datab => \L2|ALT_INV_Equal4~2_combout\,
	datac => \L1|L0|ALT_INV_WideOr0~combout\,
	datad => \L1|L2|ALT_INV_WideOr2~combout\,
	datae => \L1|L0|ALT_INV_WideOr1~combout\,
	dataf => \L2|ALT_INV_Equal4~0_combout\,
	combout => \L2|Equal4~3_combout\);

-- Location: MLABCELL_X87_Y9_N54
\L2|WideOr3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|WideOr3~1_combout\ = ( \L2|Equal12~1_combout\ & ( \L2|Equal2~1_combout\ & ( (!\L1|L0|WideOr2~combout\ & \SW[9]~input_o\) ) ) ) # ( !\L2|Equal12~1_combout\ & ( \L2|Equal2~1_combout\ & ( (!\SW[9]~input_o\ & ((!\L2|Equal16~1_combout\))) # 
-- (\SW[9]~input_o\ & (!\L1|L0|WideOr2~combout\)) ) ) ) # ( \L2|Equal12~1_combout\ & ( !\L2|Equal2~1_combout\ & ( (\SW[9]~input_o\ & ((!\L1|L0|WideOr2~combout\) # (!\L2|Equal4~3_combout\))) ) ) ) # ( !\L2|Equal12~1_combout\ & ( !\L2|Equal2~1_combout\ & ( 
-- (!\SW[9]~input_o\ & (((!\L2|Equal16~1_combout\)))) # (\SW[9]~input_o\ & ((!\L1|L0|WideOr2~combout\) # ((!\L2|Equal4~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111100010001100110010001011100010111000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L1|L0|ALT_INV_WideOr2~combout\,
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \L2|ALT_INV_Equal16~1_combout\,
	datad => \L2|ALT_INV_Equal4~3_combout\,
	datae => \L2|ALT_INV_Equal12~1_combout\,
	dataf => \L2|ALT_INV_Equal2~1_combout\,
	combout => \L2|WideOr3~1_combout\);

-- Location: LABCELL_X88_Y9_N24
\L2|Equal14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|Equal14~0_combout\ = ( \L2|Equal0~1_combout\ & ( (!\L1|L0|WideOr1~combout\ & !\SW[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L1|L0|ALT_INV_WideOr1~combout\,
	datac => \ALT_INV_SW[9]~input_o\,
	dataf => \L2|ALT_INV_Equal0~1_combout\,
	combout => \L2|Equal14~0_combout\);

-- Location: LABCELL_X88_Y9_N9
\L2|WideOr3\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|WideOr3~combout\ = ( !\L2|Equal14~0_combout\ & ( (!\L2|WideOr3~0_combout\ & (\L2|WideOr3~1_combout\ & ((!\L2|WideNor0~0_combout\) # (\L2|WideOr1~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001100000000001000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|ALT_INV_WideNor0~0_combout\,
	datab => \L2|ALT_INV_WideOr3~0_combout\,
	datac => \L2|ALT_INV_WideOr1~0_combout\,
	datad => \L2|ALT_INV_WideOr3~1_combout\,
	dataf => \L2|ALT_INV_Equal14~0_combout\,
	combout => \L2|WideOr3~combout\);

-- Location: LABCELL_X88_Y9_N27
\L2|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|WideOr0~0_combout\ = ( \L1|L0|WideOr2~combout\ & ( (!\L1|L0|WideOr1~combout\ & (((\L2|Equal4~4_combout\)))) # (\L1|L0|WideOr1~combout\ & (\L2|Equal0~1_combout\ & (!\SW[9]~input_o\))) ) ) # ( !\L1|L0|WideOr2~combout\ & ( (\L2|Equal0~1_combout\ & 
-- (\L1|L0|WideOr1~combout\ & !\SW[9]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000110111000001000011011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|ALT_INV_Equal0~1_combout\,
	datab => \L1|L0|ALT_INV_WideOr1~combout\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \L2|ALT_INV_Equal4~4_combout\,
	dataf => \L1|L0|ALT_INV_WideOr2~combout\,
	combout => \L2|WideOr0~0_combout\);

-- Location: MLABCELL_X87_Y9_N45
\L2|WideNor0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|WideNor0~combout\ = ( !\L2|WideOr1~0_combout\ & ( (!\L2|WideOr3~0_combout\ & (!\L2|Equal14~0_combout\ & (\L2|WideNor0~0_combout\ & \L2|WideOr3~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|ALT_INV_WideOr3~0_combout\,
	datab => \L2|ALT_INV_Equal14~0_combout\,
	datac => \L2|ALT_INV_WideNor0~0_combout\,
	datad => \L2|ALT_INV_WideOr3~1_combout\,
	dataf => \L2|ALT_INV_WideOr1~0_combout\,
	combout => \L2|WideNor0~combout\);

-- Location: LABCELL_X88_Y9_N54
\L2|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|Equal1~0_combout\ = ( \L1|L0|WideOr1~combout\ & ( (\L2|Equal0~1_combout\ & \SW[9]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|ALT_INV_Equal0~1_combout\,
	datad => \ALT_INV_SW[9]~input_o\,
	dataf => \L1|L0|ALT_INV_WideOr1~combout\,
	combout => \L2|Equal1~0_combout\);

-- Location: MLABCELL_X87_Y9_N36
\L2|WideOr4\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|WideOr4~combout\ = ( !\L2|WideNor0~combout\ & ( !\L2|Equal1~0_combout\ & ( (!\L2|WideOr0~0_combout\ & ((!\L2|Equal2~1_combout\) # (!\L1|L0|WideOr2~combout\ $ (\SW[9]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100010100010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|ALT_INV_WideOr0~0_combout\,
	datab => \L1|L0|ALT_INV_WideOr2~combout\,
	datac => \L2|ALT_INV_Equal2~1_combout\,
	datad => \ALT_INV_SW[9]~input_o\,
	datae => \L2|ALT_INV_WideNor0~combout\,
	dataf => \L2|ALT_INV_Equal1~0_combout\,
	combout => \L2|WideOr4~combout\);

-- Location: LABCELL_X88_Y9_N45
\L2|WideOr5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|WideOr5~0_combout\ = ( \L1|L0|WideOr2~combout\ & ( (\SW[9]~input_o\ & (((\L2|Equal4~4_combout\ & \L1|L0|WideOr1~combout\)) # (\L2|Equal2~1_combout\))) ) ) # ( !\L1|L0|WideOr2~combout\ & ( (!\SW[9]~input_o\ & \L2|Equal2~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000001000011110000000100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|ALT_INV_Equal4~4_combout\,
	datab => \L1|L0|ALT_INV_WideOr1~combout\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \L2|ALT_INV_Equal2~1_combout\,
	dataf => \L1|L0|ALT_INV_WideOr2~combout\,
	combout => \L2|WideOr5~0_combout\);

-- Location: LABCELL_X88_Y9_N36
\L2|WideOr5\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|WideOr5~combout\ = ( !\L2|WideNor0~combout\ & ( (!\L2|WideOr0~0_combout\ & !\L2|WideOr5~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|ALT_INV_WideOr0~0_combout\,
	datad => \L2|ALT_INV_WideOr5~0_combout\,
	dataf => \L2|ALT_INV_WideNor0~combout\,
	combout => \L2|WideOr5~combout\);

-- Location: LABCELL_X85_Y9_N54
\L2|WideOr6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|WideOr6~0_combout\ = ( \L2|Equal2~1_combout\ & ( \L2|Equal4~4_combout\ & ( (!\SW[9]~input_o\ & (\L1|L0|WideOr2~combout\)) # (\SW[9]~input_o\ & (\L1|L0|WideOr1~combout\ & ((\L2|Equal0~1_combout\) # (\L1|L0|WideOr2~combout\)))) ) ) ) # ( 
-- !\L2|Equal2~1_combout\ & ( \L2|Equal4~4_combout\ & ( (!\SW[9]~input_o\ & (\L1|L0|WideOr2~combout\)) # (\SW[9]~input_o\ & (\L1|L0|WideOr1~combout\ & ((\L2|Equal0~1_combout\) # (\L1|L0|WideOr2~combout\)))) ) ) ) # ( \L2|Equal2~1_combout\ & ( 
-- !\L2|Equal4~4_combout\ & ( (!\SW[9]~input_o\ & (\L1|L0|WideOr2~combout\)) # (\SW[9]~input_o\ & (((\L1|L0|WideOr1~combout\ & \L2|Equal0~1_combout\)))) ) ) ) # ( !\L2|Equal2~1_combout\ & ( !\L2|Equal4~4_combout\ & ( (\SW[9]~input_o\ & 
-- (\L1|L0|WideOr1~combout\ & \L2|Equal0~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101001000100010011100100011001001110010001100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \L1|L0|ALT_INV_WideOr2~combout\,
	datac => \L1|L0|ALT_INV_WideOr1~combout\,
	datad => \L2|ALT_INV_Equal0~1_combout\,
	datae => \L2|ALT_INV_Equal2~1_combout\,
	dataf => \L2|ALT_INV_Equal4~4_combout\,
	combout => \L2|WideOr6~0_combout\);

-- Location: MLABCELL_X87_Y9_N48
\L2|WideOr6\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|WideOr6~combout\ = ( \L2|Equal14~0_combout\ & ( \L2|WideOr3~1_combout\ & ( (!\L2|WideOr6~0_combout\ & !\L2|WideOr1~0_combout\) ) ) ) # ( !\L2|Equal14~0_combout\ & ( \L2|WideOr3~1_combout\ & ( (!\L2|WideOr6~0_combout\ & (!\L2|WideOr1~0_combout\ & 
-- ((!\L2|WideNor0~0_combout\) # (\L2|WideOr3~0_combout\)))) ) ) ) # ( \L2|Equal14~0_combout\ & ( !\L2|WideOr3~1_combout\ & ( (!\L2|WideOr6~0_combout\ & !\L2|WideOr1~0_combout\) ) ) ) # ( !\L2|Equal14~0_combout\ & ( !\L2|WideOr3~1_combout\ & ( 
-- (!\L2|WideOr6~0_combout\ & !\L2|WideOr1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011010000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|ALT_INV_WideOr3~0_combout\,
	datab => \L2|ALT_INV_WideNor0~0_combout\,
	datac => \L2|ALT_INV_WideOr6~0_combout\,
	datad => \L2|ALT_INV_WideOr1~0_combout\,
	datae => \L2|ALT_INV_Equal14~0_combout\,
	dataf => \L2|ALT_INV_WideOr3~1_combout\,
	combout => \L2|WideOr6~combout\);

-- Location: LABCELL_X85_Y9_N48
\L2|WideOr7\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|WideOr7~combout\ = ( \L2|Equal2~1_combout\ & ( (!\SW[9]~input_o\) # (\L2|Equal12~1_combout\) ) ) # ( !\L2|Equal2~1_combout\ & ( ((!\SW[9]~input_o\ & \L2|Equal4~3_combout\)) # (\L2|Equal12~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111001111000011111100111111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \L2|ALT_INV_Equal12~1_combout\,
	datad => \L2|ALT_INV_Equal4~3_combout\,
	dataf => \L2|ALT_INV_Equal2~1_combout\,
	combout => \L2|WideOr7~combout\);

-- Location: MLABCELL_X87_Y9_N0
\L3|L0|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L3|L0|Add0~1_sumout\ = SUM(( !\L3|L1|Q\(0) ) + ( (\L4|L0|habilit_credit~q\ & \L2|WideOr7~combout\) ) + ( !VCC ))
-- \L3|L0|Add0~2\ = CARRY(( !\L3|L1|Q\(0) ) + ( (\L4|L0|habilit_credit~q\ & \L2|WideOr7~combout\) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001111110000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L4|L0|ALT_INV_habilit_credit~q\,
	datac => \L2|ALT_INV_WideOr7~combout\,
	datad => \L3|L1|ALT_INV_Q\(0),
	cin => GND,
	sumout => \L3|L0|Add0~1_sumout\,
	cout => \L3|L0|Add0~2\);

-- Location: MLABCELL_X87_Y8_N36
\L3|L1|Q[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L3|L1|Q[0]~0_combout\ = ( !\L3|L0|Add0~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \L3|L0|ALT_INV_Add0~1_sumout\,
	combout => \L3|L1|Q[0]~0_combout\);

-- Location: FF_X87_Y8_N38
\L3|L1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \L3|L1|Q[0]~0_combout\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L3|L1|Q\(0));

-- Location: MLABCELL_X87_Y9_N3
\L3|L0|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \L3|L0|Add0~5_sumout\ = SUM(( (\L4|L0|habilit_credit~q\ & \L2|WideOr6~combout\) ) + ( !\L3|L1|Q\(1) ) + ( \L3|L0|Add0~2\ ))
-- \L3|L0|Add0~6\ = CARRY(( (\L4|L0|habilit_credit~q\ & \L2|WideOr6~combout\) ) + ( !\L3|L1|Q\(1) ) + ( \L3|L0|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L3|L1|ALT_INV_Q\(1),
	datac => \L4|L0|ALT_INV_habilit_credit~q\,
	datad => \L2|ALT_INV_WideOr6~combout\,
	cin => \L3|L0|Add0~2\,
	sumout => \L3|L0|Add0~5_sumout\,
	cout => \L3|L0|Add0~6\);

-- Location: LABCELL_X88_Y9_N42
\L3|L1|Q[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L3|L1|Q[1]~1_combout\ = !\L3|L0|Add0~5_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L3|L0|ALT_INV_Add0~5_sumout\,
	combout => \L3|L1|Q[1]~1_combout\);

-- Location: FF_X88_Y9_N44
\L3|L1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \L3|L1|Q[1]~1_combout\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L3|L1|Q\(1));

-- Location: MLABCELL_X87_Y9_N6
\L3|L0|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \L3|L0|Add0~9_sumout\ = SUM(( (\L4|L0|habilit_credit~DUPLICATE_q\ & \L2|WideOr5~combout\) ) + ( !\L3|L1|Q\(2) ) + ( \L3|L0|Add0~6\ ))
-- \L3|L0|Add0~10\ = CARRY(( (\L4|L0|habilit_credit~DUPLICATE_q\ & \L2|WideOr5~combout\) ) + ( !\L3|L1|Q\(2) ) + ( \L3|L0|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L3|L1|ALT_INV_Q\(2),
	datac => \L4|L0|ALT_INV_habilit_credit~DUPLICATE_q\,
	datad => \L2|ALT_INV_WideOr5~combout\,
	cin => \L3|L0|Add0~6\,
	sumout => \L3|L0|Add0~9_sumout\,
	cout => \L3|L0|Add0~10\);

-- Location: LABCELL_X88_Y9_N6
\L3|L1|Q[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \L3|L1|Q[2]~2_combout\ = ( !\L3|L0|Add0~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \L3|L0|ALT_INV_Add0~9_sumout\,
	combout => \L3|L1|Q[2]~2_combout\);

-- Location: FF_X88_Y9_N8
\L3|L1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \L3|L1|Q[2]~2_combout\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L3|L1|Q\(2));

-- Location: MLABCELL_X87_Y9_N9
\L3|L0|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \L3|L0|Add0~13_sumout\ = SUM(( \L3|L1|Q\(3) ) + ( (\L4|L0|habilit_credit~q\ & \L2|WideOr4~combout\) ) + ( \L3|L0|Add0~10\ ))
-- \L3|L0|Add0~14\ = CARRY(( \L3|L1|Q\(3) ) + ( (\L4|L0|habilit_credit~q\ & \L2|WideOr4~combout\) ) + ( \L3|L0|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001111110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L4|L0|ALT_INV_habilit_credit~q\,
	datac => \L2|ALT_INV_WideOr4~combout\,
	datad => \L3|L1|ALT_INV_Q\(3),
	cin => \L3|L0|Add0~10\,
	sumout => \L3|L0|Add0~13_sumout\,
	cout => \L3|L0|Add0~14\);

-- Location: FF_X87_Y9_N11
\L3|L1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \L3|L0|Add0~13_sumout\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L3|L1|Q\(3));

-- Location: MLABCELL_X87_Y9_N12
\L3|L0|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \L3|L0|Add0~17_sumout\ = SUM(( (\L4|L0|habilit_credit~DUPLICATE_q\ & \L2|WideOr3~combout\) ) + ( !\L3|L1|Q\(4) ) + ( \L3|L0|Add0~14\ ))
-- \L3|L0|Add0~18\ = CARRY(( (\L4|L0|habilit_credit~DUPLICATE_q\ & \L2|WideOr3~combout\) ) + ( !\L3|L1|Q\(4) ) + ( \L3|L0|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L4|L0|ALT_INV_habilit_credit~DUPLICATE_q\,
	datad => \L2|ALT_INV_WideOr3~combout\,
	dataf => \L3|L1|ALT_INV_Q\(4),
	cin => \L3|L0|Add0~14\,
	sumout => \L3|L0|Add0~17_sumout\,
	cout => \L3|L0|Add0~18\);

-- Location: MLABCELL_X87_Y9_N42
\L3|L1|Q[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \L3|L1|Q[4]~3_combout\ = ( !\L3|L0|Add0~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \L3|L0|ALT_INV_Add0~17_sumout\,
	combout => \L3|L1|Q[4]~3_combout\);

-- Location: FF_X87_Y9_N44
\L3|L1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \L3|L1|Q[4]~3_combout\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L3|L1|Q\(4));

-- Location: LABCELL_X88_Y9_N57
\L2|WideOr0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|WideOr0~combout\ = ( !\L2|WideNor0~combout\ & ( (!\L2|Equal1~0_combout\ & (!\L2|WideOr0~0_combout\ & ((!\L1|L0|WideOr2~combout\) # (!\L2|Equal2~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010000000101000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|ALT_INV_Equal1~0_combout\,
	datab => \L1|L0|ALT_INV_WideOr2~combout\,
	datac => \L2|ALT_INV_WideOr0~0_combout\,
	datad => \L2|ALT_INV_Equal2~1_combout\,
	dataf => \L2|ALT_INV_WideNor0~combout\,
	combout => \L2|WideOr0~combout\);

-- Location: LABCELL_X88_Y9_N0
\L2|WideOr1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|WideOr1~combout\ = ( !\L2|WideNor0~combout\ & ( (!\L2|WideOr1~0_combout\ & (!\L2|WideOr0~0_combout\ & ((!\L1|L0|WideOr2~combout\) # (!\L2|Equal2~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010000000101000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|ALT_INV_WideOr1~0_combout\,
	datab => \L1|L0|ALT_INV_WideOr2~combout\,
	datac => \L2|ALT_INV_WideOr0~0_combout\,
	datad => \L2|ALT_INV_Equal2~1_combout\,
	dataf => \L2|ALT_INV_WideNor0~combout\,
	combout => \L2|WideOr1~combout\);

-- Location: MLABCELL_X87_Y8_N39
\L2|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|WideOr2~0_combout\ = ( \L2|Equal2~1_combout\ & ( (\L1|L0|WideOr2~combout\ & ((!\L1|L0|WideOr1~combout\) # ((!\L2|Equal4~4_combout\ & !\L2|Equal0~1_combout\)))) ) ) # ( !\L2|Equal2~1_combout\ & ( (!\L1|L0|WideOr1~combout\ & ((!\L2|Equal4~4_combout\) # 
-- ((\L1|L0|WideOr2~combout\)))) # (\L1|L0|WideOr1~combout\ & (!\L2|Equal0~1_combout\ & ((!\L2|Equal4~4_combout\) # (!\L1|L0|WideOr2~combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101111100000101110111110000000110011001000000011001100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|ALT_INV_Equal4~4_combout\,
	datab => \L1|L0|ALT_INV_WideOr2~combout\,
	datac => \L2|ALT_INV_Equal0~1_combout\,
	datad => \L1|L0|ALT_INV_WideOr1~combout\,
	dataf => \L2|ALT_INV_Equal2~1_combout\,
	combout => \L2|WideOr2~0_combout\);

-- Location: MLABCELL_X87_Y9_N15
\L3|L0|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \L3|L0|Add0~21_sumout\ = SUM(( \L3|L1|Q\(5) ) + ( (!\L2|WideOr2~0_combout\ & \L4|L0|habilit_credit~q\) ) + ( \L3|L0|Add0~18\ ))
-- \L3|L0|Add0~22\ = CARRY(( \L3|L1|Q\(5) ) + ( (!\L2|WideOr2~0_combout\ & \L4|L0|habilit_credit~q\) ) + ( \L3|L0|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011111010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|ALT_INV_WideOr2~0_combout\,
	datac => \L4|L0|ALT_INV_habilit_credit~q\,
	datad => \L3|L1|ALT_INV_Q\(5),
	cin => \L3|L0|Add0~18\,
	sumout => \L3|L0|Add0~21_sumout\,
	cout => \L3|L0|Add0~22\);

-- Location: FF_X87_Y9_N17
\L3|L1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \L3|L0|Add0~21_sumout\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L3|L1|Q\(5));

-- Location: MLABCELL_X87_Y9_N18
\L3|L0|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \L3|L0|Add0~25_sumout\ = SUM(( \L3|L1|Q\(6) ) + ( (\L2|WideOr1~combout\ & \L4|L0|habilit_credit~DUPLICATE_q\) ) + ( \L3|L0|Add0~22\ ))
-- \L3|L0|Add0~26\ = CARRY(( \L3|L1|Q\(6) ) + ( (\L2|WideOr1~combout\ & \L4|L0|habilit_credit~DUPLICATE_q\) ) + ( \L3|L0|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001111110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L2|ALT_INV_WideOr1~combout\,
	datac => \L4|L0|ALT_INV_habilit_credit~DUPLICATE_q\,
	datad => \L3|L1|ALT_INV_Q\(6),
	cin => \L3|L0|Add0~22\,
	sumout => \L3|L0|Add0~25_sumout\,
	cout => \L3|L0|Add0~26\);

-- Location: FF_X87_Y9_N20
\L3|L1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \L3|L0|Add0~25_sumout\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L3|L1|Q\(6));

-- Location: MLABCELL_X87_Y9_N21
\L3|L0|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \L3|L0|Add0~29_sumout\ = SUM(( \L3|L1|Q\(7) ) + ( (\L2|WideOr0~combout\ & \L4|L0|habilit_credit~q\) ) + ( \L3|L0|Add0~26\ ))
-- \L3|L0|Add0~30\ = CARRY(( \L3|L1|Q\(7) ) + ( (\L2|WideOr0~combout\ & \L4|L0|habilit_credit~q\) ) + ( \L3|L0|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|ALT_INV_WideOr0~combout\,
	datac => \L4|L0|ALT_INV_habilit_credit~q\,
	datad => \L3|L1|ALT_INV_Q\(7),
	cin => \L3|L0|Add0~26\,
	sumout => \L3|L0|Add0~29_sumout\,
	cout => \L3|L0|Add0~30\);

-- Location: FF_X87_Y9_N23
\L3|L1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \L3|L0|Add0~29_sumout\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L3|L1|Q\(7));

-- Location: MLABCELL_X87_Y9_N24
\L3|L0|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \L3|L0|Add0~33_sumout\ = SUM(( \L3|L1|Q\(8) ) + ( (\L2|WideOr0~combout\ & \L4|L0|habilit_credit~DUPLICATE_q\) ) + ( \L3|L0|Add0~30\ ))
-- \L3|L0|Add0~34\ = CARRY(( \L3|L1|Q\(8) ) + ( (\L2|WideOr0~combout\ & \L4|L0|habilit_credit~DUPLICATE_q\) ) + ( \L3|L0|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|ALT_INV_WideOr0~combout\,
	datac => \L4|L0|ALT_INV_habilit_credit~DUPLICATE_q\,
	datad => \L3|L1|ALT_INV_Q\(8),
	cin => \L3|L0|Add0~30\,
	sumout => \L3|L0|Add0~33_sumout\,
	cout => \L3|L0|Add0~34\);

-- Location: FF_X87_Y9_N26
\L3|L1|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \L3|L0|Add0~33_sumout\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L3|L1|Q\(8));

-- Location: MLABCELL_X87_Y9_N27
\L3|L0|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \L3|L0|Add0~37_sumout\ = SUM(( \L3|L1|Q\(9) ) + ( (\L2|WideOr0~combout\ & \L4|L0|habilit_credit~q\) ) + ( \L3|L0|Add0~34\ ))
-- \L3|L0|Add0~38\ = CARRY(( \L3|L1|Q\(9) ) + ( (\L2|WideOr0~combout\ & \L4|L0|habilit_credit~q\) ) + ( \L3|L0|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111101000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|ALT_INV_WideOr0~combout\,
	datac => \L4|L0|ALT_INV_habilit_credit~q\,
	datad => \L3|L1|ALT_INV_Q\(9),
	cin => \L3|L0|Add0~34\,
	sumout => \L3|L0|Add0~37_sumout\,
	cout => \L3|L0|Add0~38\);

-- Location: FF_X87_Y9_N29
\L3|L1|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \L3|L0|Add0~37_sumout\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L3|L1|Q\(9));

-- Location: MLABCELL_X87_Y9_N30
\L3|L0|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \L3|L0|Add0~41_sumout\ = SUM(( \L3|L1|Q\(10) ) + ( (\L2|WideOr0~combout\ & \L4|L0|habilit_credit~DUPLICATE_q\) ) + ( \L3|L0|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001111110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L2|ALT_INV_WideOr0~combout\,
	datac => \L4|L0|ALT_INV_habilit_credit~DUPLICATE_q\,
	datad => \L3|L1|ALT_INV_Q\(10),
	cin => \L3|L0|Add0~38\,
	sumout => \L3|L0|Add0~41_sumout\);

-- Location: FF_X87_Y9_N32
\L3|L1|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \L3|L0|Add0~41_sumout\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L3|L1|Q\(10));

-- Location: MLABCELL_X87_Y8_N27
\L3|below_equal_zero~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L3|below_equal_zero~1_combout\ = ( !\L3|L1|Q\(3) & ( (\L3|L1|Q\(2) & (\L3|L1|Q\(1) & \L3|L1|Q\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L3|L1|ALT_INV_Q\(2),
	datac => \L3|L1|ALT_INV_Q\(1),
	datad => \L3|L1|ALT_INV_Q\(0),
	dataf => \L3|L1|ALT_INV_Q\(3),
	combout => \L3|below_equal_zero~1_combout\);

-- Location: MLABCELL_X87_Y8_N6
\L3|below_equal_zero~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L3|below_equal_zero~0_combout\ = ( !\L3|L1|Q\(9) & ( !\L3|L1|Q\(6) & ( (!\L3|L1|Q\(8) & (!\L3|L1|Q\(5) & !\L3|L1|Q\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L3|L1|ALT_INV_Q\(8),
	datac => \L3|L1|ALT_INV_Q\(5),
	datad => \L3|L1|ALT_INV_Q\(7),
	datae => \L3|L1|ALT_INV_Q\(9),
	dataf => \L3|L1|ALT_INV_Q\(6),
	combout => \L3|below_equal_zero~0_combout\);

-- Location: MLABCELL_X87_Y8_N0
\L4|L0|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L4|L0|process_0~0_combout\ = ( \L3|below_equal_zero~1_combout\ & ( \L3|below_equal_zero~0_combout\ & ( (!\KEY[0]~input_o\) # ((\L3|L1|Q\(10)) # (\L3|L1|Q\(4))) ) ) ) # ( !\L3|below_equal_zero~1_combout\ & ( \L3|below_equal_zero~0_combout\ & ( 
-- (!\KEY[0]~input_o\) # (\L3|L1|Q\(10)) ) ) ) # ( \L3|below_equal_zero~1_combout\ & ( !\L3|below_equal_zero~0_combout\ & ( (!\KEY[0]~input_o\) # (\L3|L1|Q\(10)) ) ) ) # ( !\L3|below_equal_zero~1_combout\ & ( !\L3|below_equal_zero~0_combout\ & ( 
-- (!\KEY[0]~input_o\) # (\L3|L1|Q\(10)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011111111110011001111111111001100111111111100111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \L3|L1|ALT_INV_Q\(4),
	datad => \L3|L1|ALT_INV_Q\(10),
	datae => \L3|ALT_INV_below_equal_zero~1_combout\,
	dataf => \L3|ALT_INV_below_equal_zero~0_combout\,
	combout => \L4|L0|process_0~0_combout\);

-- Location: FF_X88_Y8_N32
\L4|L0|EA.S1~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \L4|L0|PE.S1~q\,
	clrn => \L4|L0|ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|L0|EA.S1~DUPLICATE_q\);

-- Location: LABCELL_X88_Y8_N48
\L4|L0|Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L4|L0|Selector10~0_combout\ = ( \L4|L0|EA.B1~q\ & ( \L4|L0|EA.S1~DUPLICATE_q\ & ( !\KEY[3]~input_o\ ) ) ) # ( !\L4|L0|EA.B1~q\ & ( \L4|L0|EA.S1~DUPLICATE_q\ & ( !\KEY[3]~input_o\ ) ) ) # ( \L4|L0|EA.B1~q\ & ( !\L4|L0|EA.S1~DUPLICATE_q\ & ( 
-- !\KEY[3]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[3]~input_o\,
	datae => \L4|L0|ALT_INV_EA.B1~q\,
	dataf => \L4|L0|ALT_INV_EA.S1~DUPLICATE_q\,
	combout => \L4|L0|Selector10~0_combout\);

-- Location: FF_X88_Y8_N49
\L4|L0|PE.B1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L4|L0|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|L0|PE.B1~q\);

-- Location: FF_X87_Y8_N44
\L4|L0|EA.B1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \L4|L0|PE.B1~q\,
	clrn => \L4|L0|ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|L0|EA.B1~q\);

-- Location: LABCELL_X88_Y8_N0
\L4|L0|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L4|L0|Selector9~0_combout\ = ( \L4|L0|EA.S6~q\ & ( (!\L4|L0|LessThan0~0_combout\) # ((\KEY[3]~input_o\ & ((\L4|L0|EA.B1~q\) # (\L4|L0|EA.S2~q\)))) ) ) # ( !\L4|L0|EA.S6~q\ & ( (\KEY[3]~input_o\ & ((\L4|L0|EA.B1~q\) # (\L4|L0|EA.S2~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101010101000100010101010111110001111101011111000111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[3]~input_o\,
	datab => \L4|L0|ALT_INV_EA.S2~q\,
	datac => \L4|L0|ALT_INV_LessThan0~0_combout\,
	datad => \L4|L0|ALT_INV_EA.B1~q\,
	dataf => \L4|L0|ALT_INV_EA.S6~q\,
	combout => \L4|L0|Selector9~0_combout\);

-- Location: FF_X88_Y8_N1
\L4|L0|PE.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L4|L0|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|L0|PE.S2~q\);

-- Location: FF_X87_Y8_N53
\L4|L0|EA.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \L4|L0|PE.S2~q\,
	clrn => \L4|L0|ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|L0|EA.S2~q\);

-- Location: LABCELL_X88_Y8_N18
\L4|L0|Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L4|L0|Selector11~0_combout\ = (!\KEY[3]~input_o\ & ((\L4|L0|EA.S2~q\) # (\L4|L0|EA.B2~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010101010000010101010101000001010101010100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[3]~input_o\,
	datac => \L4|L0|ALT_INV_EA.B2~q\,
	datad => \L4|L0|ALT_INV_EA.S2~q\,
	combout => \L4|L0|Selector11~0_combout\);

-- Location: FF_X88_Y8_N19
\L4|L0|PE.B2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L4|L0|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|L0|PE.B2~q\);

-- Location: FF_X87_Y8_N13
\L4|L0|EA.B2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \L4|L0|PE.B2~q\,
	clrn => \L4|L0|ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|L0|EA.B2~q\);

-- Location: LABCELL_X88_Y8_N36
\L4|L0|PE~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \L4|L0|PE~15_combout\ = (\KEY[3]~input_o\ & ((\L4|L0|EA.S3~q\) # (\L4|L0|EA.B2~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101000001010101010100000101010101010000010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[3]~input_o\,
	datac => \L4|L0|ALT_INV_EA.B2~q\,
	datad => \L4|L0|ALT_INV_EA.S3~q\,
	combout => \L4|L0|PE~15_combout\);

-- Location: FF_X88_Y8_N38
\L4|L0|PE.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L4|L0|PE~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|L0|PE.S3~q\);

-- Location: FF_X87_Y8_N22
\L4|L0|EA.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \L4|L0|PE.S3~q\,
	clrn => \L4|L0|ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|L0|EA.S3~q\);

-- Location: LABCELL_X88_Y8_N21
\L4|L0|Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L4|L0|Selector12~0_combout\ = ( \L4|L0|EA.B3~q\ & ( !\KEY[3]~input_o\ ) ) # ( !\L4|L0|EA.B3~q\ & ( (!\KEY[3]~input_o\ & \L4|L0|EA.S3~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[3]~input_o\,
	datad => \L4|L0|ALT_INV_EA.S3~q\,
	dataf => \L4|L0|ALT_INV_EA.B3~q\,
	combout => \L4|L0|Selector12~0_combout\);

-- Location: FF_X88_Y8_N23
\L4|L0|PE.B3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L4|L0|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|L0|PE.B3~q\);

-- Location: FF_X88_Y8_N14
\L4|L0|EA.B3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \L4|L0|PE.B3~q\,
	clrn => \L4|L0|ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|L0|EA.B3~q\);

-- Location: LABCELL_X85_Y8_N15
\L4|L0|PE~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \L4|L0|PE~17_combout\ = ( \L4|L0|EA.B3~q\ & ( \L4|L0|EA.S4~DUPLICATE_q\ & ( \KEY[3]~input_o\ ) ) ) # ( !\L4|L0|EA.B3~q\ & ( \L4|L0|EA.S4~DUPLICATE_q\ & ( \KEY[3]~input_o\ ) ) ) # ( \L4|L0|EA.B3~q\ & ( !\L4|L0|EA.S4~DUPLICATE_q\ & ( \KEY[3]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[3]~input_o\,
	datae => \L4|L0|ALT_INV_EA.B3~q\,
	dataf => \L4|L0|ALT_INV_EA.S4~DUPLICATE_q\,
	combout => \L4|L0|PE~17_combout\);

-- Location: FF_X85_Y8_N16
\L4|L0|PE.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L4|L0|PE~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|L0|PE.S4~q\);

-- Location: FF_X87_Y8_N4
\L4|L0|EA.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \L4|L0|PE.S4~q\,
	clrn => \L4|L0|ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|L0|EA.S4~q\);

-- Location: LABCELL_X88_Y8_N27
\L4|L0|Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L4|L0|Selector13~0_combout\ = ( \L4|L0|EA.B4~q\ & ( !\KEY[3]~input_o\ ) ) # ( !\L4|L0|EA.B4~q\ & ( (!\KEY[3]~input_o\ & \L4|L0|EA.S4~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[3]~input_o\,
	datac => \L4|L0|ALT_INV_EA.S4~q\,
	dataf => \L4|L0|ALT_INV_EA.B4~q\,
	combout => \L4|L0|Selector13~0_combout\);

-- Location: FF_X88_Y8_N29
\L4|L0|PE.B4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L4|L0|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|L0|PE.B4~q\);

-- Location: FF_X87_Y8_N55
\L4|L0|EA.B4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \L4|L0|PE.B4~q\,
	clrn => \L4|L0|ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|L0|EA.B4~q\);

-- Location: LABCELL_X88_Y8_N42
\L4|L0|PE~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \L4|L0|PE~16_combout\ = ( \L4|L0|EA.B4~q\ & ( \KEY[3]~input_o\ ) ) # ( !\L4|L0|EA.B4~q\ & ( (\L4|L0|EA.S5~q\ & \KEY[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L4|L0|ALT_INV_EA.S5~q\,
	datac => \ALT_INV_KEY[3]~input_o\,
	dataf => \L4|L0|ALT_INV_EA.B4~q\,
	combout => \L4|L0|PE~16_combout\);

-- Location: FF_X88_Y8_N44
\L4|L0|PE.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L4|L0|PE~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|L0|PE.S5~q\);

-- Location: FF_X87_Y8_N10
\L4|L0|EA.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \L4|L0|PE.S5~q\,
	clrn => \L4|L0|ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|L0|EA.S5~q\);

-- Location: LABCELL_X88_Y8_N6
\L4|L0|Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L4|L0|Selector14~0_combout\ = ( \L4|L0|EA.B5~q\ & ( !\KEY[3]~input_o\ ) ) # ( !\L4|L0|EA.B5~q\ & ( (\L4|L0|EA.S5~q\ & !\KEY[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L4|L0|ALT_INV_EA.S5~q\,
	datac => \ALT_INV_KEY[3]~input_o\,
	dataf => \L4|L0|ALT_INV_EA.B5~q\,
	combout => \L4|L0|Selector14~0_combout\);

-- Location: FF_X88_Y8_N7
\L4|L0|PE.B5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L4|L0|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|L0|PE.B5~q\);

-- Location: FF_X87_Y8_N17
\L4|L0|EA.B5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \L4|L0|PE.B5~q\,
	clrn => \L4|L0|ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|L0|EA.B5~q\);

-- Location: LABCELL_X88_Y8_N39
\L4|L0|PE~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \L4|L0|PE~14_combout\ = ( \L4|L0|EA.B5~q\ & ( \KEY[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[3]~input_o\,
	dataf => \L4|L0|ALT_INV_EA.B5~q\,
	combout => \L4|L0|PE~14_combout\);

-- Location: FF_X88_Y8_N41
\L4|L0|PE.S6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L4|L0|PE~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|L0|PE.S6~q\);

-- Location: FF_X88_Y8_N17
\L4|L0|EA.S6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \L4|L0|PE.S6~q\,
	clrn => \L4|L0|ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|L0|EA.S6~q\);

-- Location: FF_X87_Y10_N19
\L4|L0|rounds[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L4|L0|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|L0|rounds[3]~DUPLICATE_q\);

-- Location: FF_X88_Y8_N31
\L4|L0|EA.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \L4|L0|PE.S1~q\,
	clrn => \L4|L0|ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|L0|EA.S1~q\);

-- Location: MLABCELL_X87_Y10_N6
\L4|L0|Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L4|L0|Selector17~0_combout\ = ( \L4|L0|rounds\(1) & ( \L4|L0|rounds[2]~DUPLICATE_q\ & ( (!\L4|L0|EA.S6~q\ & (((!\L4|L0|EA.S1~q\)))) # (\L4|L0|EA.S6~q\ & (((!\L4|L0|rounds\(0))) # (\L4|L0|rounds[3]~DUPLICATE_q\))) ) ) ) # ( !\L4|L0|rounds\(1) & ( 
-- \L4|L0|rounds[2]~DUPLICATE_q\ & ( (\L4|L0|EA.S6~q\ & (!\L4|L0|rounds[3]~DUPLICATE_q\ & \L4|L0|rounds\(0))) ) ) ) # ( \L4|L0|rounds\(1) & ( !\L4|L0|rounds[2]~DUPLICATE_q\ & ( (!\L4|L0|EA.S6~q\ & (((!\L4|L0|EA.S1~q\)))) # (\L4|L0|EA.S6~q\ & 
-- (((!\L4|L0|rounds\(0))) # (\L4|L0|rounds[3]~DUPLICATE_q\))) ) ) ) # ( !\L4|L0|rounds\(1) & ( !\L4|L0|rounds[2]~DUPLICATE_q\ & ( (\L4|L0|EA.S6~q\ & \L4|L0|rounds\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111110110101000100000100000001001111101101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L4|L0|ALT_INV_EA.S6~q\,
	datab => \L4|L0|ALT_INV_rounds[3]~DUPLICATE_q\,
	datac => \L4|L0|ALT_INV_rounds\(0),
	datad => \L4|L0|ALT_INV_EA.S1~q\,
	datae => \L4|L0|ALT_INV_rounds\(1),
	dataf => \L4|L0|ALT_INV_rounds[2]~DUPLICATE_q\,
	combout => \L4|L0|Selector17~0_combout\);

-- Location: FF_X87_Y10_N8
\L4|L0|rounds[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L4|L0|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|L0|rounds\(1));

-- Location: MLABCELL_X87_Y10_N18
\L4|L0|Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L4|L0|Selector15~0_combout\ = ( \L4|L0|rounds\(3) & ( \L4|L0|rounds[2]~DUPLICATE_q\ & ( (!\L4|L0|EA.S1~q\) # (\L4|L0|EA.S6~q\) ) ) ) # ( !\L4|L0|rounds\(3) & ( \L4|L0|rounds[2]~DUPLICATE_q\ & ( (\L4|L0|rounds\(0) & (\L4|L0|rounds\(1) & \L4|L0|EA.S6~q\)) 
-- ) ) ) # ( \L4|L0|rounds\(3) & ( !\L4|L0|rounds[2]~DUPLICATE_q\ & ( (!\L4|L0|EA.S1~q\) # (\L4|L0|EA.S6~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000111100000001000000011111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L4|L0|ALT_INV_rounds\(0),
	datab => \L4|L0|ALT_INV_rounds\(1),
	datac => \L4|L0|ALT_INV_EA.S6~q\,
	datad => \L4|L0|ALT_INV_EA.S1~q\,
	datae => \L4|L0|ALT_INV_rounds\(3),
	dataf => \L4|L0|ALT_INV_rounds[2]~DUPLICATE_q\,
	combout => \L4|L0|Selector15~0_combout\);

-- Location: FF_X87_Y10_N20
\L4|L0|rounds[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L4|L0|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|L0|rounds\(3));

-- Location: MLABCELL_X87_Y10_N0
\L4|L0|Selector18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L4|L0|Selector18~0_combout\ = ( \L4|L0|rounds\(0) & ( \L4|L0|rounds[2]~DUPLICATE_q\ & ( (!\L4|L0|EA.S6~q\ & ((!\L4|L0|EA.S1~q\))) # (\L4|L0|EA.S6~q\ & (\L4|L0|rounds\(3))) ) ) ) # ( !\L4|L0|rounds\(0) & ( \L4|L0|rounds[2]~DUPLICATE_q\ & ( 
-- (!\L4|L0|rounds\(3) & \L4|L0|EA.S6~q\) ) ) ) # ( \L4|L0|rounds\(0) & ( !\L4|L0|rounds[2]~DUPLICATE_q\ & ( (!\L4|L0|EA.S6~q\ & (((!\L4|L0|EA.S1~q\)))) # (\L4|L0|EA.S6~q\ & (\L4|L0|rounds\(3) & (\L4|L0|rounds\(1)))) ) ) ) # ( !\L4|L0|rounds\(0) & ( 
-- !\L4|L0|rounds[2]~DUPLICATE_q\ & ( (\L4|L0|EA.S6~q\ & ((!\L4|L0|rounds\(3)) # (!\L4|L0|rounds\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001110111100010000000100001010000010101111010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L4|L0|ALT_INV_rounds\(3),
	datab => \L4|L0|ALT_INV_rounds\(1),
	datac => \L4|L0|ALT_INV_EA.S6~q\,
	datad => \L4|L0|ALT_INV_EA.S1~q\,
	datae => \L4|L0|ALT_INV_rounds\(0),
	dataf => \L4|L0|ALT_INV_rounds[2]~DUPLICATE_q\,
	combout => \L4|L0|Selector18~0_combout\);

-- Location: FF_X87_Y10_N2
\L4|L0|rounds[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L4|L0|Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|L0|rounds\(0));

-- Location: MLABCELL_X87_Y10_N48
\L4|L0|Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L4|L0|Selector16~0_combout\ = ( \L4|L0|rounds\(2) & ( \L4|L0|rounds\(3) & ( (!\L4|L0|EA.S1~q\) # (\L4|L0|EA.S6~q\) ) ) ) # ( \L4|L0|rounds\(2) & ( !\L4|L0|rounds\(3) & ( (!\L4|L0|EA.S6~q\ & (((!\L4|L0|EA.S1~q\)))) # (\L4|L0|EA.S6~q\ & 
-- ((!\L4|L0|rounds\(0)) # ((!\L4|L0|rounds\(1))))) ) ) ) # ( !\L4|L0|rounds\(2) & ( !\L4|L0|rounds\(3) & ( (\L4|L0|rounds\(0) & (\L4|L0|rounds\(1) & \L4|L0|EA.S6~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001111111100000111000000000000000001111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L4|L0|ALT_INV_rounds\(0),
	datab => \L4|L0|ALT_INV_rounds\(1),
	datac => \L4|L0|ALT_INV_EA.S6~q\,
	datad => \L4|L0|ALT_INV_EA.S1~q\,
	datae => \L4|L0|ALT_INV_rounds\(2),
	dataf => \L4|L0|ALT_INV_rounds\(3),
	combout => \L4|L0|Selector16~0_combout\);

-- Location: FF_X87_Y10_N50
\L4|L0|rounds[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L4|L0|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|L0|rounds\(2));

-- Location: MLABCELL_X87_Y10_N36
\L4|L0|PE~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \L4|L0|PE~18_combout\ = ( \L4|L0|EA.S6~q\ & ( (!\L4|L0|rounds\(3)) # ((!\L4|L0|rounds\(2) & !\L4|L0|rounds\(1))) ) ) # ( !\L4|L0|EA.S6~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111000111110001111100011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L4|L0|ALT_INV_rounds\(2),
	datab => \L4|L0|ALT_INV_rounds\(1),
	datac => \L4|L0|ALT_INV_rounds\(3),
	dataf => \L4|L0|ALT_INV_EA.S6~q\,
	combout => \L4|L0|PE~18_combout\);

-- Location: FF_X87_Y10_N38
\L4|L0|PE.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L4|L0|PE~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|L0|PE.S0~q\);

-- Location: FF_X87_Y8_N46
\L4|L0|EA.S0~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \L4|L0|PE.S0~q\,
	clrn => \L4|L0|ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|L0|EA.S0~DUPLICATE_q\);

-- Location: LABCELL_X88_Y8_N15
\L4|L0|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L4|L0|Selector7~0_combout\ = ( \L4|L0|EA.S1~DUPLICATE_q\ ) # ( !\L4|L0|EA.S1~DUPLICATE_q\ & ( (\L4|L0|reset_reg~q\ & \L4|L0|EA.S0~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L4|L0|ALT_INV_reset_reg~q\,
	datad => \L4|L0|ALT_INV_EA.S0~DUPLICATE_q\,
	dataf => \L4|L0|ALT_INV_EA.S1~DUPLICATE_q\,
	combout => \L4|L0|Selector7~0_combout\);

-- Location: FF_X84_Y9_N32
\L4|L0|reset_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	asdata => \L4|L0|Selector7~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|L0|reset_reg~q\);

-- Location: MLABCELL_X84_Y9_N6
\L1|L2|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L2|process_0~0_combout\ = ( \L4|L0|reset_reg~q\ & ( !\KEY[0]~input_o\ ) ) # ( !\L4|L0|reset_reg~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[0]~input_o\,
	dataf => \L4|L0|ALT_INV_reset_reg~q\,
	combout => \L1|L2|process_0~0_combout\);

-- Location: FF_X81_Y9_N40
\L0|EA.D1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \L0|PE.D1~q\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|EA.D1~q\);

-- Location: FF_X81_Y9_N53
\L0|delay[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L0|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|delay\(16));

-- Location: MLABCELL_X82_Y9_N30
\L0|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Add0~93_sumout\ = SUM(( \L0|delay\(0) ) + ( VCC ) + ( !VCC ))
-- \L0|Add0~94\ = CARRY(( \L0|delay\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L0|ALT_INV_delay\(0),
	cin => GND,
	sumout => \L0|Add0~93_sumout\,
	cout => \L0|Add0~94\);

-- Location: LABCELL_X81_Y9_N12
\L0|Selector23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Selector23~0_combout\ = ( \L0|EA.D3~q\ & ( ((\L0|EA.D2~q\ & \L0|Add0~93_sumout\)) # (\L0|delay\(0)) ) ) # ( !\L0|EA.D3~q\ & ( (!\L0|EA.D2~q\ & (\L0|EA.D1~q\ & ((\L0|delay\(0))))) # (\L0|EA.D2~q\ & (((\L0|EA.D1~q\ & \L0|delay\(0))) # 
-- (\L0|Add0~93_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001010011011100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L0|ALT_INV_EA.D2~q\,
	datab => \L0|ALT_INV_EA.D1~q\,
	datac => \L0|ALT_INV_Add0~93_sumout\,
	datad => \L0|ALT_INV_delay\(0),
	dataf => \L0|ALT_INV_EA.D3~q\,
	combout => \L0|Selector23~0_combout\);

-- Location: FF_X81_Y9_N13
\L0|delay[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L0|Selector23~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|delay\(0));

-- Location: MLABCELL_X82_Y9_N33
\L0|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Add0~89_sumout\ = SUM(( \L0|delay\(1) ) + ( GND ) + ( \L0|Add0~94\ ))
-- \L0|Add0~90\ = CARRY(( \L0|delay\(1) ) + ( GND ) + ( \L0|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L0|ALT_INV_delay\(1),
	cin => \L0|Add0~94\,
	sumout => \L0|Add0~89_sumout\,
	cout => \L0|Add0~90\);

-- Location: MLABCELL_X82_Y9_N9
\L0|Selector22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Selector22~0_combout\ = ( \L0|Add0~89_sumout\ & ( ((\L0|delay\(1) & ((\L0|EA.D3~q\) # (\L0|EA.D1~q\)))) # (\L0|EA.D2~q\) ) ) # ( !\L0|Add0~89_sumout\ & ( (\L0|delay\(1) & ((\L0|EA.D3~q\) # (\L0|EA.D1~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110111000000000111011100001111011111110000111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L0|ALT_INV_EA.D1~q\,
	datab => \L0|ALT_INV_EA.D3~q\,
	datac => \L0|ALT_INV_EA.D2~q\,
	datad => \L0|ALT_INV_delay\(1),
	dataf => \L0|ALT_INV_Add0~89_sumout\,
	combout => \L0|Selector22~0_combout\);

-- Location: FF_X82_Y9_N11
\L0|delay[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L0|Selector22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|delay\(1));

-- Location: MLABCELL_X82_Y9_N36
\L0|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Add0~85_sumout\ = SUM(( \L0|delay\(2) ) + ( GND ) + ( \L0|Add0~90\ ))
-- \L0|Add0~86\ = CARRY(( \L0|delay\(2) ) + ( GND ) + ( \L0|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L0|ALT_INV_delay\(2),
	cin => \L0|Add0~90\,
	sumout => \L0|Add0~85_sumout\,
	cout => \L0|Add0~86\);

-- Location: LABCELL_X81_Y9_N27
\L0|Selector21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Selector21~0_combout\ = ( \L0|EA.D1~q\ & ( ((\L0|EA.D2~q\ & \L0|Add0~85_sumout\)) # (\L0|delay\(2)) ) ) # ( !\L0|EA.D1~q\ & ( (!\L0|EA.D2~q\ & (\L0|EA.D3~q\ & ((\L0|delay\(2))))) # (\L0|EA.D2~q\ & (((\L0|EA.D3~q\ & \L0|delay\(2))) # 
-- (\L0|Add0~85_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001010011011100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L0|ALT_INV_EA.D2~q\,
	datab => \L0|ALT_INV_EA.D3~q\,
	datac => \L0|ALT_INV_Add0~85_sumout\,
	datad => \L0|ALT_INV_delay\(2),
	dataf => \L0|ALT_INV_EA.D1~q\,
	combout => \L0|Selector21~0_combout\);

-- Location: FF_X81_Y9_N28
\L0|delay[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L0|Selector21~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|delay\(2));

-- Location: MLABCELL_X82_Y9_N39
\L0|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Add0~81_sumout\ = SUM(( \L0|delay\(3) ) + ( GND ) + ( \L0|Add0~86\ ))
-- \L0|Add0~82\ = CARRY(( \L0|delay\(3) ) + ( GND ) + ( \L0|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L0|ALT_INV_delay\(3),
	cin => \L0|Add0~86\,
	sumout => \L0|Add0~81_sumout\,
	cout => \L0|Add0~82\);

-- Location: MLABCELL_X82_Y9_N0
\L0|Selector20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Selector20~0_combout\ = ( \L0|Add0~81_sumout\ & ( ((\L0|delay\(3) & ((\L0|EA.D3~q\) # (\L0|EA.D1~q\)))) # (\L0|EA.D2~q\) ) ) # ( !\L0|Add0~81_sumout\ & ( (\L0|delay\(3) & ((\L0|EA.D3~q\) # (\L0|EA.D1~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110111000000000111011100001111011111110000111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L0|ALT_INV_EA.D1~q\,
	datab => \L0|ALT_INV_EA.D3~q\,
	datac => \L0|ALT_INV_EA.D2~q\,
	datad => \L0|ALT_INV_delay\(3),
	dataf => \L0|ALT_INV_Add0~81_sumout\,
	combout => \L0|Selector20~0_combout\);

-- Location: FF_X82_Y9_N2
\L0|delay[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L0|Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|delay\(3));

-- Location: MLABCELL_X82_Y9_N42
\L0|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Add0~21_sumout\ = SUM(( \L0|delay[4]~DUPLICATE_q\ ) + ( GND ) + ( \L0|Add0~82\ ))
-- \L0|Add0~22\ = CARRY(( \L0|delay[4]~DUPLICATE_q\ ) + ( GND ) + ( \L0|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L0|ALT_INV_delay[4]~DUPLICATE_q\,
	cin => \L0|Add0~82\,
	sumout => \L0|Add0~21_sumout\,
	cout => \L0|Add0~22\);

-- Location: FF_X82_Y9_N25
\L0|delay[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L0|Selector19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|delay\(4));

-- Location: MLABCELL_X82_Y9_N24
\L0|Selector19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Selector19~0_combout\ = ( \L0|delay\(4) & ( (((\L0|EA.D2~q\ & \L0|Add0~21_sumout\)) # (\L0|EA.D3~q\)) # (\L0|EA.D1~q\) ) ) # ( !\L0|delay\(4) & ( (\L0|EA.D2~q\ & \L0|Add0~21_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000111111111111100010001000100010001111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L0|ALT_INV_EA.D2~q\,
	datab => \L0|ALT_INV_Add0~21_sumout\,
	datac => \L0|ALT_INV_EA.D1~q\,
	datad => \L0|ALT_INV_EA.D3~q\,
	datae => \L0|ALT_INV_delay\(4),
	combout => \L0|Selector19~0_combout\);

-- Location: FF_X82_Y9_N26
\L0|delay[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L0|Selector19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|delay[4]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y9_N45
\L0|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Add0~13_sumout\ = SUM(( \L0|delay\(5) ) + ( GND ) + ( \L0|Add0~22\ ))
-- \L0|Add0~14\ = CARRY(( \L0|delay\(5) ) + ( GND ) + ( \L0|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L0|ALT_INV_delay\(5),
	cin => \L0|Add0~22\,
	sumout => \L0|Add0~13_sumout\,
	cout => \L0|Add0~14\);

-- Location: MLABCELL_X82_Y9_N6
\L0|Selector18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Selector18~0_combout\ = ( \L0|EA.D2~q\ & ( ((\L0|delay\(5) & ((\L0|EA.D3~q\) # (\L0|EA.D1~q\)))) # (\L0|Add0~13_sumout\) ) ) # ( !\L0|EA.D2~q\ & ( (\L0|delay\(5) & ((\L0|EA.D3~q\) # (\L0|EA.D1~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110111000000000111011100001111011111110000111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L0|ALT_INV_EA.D1~q\,
	datab => \L0|ALT_INV_EA.D3~q\,
	datac => \L0|ALT_INV_Add0~13_sumout\,
	datad => \L0|ALT_INV_delay\(5),
	dataf => \L0|ALT_INV_EA.D2~q\,
	combout => \L0|Selector18~0_combout\);

-- Location: FF_X82_Y9_N7
\L0|delay[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L0|Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|delay\(5));

-- Location: MLABCELL_X82_Y9_N48
\L0|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Add0~17_sumout\ = SUM(( \L0|delay\(6) ) + ( GND ) + ( \L0|Add0~14\ ))
-- \L0|Add0~18\ = CARRY(( \L0|delay\(6) ) + ( GND ) + ( \L0|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L0|ALT_INV_delay\(6),
	cin => \L0|Add0~14\,
	sumout => \L0|Add0~17_sumout\,
	cout => \L0|Add0~18\);

-- Location: MLABCELL_X82_Y9_N3
\L0|Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Selector17~0_combout\ = ( \L0|Add0~17_sumout\ & ( ((\L0|delay\(6) & ((\L0|EA.D3~q\) # (\L0|EA.D1~q\)))) # (\L0|EA.D2~q\) ) ) # ( !\L0|Add0~17_sumout\ & ( (\L0|delay\(6) & ((\L0|EA.D3~q\) # (\L0|EA.D1~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001110111000000000111011100001111011111110000111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L0|ALT_INV_EA.D1~q\,
	datab => \L0|ALT_INV_EA.D3~q\,
	datac => \L0|ALT_INV_EA.D2~q\,
	datad => \L0|ALT_INV_delay\(6),
	dataf => \L0|ALT_INV_Add0~17_sumout\,
	combout => \L0|Selector17~0_combout\);

-- Location: FF_X82_Y9_N5
\L0|delay[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L0|Selector17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|delay\(6));

-- Location: MLABCELL_X82_Y9_N51
\L0|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Add0~9_sumout\ = SUM(( \L0|delay\(7) ) + ( GND ) + ( \L0|Add0~18\ ))
-- \L0|Add0~10\ = CARRY(( \L0|delay\(7) ) + ( GND ) + ( \L0|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L0|ALT_INV_delay\(7),
	cin => \L0|Add0~18\,
	sumout => \L0|Add0~9_sumout\,
	cout => \L0|Add0~10\);

-- Location: LABCELL_X81_Y9_N6
\L0|Selector16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Selector16~0_combout\ = ( \L0|EA.D3~q\ & ( ((\L0|EA.D2~q\ & \L0|Add0~9_sumout\)) # (\L0|delay\(7)) ) ) # ( !\L0|EA.D3~q\ & ( (!\L0|EA.D2~q\ & (\L0|EA.D1~q\ & ((\L0|delay\(7))))) # (\L0|EA.D2~q\ & (((\L0|EA.D1~q\ & \L0|delay\(7))) # 
-- (\L0|Add0~9_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001010011011100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L0|ALT_INV_EA.D2~q\,
	datab => \L0|ALT_INV_EA.D1~q\,
	datac => \L0|ALT_INV_Add0~9_sumout\,
	datad => \L0|ALT_INV_delay\(7),
	dataf => \L0|ALT_INV_EA.D3~q\,
	combout => \L0|Selector16~0_combout\);

-- Location: FF_X81_Y9_N7
\L0|delay[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L0|Selector16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|delay\(7));

-- Location: MLABCELL_X82_Y9_N54
\L0|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Add0~29_sumout\ = SUM(( \L0|delay[8]~DUPLICATE_q\ ) + ( GND ) + ( \L0|Add0~10\ ))
-- \L0|Add0~30\ = CARRY(( \L0|delay[8]~DUPLICATE_q\ ) + ( GND ) + ( \L0|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L0|ALT_INV_delay[8]~DUPLICATE_q\,
	cin => \L0|Add0~10\,
	sumout => \L0|Add0~29_sumout\,
	cout => \L0|Add0~30\);

-- Location: FF_X81_Y9_N35
\L0|delay[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L0|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|delay\(8));

-- Location: LABCELL_X81_Y9_N33
\L0|Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Selector15~0_combout\ = ( \L0|EA.D1~q\ & ( ((\L0|EA.D2~q\ & \L0|Add0~29_sumout\)) # (\L0|delay\(8)) ) ) # ( !\L0|EA.D1~q\ & ( (!\L0|EA.D2~q\ & (\L0|EA.D3~q\ & ((\L0|delay\(8))))) # (\L0|EA.D2~q\ & (((\L0|EA.D3~q\ & \L0|delay\(8))) # 
-- (\L0|Add0~29_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001010011011100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L0|ALT_INV_EA.D2~q\,
	datab => \L0|ALT_INV_EA.D3~q\,
	datac => \L0|ALT_INV_Add0~29_sumout\,
	datad => \L0|ALT_INV_delay\(8),
	dataf => \L0|ALT_INV_EA.D1~q\,
	combout => \L0|Selector15~0_combout\);

-- Location: FF_X81_Y9_N34
\L0|delay[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L0|Selector15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|delay[8]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y9_N57
\L0|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Add0~33_sumout\ = SUM(( \L0|delay\(9) ) + ( GND ) + ( \L0|Add0~30\ ))
-- \L0|Add0~34\ = CARRY(( \L0|delay\(9) ) + ( GND ) + ( \L0|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L0|ALT_INV_delay\(9),
	cin => \L0|Add0~30\,
	sumout => \L0|Add0~33_sumout\,
	cout => \L0|Add0~34\);

-- Location: LABCELL_X81_Y9_N42
\L0|Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Selector14~0_combout\ = ( \L0|EA.D3~q\ & ( ((\L0|EA.D2~q\ & \L0|Add0~33_sumout\)) # (\L0|delay\(9)) ) ) # ( !\L0|EA.D3~q\ & ( (!\L0|EA.D2~q\ & (\L0|EA.D1~q\ & ((\L0|delay\(9))))) # (\L0|EA.D2~q\ & (((\L0|EA.D1~q\ & \L0|delay\(9))) # 
-- (\L0|Add0~33_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001010011011100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L0|ALT_INV_EA.D2~q\,
	datab => \L0|ALT_INV_EA.D1~q\,
	datac => \L0|ALT_INV_Add0~33_sumout\,
	datad => \L0|ALT_INV_delay\(9),
	dataf => \L0|ALT_INV_EA.D3~q\,
	combout => \L0|Selector14~0_combout\);

-- Location: FF_X81_Y9_N43
\L0|delay[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L0|Selector14~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|delay\(9));

-- Location: MLABCELL_X82_Y8_N0
\L0|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Add0~37_sumout\ = SUM(( \L0|delay\(10) ) + ( GND ) + ( \L0|Add0~34\ ))
-- \L0|Add0~38\ = CARRY(( \L0|delay\(10) ) + ( GND ) + ( \L0|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L0|ALT_INV_delay\(10),
	cin => \L0|Add0~34\,
	sumout => \L0|Add0~37_sumout\,
	cout => \L0|Add0~38\);

-- Location: LABCELL_X81_Y9_N18
\L0|Selector13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Selector13~0_combout\ = ( \L0|EA.D3~q\ & ( ((\L0|EA.D2~q\ & \L0|Add0~37_sumout\)) # (\L0|delay\(10)) ) ) # ( !\L0|EA.D3~q\ & ( (!\L0|EA.D2~q\ & (\L0|EA.D1~q\ & ((\L0|delay\(10))))) # (\L0|EA.D2~q\ & (((\L0|EA.D1~q\ & \L0|delay\(10))) # 
-- (\L0|Add0~37_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001010011011100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L0|ALT_INV_EA.D2~q\,
	datab => \L0|ALT_INV_EA.D1~q\,
	datac => \L0|ALT_INV_Add0~37_sumout\,
	datad => \L0|ALT_INV_delay\(10),
	dataf => \L0|ALT_INV_EA.D3~q\,
	combout => \L0|Selector13~0_combout\);

-- Location: FF_X81_Y9_N19
\L0|delay[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L0|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|delay\(10));

-- Location: MLABCELL_X82_Y8_N3
\L0|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Add0~25_sumout\ = SUM(( \L0|delay\(11) ) + ( GND ) + ( \L0|Add0~38\ ))
-- \L0|Add0~26\ = CARRY(( \L0|delay\(11) ) + ( GND ) + ( \L0|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L0|ALT_INV_delay\(11),
	cin => \L0|Add0~38\,
	sumout => \L0|Add0~25_sumout\,
	cout => \L0|Add0~26\);

-- Location: LABCELL_X81_Y9_N48
\L0|Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Selector12~0_combout\ = ( \L0|EA.D3~q\ & ( ((\L0|EA.D2~q\ & \L0|Add0~25_sumout\)) # (\L0|delay\(11)) ) ) # ( !\L0|EA.D3~q\ & ( (!\L0|EA.D2~q\ & (\L0|EA.D1~q\ & ((\L0|delay\(11))))) # (\L0|EA.D2~q\ & (((\L0|EA.D1~q\ & \L0|delay\(11))) # 
-- (\L0|Add0~25_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001010011011100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L0|ALT_INV_EA.D2~q\,
	datab => \L0|ALT_INV_EA.D1~q\,
	datac => \L0|ALT_INV_Add0~25_sumout\,
	datad => \L0|ALT_INV_delay\(11),
	dataf => \L0|ALT_INV_EA.D3~q\,
	combout => \L0|Selector12~0_combout\);

-- Location: FF_X81_Y9_N50
\L0|delay[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L0|Selector12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|delay\(11));

-- Location: MLABCELL_X82_Y8_N6
\L0|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Add0~41_sumout\ = SUM(( \L0|delay\(12) ) + ( GND ) + ( \L0|Add0~26\ ))
-- \L0|Add0~42\ = CARRY(( \L0|delay\(12) ) + ( GND ) + ( \L0|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L0|ALT_INV_delay\(12),
	cin => \L0|Add0~26\,
	sumout => \L0|Add0~41_sumout\,
	cout => \L0|Add0~42\);

-- Location: LABCELL_X81_Y9_N0
\L0|Selector11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Selector11~0_combout\ = ( \L0|EA.D3~q\ & ( ((\L0|EA.D2~q\ & \L0|Add0~41_sumout\)) # (\L0|delay\(12)) ) ) # ( !\L0|EA.D3~q\ & ( (!\L0|EA.D2~q\ & (\L0|EA.D1~q\ & ((\L0|delay\(12))))) # (\L0|EA.D2~q\ & (((\L0|EA.D1~q\ & \L0|delay\(12))) # 
-- (\L0|Add0~41_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110111000001010011011100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L0|ALT_INV_EA.D2~q\,
	datab => \L0|ALT_INV_EA.D1~q\,
	datac => \L0|ALT_INV_Add0~41_sumout\,
	datad => \L0|ALT_INV_delay\(12),
	dataf => \L0|ALT_INV_EA.D3~q\,
	combout => \L0|Selector11~0_combout\);

-- Location: FF_X81_Y9_N2
\L0|delay[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L0|Selector11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|delay\(12));

-- Location: MLABCELL_X82_Y8_N9
\L0|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Add0~45_sumout\ = SUM(( \L0|delay\(13) ) + ( GND ) + ( \L0|Add0~42\ ))
-- \L0|Add0~46\ = CARRY(( \L0|delay\(13) ) + ( GND ) + ( \L0|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L0|ALT_INV_delay\(13),
	cin => \L0|Add0~42\,
	sumout => \L0|Add0~45_sumout\,
	cout => \L0|Add0~46\);

-- Location: LABCELL_X81_Y9_N21
\L0|Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Selector10~0_combout\ = ( \L0|Add0~45_sumout\ & ( ((\L0|delay\(13) & ((\L0|EA.D3~q\) # (\L0|EA.D1~q\)))) # (\L0|EA.D2~q\) ) ) # ( !\L0|Add0~45_sumout\ & ( (\L0|delay\(13) & ((\L0|EA.D3~q\) # (\L0|EA.D1~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111101010101011111110101010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L0|ALT_INV_EA.D2~q\,
	datab => \L0|ALT_INV_EA.D1~q\,
	datac => \L0|ALT_INV_EA.D3~q\,
	datad => \L0|ALT_INV_delay\(13),
	dataf => \L0|ALT_INV_Add0~45_sumout\,
	combout => \L0|Selector10~0_combout\);

-- Location: FF_X81_Y9_N22
\L0|delay[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L0|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|delay\(13));

-- Location: MLABCELL_X82_Y8_N12
\L0|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Add0~5_sumout\ = SUM(( \L0|delay\(14) ) + ( GND ) + ( \L0|Add0~46\ ))
-- \L0|Add0~6\ = CARRY(( \L0|delay\(14) ) + ( GND ) + ( \L0|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L0|ALT_INV_delay\(14),
	cin => \L0|Add0~46\,
	sumout => \L0|Add0~5_sumout\,
	cout => \L0|Add0~6\);

-- Location: LABCELL_X81_Y9_N9
\L0|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Selector9~0_combout\ = ( \L0|Add0~5_sumout\ & ( ((\L0|delay\(14) & ((\L0|EA.D3~q\) # (\L0|EA.D1~q\)))) # (\L0|EA.D2~q\) ) ) # ( !\L0|Add0~5_sumout\ & ( (\L0|delay\(14) & ((\L0|EA.D3~q\) # (\L0|EA.D1~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111101010101011111110101010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L0|ALT_INV_EA.D2~q\,
	datab => \L0|ALT_INV_EA.D1~q\,
	datac => \L0|ALT_INV_EA.D3~q\,
	datad => \L0|ALT_INV_delay\(14),
	dataf => \L0|ALT_INV_Add0~5_sumout\,
	combout => \L0|Selector9~0_combout\);

-- Location: FF_X81_Y9_N10
\L0|delay[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L0|Selector9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|delay\(14));

-- Location: MLABCELL_X82_Y8_N15
\L0|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Add0~57_sumout\ = SUM(( \L0|delay[15]~DUPLICATE_q\ ) + ( GND ) + ( \L0|Add0~6\ ))
-- \L0|Add0~58\ = CARRY(( \L0|delay[15]~DUPLICATE_q\ ) + ( GND ) + ( \L0|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L0|ALT_INV_delay[15]~DUPLICATE_q\,
	cin => \L0|Add0~6\,
	sumout => \L0|Add0~57_sumout\,
	cout => \L0|Add0~58\);

-- Location: FF_X82_Y8_N58
\L0|delay[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L0|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|delay\(15));

-- Location: MLABCELL_X82_Y8_N57
\L0|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Selector8~0_combout\ = ( \L0|delay\(15) & ( \L0|EA.D2~q\ & ( ((\L0|EA.D3~q\) # (\L0|EA.D1~q\)) # (\L0|Add0~57_sumout\) ) ) ) # ( !\L0|delay\(15) & ( \L0|EA.D2~q\ & ( \L0|Add0~57_sumout\ ) ) ) # ( \L0|delay\(15) & ( !\L0|EA.D2~q\ & ( (\L0|EA.D3~q\) # 
-- (\L0|EA.D1~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011111111111100110011001100110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L0|ALT_INV_Add0~57_sumout\,
	datac => \L0|ALT_INV_EA.D1~q\,
	datad => \L0|ALT_INV_EA.D3~q\,
	datae => \L0|ALT_INV_delay\(15),
	dataf => \L0|ALT_INV_EA.D2~q\,
	combout => \L0|Selector8~0_combout\);

-- Location: FF_X82_Y8_N59
\L0|delay[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L0|Selector8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|delay[15]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y8_N18
\L0|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Add0~53_sumout\ = SUM(( \L0|delay[16]~DUPLICATE_q\ ) + ( GND ) + ( \L0|Add0~58\ ))
-- \L0|Add0~54\ = CARRY(( \L0|delay[16]~DUPLICATE_q\ ) + ( GND ) + ( \L0|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L0|ALT_INV_delay[16]~DUPLICATE_q\,
	cin => \L0|Add0~58\,
	sumout => \L0|Add0~53_sumout\,
	cout => \L0|Add0~54\);

-- Location: LABCELL_X81_Y9_N51
\L0|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Selector7~0_combout\ = ( \L0|Add0~53_sumout\ & ( ((\L0|delay\(16) & ((\L0|EA.D3~q\) # (\L0|EA.D1~q\)))) # (\L0|EA.D2~q\) ) ) # ( !\L0|Add0~53_sumout\ & ( (\L0|delay\(16) & ((\L0|EA.D3~q\) # (\L0|EA.D1~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111101010101011111110101010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L0|ALT_INV_EA.D2~q\,
	datab => \L0|ALT_INV_EA.D1~q\,
	datac => \L0|ALT_INV_EA.D3~q\,
	datad => \L0|ALT_INV_delay\(16),
	dataf => \L0|ALT_INV_Add0~53_sumout\,
	combout => \L0|Selector7~0_combout\);

-- Location: FF_X81_Y9_N52
\L0|delay[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L0|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|delay[16]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y8_N21
\L0|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Add0~49_sumout\ = SUM(( \L0|delay\(17) ) + ( GND ) + ( \L0|Add0~54\ ))
-- \L0|Add0~50\ = CARRY(( \L0|delay\(17) ) + ( GND ) + ( \L0|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L0|ALT_INV_delay\(17),
	cin => \L0|Add0~54\,
	sumout => \L0|Add0~49_sumout\,
	cout => \L0|Add0~50\);

-- Location: LABCELL_X81_Y9_N3
\L0|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Selector6~0_combout\ = ( \L0|Add0~49_sumout\ & ( ((\L0|delay\(17) & ((\L0|EA.D3~q\) # (\L0|EA.D1~q\)))) # (\L0|EA.D2~q\) ) ) # ( !\L0|Add0~49_sumout\ & ( (\L0|delay\(17) & ((\L0|EA.D3~q\) # (\L0|EA.D1~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111101010101011111110101010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L0|ALT_INV_EA.D2~q\,
	datab => \L0|ALT_INV_EA.D1~q\,
	datac => \L0|ALT_INV_EA.D3~q\,
	datad => \L0|ALT_INV_delay\(17),
	dataf => \L0|ALT_INV_Add0~49_sumout\,
	combout => \L0|Selector6~0_combout\);

-- Location: FF_X81_Y9_N4
\L0|delay[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L0|Selector6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|delay\(17));

-- Location: FF_X81_Y9_N59
\L0|limit[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	asdata => \SW[9]~input_o\,
	sload => VCC,
	ena => \L0|ALT_INV_EA.D0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|limit\(11));

-- Location: LABCELL_X80_Y9_N57
\L0|LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|LessThan0~5_combout\ = ( \L0|limit\(11) & ( (!\L0|limit\(14) & (!\L0|delay\(17) & !\L0|delay\(16))) # (\L0|limit\(14) & ((!\L0|delay\(17)) # (!\L0|delay\(16)))) ) ) # ( !\L0|limit\(11) & ( (\L0|limit\(14) & !\L0|delay\(17)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000011110011001100001111001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L0|ALT_INV_limit\(14),
	datac => \L0|ALT_INV_delay\(17),
	datad => \L0|ALT_INV_delay\(16),
	dataf => \L0|ALT_INV_limit\(11),
	combout => \L0|LessThan0~5_combout\);

-- Location: FF_X81_Y9_N25
\L0|delay[23]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L0|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|delay[23]~DUPLICATE_q\);

-- Location: FF_X82_Y8_N46
\L0|delay[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L0|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|delay\(21));

-- Location: FF_X82_Y8_N49
\L0|delay[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L0|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|delay\(20));

-- Location: MLABCELL_X82_Y8_N24
\L0|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Add0~69_sumout\ = SUM(( \L0|delay\(18) ) + ( GND ) + ( \L0|Add0~50\ ))
-- \L0|Add0~70\ = CARRY(( \L0|delay\(18) ) + ( GND ) + ( \L0|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L0|ALT_INV_delay\(18),
	cin => \L0|Add0~50\,
	sumout => \L0|Add0~69_sumout\,
	cout => \L0|Add0~70\);

-- Location: LABCELL_X81_Y8_N51
\L0|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Selector5~0_combout\ = ( \L0|delay\(18) & ( \L0|EA.D2~q\ & ( ((\L0|EA.D3~q\) # (\L0|Add0~69_sumout\)) # (\L0|EA.D1~q\) ) ) ) # ( !\L0|delay\(18) & ( \L0|EA.D2~q\ & ( \L0|Add0~69_sumout\ ) ) ) # ( \L0|delay\(18) & ( !\L0|EA.D2~q\ & ( (\L0|EA.D3~q\) # 
-- (\L0|EA.D1~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100111111111100001111000011110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L0|ALT_INV_EA.D1~q\,
	datac => \L0|ALT_INV_Add0~69_sumout\,
	datad => \L0|ALT_INV_EA.D3~q\,
	datae => \L0|ALT_INV_delay\(18),
	dataf => \L0|ALT_INV_EA.D2~q\,
	combout => \L0|Selector5~0_combout\);

-- Location: FF_X81_Y8_N52
\L0|delay[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L0|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|delay\(18));

-- Location: MLABCELL_X82_Y8_N27
\L0|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Add0~65_sumout\ = SUM(( \L0|delay\(19) ) + ( GND ) + ( \L0|Add0~70\ ))
-- \L0|Add0~66\ = CARRY(( \L0|delay\(19) ) + ( GND ) + ( \L0|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L0|ALT_INV_delay\(19),
	cin => \L0|Add0~70\,
	sumout => \L0|Add0~65_sumout\,
	cout => \L0|Add0~66\);

-- Location: LABCELL_X81_Y9_N45
\L0|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Selector4~0_combout\ = ( \L0|Add0~65_sumout\ & ( ((\L0|delay\(19) & ((\L0|EA.D3~q\) # (\L0|EA.D1~q\)))) # (\L0|EA.D2~q\) ) ) # ( !\L0|Add0~65_sumout\ & ( (\L0|delay\(19) & ((\L0|EA.D3~q\) # (\L0|EA.D1~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111101010101011111110101010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L0|ALT_INV_EA.D2~q\,
	datab => \L0|ALT_INV_EA.D1~q\,
	datac => \L0|ALT_INV_EA.D3~q\,
	datad => \L0|ALT_INV_delay\(19),
	dataf => \L0|ALT_INV_Add0~65_sumout\,
	combout => \L0|Selector4~0_combout\);

-- Location: FF_X81_Y9_N46
\L0|delay[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L0|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|delay\(19));

-- Location: MLABCELL_X82_Y8_N30
\L0|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Add0~73_sumout\ = SUM(( \L0|delay[20]~DUPLICATE_q\ ) + ( GND ) + ( \L0|Add0~66\ ))
-- \L0|Add0~74\ = CARRY(( \L0|delay[20]~DUPLICATE_q\ ) + ( GND ) + ( \L0|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L0|ALT_INV_delay[20]~DUPLICATE_q\,
	cin => \L0|Add0~66\,
	sumout => \L0|Add0~73_sumout\,
	cout => \L0|Add0~74\);

-- Location: MLABCELL_X82_Y8_N48
\L0|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Selector3~0_combout\ = ( \L0|delay\(20) & ( \L0|Add0~73_sumout\ & ( ((\L0|EA.D2~q\) # (\L0|EA.D1~q\)) # (\L0|EA.D3~q\) ) ) ) # ( !\L0|delay\(20) & ( \L0|Add0~73_sumout\ & ( \L0|EA.D2~q\ ) ) ) # ( \L0|delay\(20) & ( !\L0|Add0~73_sumout\ & ( 
-- (\L0|EA.D1~q\) # (\L0|EA.D3~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010111110101111100000000111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L0|ALT_INV_EA.D3~q\,
	datac => \L0|ALT_INV_EA.D1~q\,
	datad => \L0|ALT_INV_EA.D2~q\,
	datae => \L0|ALT_INV_delay\(20),
	dataf => \L0|ALT_INV_Add0~73_sumout\,
	combout => \L0|Selector3~0_combout\);

-- Location: FF_X82_Y8_N50
\L0|delay[20]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L0|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|delay[20]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y8_N33
\L0|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Add0~77_sumout\ = SUM(( \L0|delay[21]~DUPLICATE_q\ ) + ( GND ) + ( \L0|Add0~74\ ))
-- \L0|Add0~78\ = CARRY(( \L0|delay[21]~DUPLICATE_q\ ) + ( GND ) + ( \L0|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L0|ALT_INV_delay[21]~DUPLICATE_q\,
	cin => \L0|Add0~74\,
	sumout => \L0|Add0~77_sumout\,
	cout => \L0|Add0~78\);

-- Location: MLABCELL_X82_Y8_N45
\L0|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Selector2~0_combout\ = ( \L0|delay\(21) & ( \L0|Add0~77_sumout\ & ( ((\L0|EA.D2~q\) # (\L0|EA.D1~q\)) # (\L0|EA.D3~q\) ) ) ) # ( !\L0|delay\(21) & ( \L0|Add0~77_sumout\ & ( \L0|EA.D2~q\ ) ) ) # ( \L0|delay\(21) & ( !\L0|Add0~77_sumout\ & ( 
-- (\L0|EA.D1~q\) # (\L0|EA.D3~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011101110111011100001111000011110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L0|ALT_INV_EA.D3~q\,
	datab => \L0|ALT_INV_EA.D1~q\,
	datac => \L0|ALT_INV_EA.D2~q\,
	datae => \L0|ALT_INV_delay\(21),
	dataf => \L0|ALT_INV_Add0~77_sumout\,
	combout => \L0|Selector2~0_combout\);

-- Location: FF_X82_Y8_N47
\L0|delay[21]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L0|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|delay[21]~DUPLICATE_q\);

-- Location: MLABCELL_X82_Y8_N36
\L0|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Add0~61_sumout\ = SUM(( \L0|delay\(22) ) + ( GND ) + ( \L0|Add0~78\ ))
-- \L0|Add0~62\ = CARRY(( \L0|delay\(22) ) + ( GND ) + ( \L0|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L0|ALT_INV_delay\(22),
	cin => \L0|Add0~78\,
	sumout => \L0|Add0~61_sumout\,
	cout => \L0|Add0~62\);

-- Location: MLABCELL_X82_Y8_N39
\L0|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Add0~1_sumout\ = SUM(( \L0|delay[23]~DUPLICATE_q\ ) + ( GND ) + ( \L0|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L0|ALT_INV_delay[23]~DUPLICATE_q\,
	cin => \L0|Add0~62\,
	sumout => \L0|Add0~1_sumout\);

-- Location: LABCELL_X81_Y9_N24
\L0|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Selector0~0_combout\ = ( \L0|Add0~1_sumout\ & ( ((\L0|delay\(23) & ((\L0|EA.D1~q\) # (\L0|EA.D3~q\)))) # (\L0|EA.D2~q\) ) ) # ( !\L0|Add0~1_sumout\ & ( (\L0|delay\(23) & ((\L0|EA.D1~q\) # (\L0|EA.D3~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111101010101011111110101010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L0|ALT_INV_EA.D2~q\,
	datab => \L0|ALT_INV_EA.D3~q\,
	datac => \L0|ALT_INV_EA.D1~q\,
	datad => \L0|ALT_INV_delay\(23),
	dataf => \L0|ALT_INV_Add0~1_sumout\,
	combout => \L0|Selector0~0_combout\);

-- Location: FF_X81_Y9_N26
\L0|delay[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L0|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|delay\(23));

-- Location: LABCELL_X80_Y9_N54
\L0|LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|LessThan0~6_combout\ = ( !\L0|delay\(18) & ( (!\L0|limit\(11) & (!\L0|delay\(19) & (!\L0|limit\(14) $ (\L0|delay\(22))))) # (\L0|limit\(11) & (\L0|delay\(19) & (!\L0|limit\(14) $ (\L0|delay\(22))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001001000001100000100100000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L0|ALT_INV_limit\(11),
	datab => \L0|ALT_INV_limit\(14),
	datac => \L0|ALT_INV_delay\(22),
	datad => \L0|ALT_INV_delay\(19),
	dataf => \L0|ALT_INV_delay\(18),
	combout => \L0|LessThan0~6_combout\);

-- Location: LABCELL_X80_Y9_N48
\L0|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|LessThan0~0_combout\ = ( \L0|delay\(4) & ( \L0|limit\(11) & ( (!\L0|limit\(14) & (((\L0|delay\(5) & \L0|delay\(6))) # (\L0|delay\(7)))) # (\L0|limit\(14) & (\L0|delay\(5) & (\L0|delay\(7) & \L0|delay\(6)))) ) ) ) # ( !\L0|delay\(4) & ( \L0|limit\(11) 
-- & ( (!\L0|limit\(14) & \L0|delay\(7)) ) ) ) # ( \L0|delay\(4) & ( !\L0|limit\(11) & ( (!\L0|limit\(14) & (((\L0|delay\(5) & \L0|delay\(6))) # (\L0|delay\(7)))) # (\L0|limit\(14) & (\L0|delay\(5) & (\L0|delay\(7) & \L0|delay\(6)))) ) ) ) # ( !\L0|delay\(4) 
-- & ( !\L0|limit\(11) & ( (!\L0|limit\(14) & (((\L0|delay\(5) & \L0|delay\(6))) # (\L0|delay\(7)))) # (\L0|limit\(14) & (\L0|delay\(5) & (\L0|delay\(7) & \L0|delay\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001001101000011000100110100001100000011000000110001001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L0|ALT_INV_delay\(5),
	datab => \L0|ALT_INV_limit\(14),
	datac => \L0|ALT_INV_delay\(7),
	datad => \L0|ALT_INV_delay\(6),
	datae => \L0|ALT_INV_delay\(4),
	dataf => \L0|ALT_INV_limit\(11),
	combout => \L0|LessThan0~0_combout\);

-- Location: LABCELL_X81_Y9_N57
\L0|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|LessThan0~1_combout\ = ( \L0|delay\(11) & ( (!\L0|delay\(8) & (!\L0|delay\(10) & (!\L0|delay\(9) & \L0|limit\(11)))) ) ) # ( !\L0|delay\(11) & ( (!\L0|delay\(8) & (!\L0|delay\(10) & (!\L0|delay\(9) & !\L0|limit\(11)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L0|ALT_INV_delay\(8),
	datab => \L0|ALT_INV_delay\(10),
	datac => \L0|ALT_INV_delay\(9),
	datad => \L0|ALT_INV_limit\(11),
	dataf => \L0|ALT_INV_delay\(11),
	combout => \L0|LessThan0~1_combout\);

-- Location: LABCELL_X79_Y9_N24
\L0|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|LessThan0~2_combout\ = ( \L0|delay\(13) & ( \L0|limit\(11) & ( (\L0|delay\(11) & \L0|delay\(12)) ) ) ) # ( \L0|delay\(13) & ( !\L0|limit\(11) & ( \L0|delay\(12) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L0|ALT_INV_delay\(11),
	datac => \L0|ALT_INV_delay\(12),
	datae => \L0|ALT_INV_delay\(13),
	dataf => \L0|ALT_INV_limit\(11),
	combout => \L0|LessThan0~2_combout\);

-- Location: LABCELL_X80_Y9_N18
\L0|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|LessThan0~3_combout\ = ( \L0|limit\(14) & ( !\L0|delay\(15) & ( (\L0|delay\(17) & (!\L0|delay\(16) $ (\L0|limit\(11)))) ) ) ) # ( !\L0|limit\(14) & ( !\L0|delay\(15) & ( (!\L0|delay\(17) & (!\L0|delay\(16) $ (\L0|limit\(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010010000100001000010010000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L0|ALT_INV_delay\(16),
	datab => \L0|ALT_INV_delay\(17),
	datac => \L0|ALT_INV_limit\(11),
	datae => \L0|ALT_INV_limit\(14),
	dataf => \L0|ALT_INV_delay\(15),
	combout => \L0|LessThan0~3_combout\);

-- Location: LABCELL_X80_Y9_N12
\L0|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|LessThan0~4_combout\ = ( \L0|limit\(14) & ( \L0|LessThan0~3_combout\ & ( (!\L0|delay\(14)) # ((!\L0|LessThan0~2_combout\) # ((!\L0|LessThan0~0_combout\ & \L0|LessThan0~1_combout\))) ) ) ) # ( !\L0|limit\(14) & ( \L0|LessThan0~3_combout\ & ( 
-- (!\L0|delay\(14) & ((!\L0|LessThan0~2_combout\) # ((!\L0|LessThan0~0_combout\ & \L0|LessThan0~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000001000001111111111110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L0|ALT_INV_LessThan0~0_combout\,
	datab => \L0|ALT_INV_LessThan0~1_combout\,
	datac => \L0|ALT_INV_delay\(14),
	datad => \L0|ALT_INV_LessThan0~2_combout\,
	datae => \L0|ALT_INV_limit\(14),
	dataf => \L0|ALT_INV_LessThan0~3_combout\,
	combout => \L0|LessThan0~4_combout\);

-- Location: LABCELL_X80_Y9_N42
\L0|PE~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|PE~8_combout\ = ( \L0|LessThan0~6_combout\ & ( \L0|LessThan0~4_combout\ & ( (\L0|EA.D1~q\ & !\L0|delay\(23)) ) ) ) # ( !\L0|LessThan0~6_combout\ & ( \L0|LessThan0~4_combout\ & ( (!\L0|LessThan0~7_combout\ & (\L0|EA.D1~q\ & !\L0|delay\(23))) ) ) ) # ( 
-- \L0|LessThan0~6_combout\ & ( !\L0|LessThan0~4_combout\ & ( (\L0|EA.D1~q\ & (!\L0|delay\(23) & ((!\L0|LessThan0~7_combout\) # (\L0|LessThan0~5_combout\)))) ) ) ) # ( !\L0|LessThan0~6_combout\ & ( !\L0|LessThan0~4_combout\ & ( (!\L0|LessThan0~7_combout\ & 
-- (\L0|EA.D1~q\ & !\L0|delay\(23))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010110000000000001010000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L0|ALT_INV_LessThan0~7_combout\,
	datab => \L0|ALT_INV_LessThan0~5_combout\,
	datac => \L0|ALT_INV_EA.D1~q\,
	datad => \L0|ALT_INV_delay\(23),
	datae => \L0|ALT_INV_LessThan0~6_combout\,
	dataf => \L0|ALT_INV_LessThan0~4_combout\,
	combout => \L0|PE~8_combout\);

-- Location: FF_X80_Y9_N43
\L0|PE.D2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L0|PE~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|PE.D2~q\);

-- Location: FF_X81_Y9_N37
\L0|EA.D2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \L0|PE.D2~q\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|EA.D2~q\);

-- Location: LABCELL_X81_Y9_N30
\L0|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|Selector1~0_combout\ = ( \L0|Add0~61_sumout\ & ( ((\L0|delay\(22) & ((\L0|EA.D1~q\) # (\L0|EA.D3~q\)))) # (\L0|EA.D2~q\) ) ) # ( !\L0|Add0~61_sumout\ & ( (\L0|delay\(22) & ((\L0|EA.D1~q\) # (\L0|EA.D3~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111111000000000011111101010101011111110101010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L0|ALT_INV_EA.D2~q\,
	datab => \L0|ALT_INV_EA.D3~q\,
	datac => \L0|ALT_INV_EA.D1~q\,
	datad => \L0|ALT_INV_delay\(22),
	dataf => \L0|ALT_INV_Add0~61_sumout\,
	combout => \L0|Selector1~0_combout\);

-- Location: FF_X81_Y9_N31
\L0|delay[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L0|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|delay\(22));

-- Location: LABCELL_X80_Y9_N0
\L0|LessThan0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|LessThan0~7_combout\ = ( \L0|limit\(14) & ( \L0|delay\(20) & ( (\L0|delay\(22) & (\L0|delay\(21) & ((!\L0|limit\(11)) # (\L0|delay\(19))))) ) ) ) # ( !\L0|limit\(14) & ( \L0|delay\(20) & ( ((\L0|delay\(21) & ((!\L0|limit\(11)) # (\L0|delay\(19))))) # 
-- (\L0|delay\(22)) ) ) ) # ( !\L0|limit\(14) & ( !\L0|delay\(20) & ( \L0|delay\(22) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001011111010101110000010100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L0|ALT_INV_delay\(22),
	datab => \L0|ALT_INV_delay\(19),
	datac => \L0|ALT_INV_delay\(21),
	datad => \L0|ALT_INV_limit\(11),
	datae => \L0|ALT_INV_limit\(14),
	dataf => \L0|ALT_INV_delay\(20),
	combout => \L0|LessThan0~7_combout\);

-- Location: LABCELL_X80_Y9_N9
\L0|PE~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|PE~6_combout\ = ( \L0|LessThan0~6_combout\ & ( \L0|LessThan0~4_combout\ & ( (\L0|delay\(23) & \L0|EA.D1~q\) ) ) ) # ( !\L0|LessThan0~6_combout\ & ( \L0|LessThan0~4_combout\ & ( (\L0|EA.D1~q\ & ((\L0|delay\(23)) # (\L0|LessThan0~7_combout\))) ) ) ) # ( 
-- \L0|LessThan0~6_combout\ & ( !\L0|LessThan0~4_combout\ & ( (\L0|EA.D1~q\ & (((\L0|LessThan0~7_combout\ & !\L0|LessThan0~5_combout\)) # (\L0|delay\(23)))) ) ) ) # ( !\L0|LessThan0~6_combout\ & ( !\L0|LessThan0~4_combout\ & ( (\L0|EA.D1~q\ & 
-- ((\L0|delay\(23)) # (\L0|LessThan0~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000100111100000000010111110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L0|ALT_INV_LessThan0~7_combout\,
	datab => \L0|ALT_INV_LessThan0~5_combout\,
	datac => \L0|ALT_INV_delay\(23),
	datad => \L0|ALT_INV_EA.D1~q\,
	datae => \L0|ALT_INV_LessThan0~6_combout\,
	dataf => \L0|ALT_INV_LessThan0~4_combout\,
	combout => \L0|PE~6_combout\);

-- Location: FF_X80_Y9_N10
\L0|PE.D3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L0|PE~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|PE.D3~q\);

-- Location: LABCELL_X81_Y9_N39
\L0|EA.D3~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|EA.D3~feeder_combout\ = ( \L0|PE.D3~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \L0|ALT_INV_PE.D3~q\,
	combout => \L0|EA.D3~feeder_combout\);

-- Location: FF_X81_Y9_N41
\L0|EA.D3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \L0|EA.D3~feeder_combout\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|EA.D3~q\);

-- Location: LABCELL_X80_Y9_N39
\L0|PE.D0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|PE.D0~0_combout\ = ( !\L0|EA.D3~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \L0|ALT_INV_EA.D3~q\,
	combout => \L0|PE.D0~0_combout\);

-- Location: FF_X80_Y9_N41
\L0|PE.D0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L0|PE.D0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|PE.D0~q\);

-- Location: LABCELL_X81_Y9_N36
\L0|EA.D0~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|EA.D0~feeder_combout\ = \L0|PE.D0~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L0|ALT_INV_PE.D0~q\,
	combout => \L0|EA.D0~feeder_combout\);

-- Location: FF_X81_Y9_N38
\L0|EA.D0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	d => \L0|EA.D0~feeder_combout\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|EA.D0~q\);

-- Location: FF_X82_Y9_N20
\L0|divided_clock\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~input_o\,
	d => \L0|divided_clock~feeder_combout\,
	ena => \L0|ALT_INV_EA.D0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|divided_clock~q\);

-- Location: FF_X84_Y10_N5
\L1|L0|EA.S8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L0|divided_clock~q\,
	asdata => \L1|L0|EA.S7~q\,
	clrn => \L1|L2|ALT_INV_process_0~0_combout\,
	sload => VCC,
	ena => \L4|L0|enable_c0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|L0|EA.S8~q\);

-- Location: MLABCELL_X84_Y10_N24
\L1|L0|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L0|WideOr1~0_combout\ = ( !\L1|L0|EA.S9~q\ & ( (!\L1|L0|EA.S8~q\ & (!\L1|L0|EA.S1~q\ & \L1|L0|EA.S0~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L1|L0|ALT_INV_EA.S8~q\,
	datac => \L1|L0|ALT_INV_EA.S1~q\,
	datad => \L1|L0|ALT_INV_EA.S0~q\,
	dataf => \L1|L0|ALT_INV_EA.S9~q\,
	combout => \L1|L0|WideOr1~0_combout\);

-- Location: LABCELL_X85_Y9_N39
\L1|L0|WideOr2\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L0|WideOr2~combout\ = ( \L1|L0|WideOr2~0_combout\ & ( \L1|L0|WideOr1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L1|L0|ALT_INV_WideOr1~0_combout\,
	dataf => \L1|L0|ALT_INV_WideOr2~0_combout\,
	combout => \L1|L0|WideOr2~combout\);

-- Location: LABCELL_X88_Y9_N21
\L1|L0|WideOr3\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L0|WideOr3~combout\ = ( \L1|L0|WideOr3~0_combout\ & ( \L1|L0|WideOr3~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L1|L0|ALT_INV_WideOr3~1_combout\,
	dataf => \L1|L0|ALT_INV_WideOr3~0_combout\,
	combout => \L1|L0|WideOr3~combout\);

-- Location: LABCELL_X88_Y9_N3
\L1|L3|F[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L3|F[0]~0_combout\ = ( \L1|L0|WideOr1~combout\ & ( (!\L1|L0|WideOr2~combout\ & (!\L1|L0|WideOr0~combout\ $ (\L1|L0|WideOr3~combout\))) ) ) # ( !\L1|L0|WideOr1~combout\ & ( (\L1|L0|WideOr3~combout\ & (!\L1|L0|WideOr2~combout\ $ 
-- (\L1|L0|WideOr0~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000011000000001100001111000000000011001100000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L1|L0|ALT_INV_WideOr2~combout\,
	datac => \L1|L0|ALT_INV_WideOr0~combout\,
	datad => \L1|L0|ALT_INV_WideOr3~combout\,
	dataf => \L1|L0|ALT_INV_WideOr1~combout\,
	combout => \L1|L3|F[0]~0_combout\);

-- Location: LABCELL_X88_Y9_N30
\L1|L3|F[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L3|F[1]~1_combout\ = ( \L1|L0|WideOr3~1_combout\ & ( \L1|L0|WideOr1~0_combout\ & ( (!\L1|L0|WideOr3~0_combout\ & (\L1|L0|WideOr2~0_combout\ & (\L1|L0|WideOr1~1_combout\))) # (\L1|L0|WideOr3~0_combout\ & ((!\L1|L0|WideOr2~0_combout\ & 
-- (\L1|L0|WideOr1~1_combout\ & !\L1|L0|WideOr0~0_combout\)) # (\L1|L0|WideOr2~0_combout\ & ((\L1|L0|WideOr0~0_combout\))))) ) ) ) # ( !\L1|L0|WideOr3~1_combout\ & ( \L1|L0|WideOr1~0_combout\ & ( (\L1|L0|WideOr1~1_combout\ & (((\L1|L0|WideOr3~0_combout\ & 
-- \L1|L0|WideOr0~0_combout\)) # (\L1|L0|WideOr2~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000001110000011000010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L1|L0|ALT_INV_WideOr3~0_combout\,
	datab => \L1|L0|ALT_INV_WideOr2~0_combout\,
	datac => \L1|L0|ALT_INV_WideOr1~1_combout\,
	datad => \L1|L0|ALT_INV_WideOr0~0_combout\,
	datae => \L1|L0|ALT_INV_WideOr3~1_combout\,
	dataf => \L1|L0|ALT_INV_WideOr1~0_combout\,
	combout => \L1|L3|F[1]~1_combout\);

-- Location: LABCELL_X88_Y9_N12
\L1|L3|F[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L3|F[2]~2_combout\ = ( \L1|L0|WideOr3~1_combout\ & ( \L1|L0|WideOr1~0_combout\ & ( (!\L1|L0|WideOr2~0_combout\) # ((!\L1|L0|WideOr3~0_combout\ & (\L1|L0|WideOr1~1_combout\)) # (\L1|L0|WideOr3~0_combout\ & ((!\L1|L0|WideOr1~1_combout\) # 
-- (!\L1|L0|WideOr0~0_combout\)))) ) ) ) # ( !\L1|L0|WideOr3~1_combout\ & ( \L1|L0|WideOr1~0_combout\ & ( (!\L1|L0|WideOr1~1_combout\ & ((!\L1|L0|WideOr2~0_combout\) # ((\L1|L0|WideOr3~0_combout\ & \L1|L0|WideOr0~0_combout\)))) # (\L1|L0|WideOr1~1_combout\ & 
-- ((!\L1|L0|WideOr3~0_combout\) # ((!\L1|L0|WideOr0~0_combout\)))) ) ) ) # ( \L1|L0|WideOr3~1_combout\ & ( !\L1|L0|WideOr1~0_combout\ ) ) # ( !\L1|L0|WideOr3~1_combout\ & ( !\L1|L0|WideOr1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111001111110110101101111111011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L1|L0|ALT_INV_WideOr3~0_combout\,
	datab => \L1|L0|ALT_INV_WideOr2~0_combout\,
	datac => \L1|L0|ALT_INV_WideOr1~1_combout\,
	datad => \L1|L0|ALT_INV_WideOr0~0_combout\,
	datae => \L1|L0|ALT_INV_WideOr3~1_combout\,
	dataf => \L1|L0|ALT_INV_WideOr1~0_combout\,
	combout => \L1|L3|F[2]~2_combout\);

-- Location: MLABCELL_X87_Y8_N24
\L1|L3|F[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L3|F[3]~3_combout\ = ( \L1|L0|WideOr0~combout\ & ( (\L1|L0|WideOr2~combout\ & (!\L1|L0|WideOr3~combout\ $ (\L1|L0|WideOr1~combout\))) ) ) # ( !\L1|L0|WideOr0~combout\ & ( (!\L1|L0|WideOr2~combout\ & (!\L1|L0|WideOr3~combout\ $ 
-- (!\L1|L0|WideOr1~combout\))) # (\L1|L0|WideOr2~combout\ & (\L1|L0|WideOr3~combout\ & \L1|L0|WideOr1~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000011000011001100001100110000000000110011000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L1|L0|ALT_INV_WideOr2~combout\,
	datac => \L1|L0|ALT_INV_WideOr3~combout\,
	datad => \L1|L0|ALT_INV_WideOr1~combout\,
	dataf => \L1|L0|ALT_INV_WideOr0~combout\,
	combout => \L1|L3|F[3]~3_combout\);

-- Location: LABCELL_X88_Y10_N36
\L1|L3|F[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L3|F[4]~4_combout\ = (!\L1|L0|WideOr2~combout\ & ((!\L1|L0|WideOr1~combout\ & ((\L1|L0|WideOr3~combout\))) # (\L1|L0|WideOr1~combout\ & (!\L1|L0|WideOr0~combout\)))) # (\L1|L0|WideOr2~combout\ & (!\L1|L0|WideOr0~combout\ & (\L1|L0|WideOr3~combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111010001010000011101000101000001110100010100000111010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L1|L0|ALT_INV_WideOr0~combout\,
	datab => \L1|L0|ALT_INV_WideOr2~combout\,
	datac => \L1|L0|ALT_INV_WideOr3~combout\,
	datad => \L1|L0|ALT_INV_WideOr1~combout\,
	combout => \L1|L3|F[4]~4_combout\);

-- Location: LABCELL_X88_Y9_N48
\L1|L3|F[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L3|F[5]~5_combout\ = ( \L1|L0|WideOr3~1_combout\ & ( \L1|L0|WideOr1~0_combout\ & ( (!\L1|L0|WideOr3~0_combout\ & (\L1|L0|WideOr2~0_combout\ & (!\L1|L0|WideOr1~1_combout\))) # (\L1|L0|WideOr3~0_combout\ & (!\L1|L0|WideOr0~0_combout\ $ 
-- (((!\L1|L0|WideOr2~0_combout\ & \L1|L0|WideOr1~1_combout\))))) ) ) ) # ( !\L1|L0|WideOr3~1_combout\ & ( \L1|L0|WideOr1~0_combout\ & ( (\L1|L0|WideOr2~0_combout\ & (!\L1|L0|WideOr1~1_combout\ & ((!\L1|L0|WideOr3~0_combout\) # 
-- (!\L1|L0|WideOr0~0_combout\)))) ) ) ) # ( \L1|L0|WideOr3~1_combout\ & ( !\L1|L0|WideOr1~0_combout\ & ( (\L1|L0|WideOr3~0_combout\ & !\L1|L0|WideOr0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000110000001000000111000100100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L1|L0|ALT_INV_WideOr3~0_combout\,
	datab => \L1|L0|ALT_INV_WideOr2~0_combout\,
	datac => \L1|L0|ALT_INV_WideOr1~1_combout\,
	datad => \L1|L0|ALT_INV_WideOr0~0_combout\,
	datae => \L1|L0|ALT_INV_WideOr3~1_combout\,
	dataf => \L1|L0|ALT_INV_WideOr1~0_combout\,
	combout => \L1|L3|F[5]~5_combout\);

-- Location: LABCELL_X88_Y9_N39
\L1|L3|F[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L3|F[6]~6_combout\ = ( \L1|L0|WideOr1~combout\ & ( (!\L1|L0|WideOr2~combout\ & (\L1|L0|WideOr0~combout\ & !\L1|L0|WideOr3~combout\)) # (\L1|L0|WideOr2~combout\ & (!\L1|L0|WideOr0~combout\ & \L1|L0|WideOr3~combout\)) ) ) # ( !\L1|L0|WideOr1~combout\ & 
-- ( (!\L1|L0|WideOr2~combout\ & !\L1|L0|WideOr0~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000001100001100000000110000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L1|L0|ALT_INV_WideOr2~combout\,
	datac => \L1|L0|ALT_INV_WideOr0~combout\,
	datad => \L1|L0|ALT_INV_WideOr3~combout\,
	dataf => \L1|L0|ALT_INV_WideOr1~combout\,
	combout => \L1|L3|F[6]~6_combout\);

-- Location: LABCELL_X85_Y10_N48
\L1|L1|WideOr3\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L1|WideOr3~combout\ = (\L1|L1|WideOr3~1_combout\ & \L1|L1|WideOr3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L1|L1|ALT_INV_WideOr3~1_combout\,
	datac => \L1|L1|ALT_INV_WideOr3~0_combout\,
	combout => \L1|L1|WideOr3~combout\);

-- Location: LABCELL_X85_Y10_N57
\L1|L1|WideOr1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L1|WideOr1~combout\ = ( \L1|L1|WideOr1~0_combout\ & ( \L1|L1|WideOr1~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L1|L1|ALT_INV_WideOr1~1_combout\,
	dataf => \L1|L1|ALT_INV_WideOr1~0_combout\,
	combout => \L1|L1|WideOr1~combout\);

-- Location: LABCELL_X85_Y10_N6
\L1|L4|F[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L4|F[0]~0_combout\ = ( \L1|L1|WideOr0~combout\ & ( (\L1|L1|WideOr3~combout\ & (!\L1|L1|WideOr2~combout\ $ (!\L1|L1|WideOr1~combout\))) ) ) # ( !\L1|L1|WideOr0~combout\ & ( (!\L1|L1|WideOr2~combout\ & (!\L1|L1|WideOr3~combout\ $ 
-- (!\L1|L1|WideOr1~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000000000011001100000000000011000011000000001100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L1|L1|ALT_INV_WideOr2~combout\,
	datac => \L1|L1|ALT_INV_WideOr3~combout\,
	datad => \L1|L1|ALT_INV_WideOr1~combout\,
	dataf => \L1|L1|ALT_INV_WideOr0~combout\,
	combout => \L1|L4|F[0]~0_combout\);

-- Location: LABCELL_X85_Y10_N36
\L1|L4|F[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L4|F[1]~1_combout\ = ( \L1|L1|WideOr3~0_combout\ & ( \L1|L1|WideOr2~0_combout\ & ( (\L1|L1|WideOr1~0_combout\ & ((!\L1|L1|WideOr3~1_combout\ & (\L1|L1|WideOr1~1_combout\)) # (\L1|L1|WideOr3~1_combout\ & ((\L1|L1|WideOr0~0_combout\))))) ) ) ) # ( 
-- !\L1|L1|WideOr3~0_combout\ & ( \L1|L1|WideOr2~0_combout\ & ( (\L1|L1|WideOr1~1_combout\ & \L1|L1|WideOr1~0_combout\) ) ) ) # ( \L1|L1|WideOr3~0_combout\ & ( !\L1|L1|WideOr2~0_combout\ & ( (\L1|L1|WideOr1~1_combout\ & (\L1|L1|WideOr1~0_combout\ & 
-- (!\L1|L1|WideOr0~0_combout\ $ (!\L1|L1|WideOr3~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000010000000101000001010000010100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L1|L1|ALT_INV_WideOr1~1_combout\,
	datab => \L1|L1|ALT_INV_WideOr0~0_combout\,
	datac => \L1|L1|ALT_INV_WideOr1~0_combout\,
	datad => \L1|L1|ALT_INV_WideOr3~1_combout\,
	datae => \L1|L1|ALT_INV_WideOr3~0_combout\,
	dataf => \L1|L1|ALT_INV_WideOr2~0_combout\,
	combout => \L1|L4|F[1]~1_combout\);

-- Location: LABCELL_X85_Y10_N33
\L1|L4|F[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L4|F[2]~2_combout\ = ( \L1|L1|WideOr1~1_combout\ & ( \L1|L1|WideOr0~0_combout\ & ( (!\L1|L1|WideOr1~0_combout\) # ((!\L1|L1|WideOr3~0_combout\) # ((!\L1|L1|WideOr2~0_combout\ & \L1|L1|WideOr3~1_combout\))) ) ) ) # ( !\L1|L1|WideOr1~1_combout\ & ( 
-- \L1|L1|WideOr0~0_combout\ & ( (!\L1|L1|WideOr1~0_combout\) # ((!\L1|L1|WideOr2~0_combout\) # (\L1|L1|WideOr3~0_combout\)) ) ) ) # ( \L1|L1|WideOr1~1_combout\ & ( !\L1|L1|WideOr0~0_combout\ ) ) # ( !\L1|L1|WideOr1~1_combout\ & ( !\L1|L1|WideOr0~0_combout\ 
-- & ( (!\L1|L1|WideOr1~0_combout\) # ((!\L1|L1|WideOr2~0_combout\) # ((\L1|L1|WideOr3~1_combout\ & \L1|L1|WideOr3~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101111111111111111111111101110111111111111111110101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L1|L1|ALT_INV_WideOr1~0_combout\,
	datab => \L1|L1|ALT_INV_WideOr2~0_combout\,
	datac => \L1|L1|ALT_INV_WideOr3~1_combout\,
	datad => \L1|L1|ALT_INV_WideOr3~0_combout\,
	datae => \L1|L1|ALT_INV_WideOr1~1_combout\,
	dataf => \L1|L1|ALT_INV_WideOr0~0_combout\,
	combout => \L1|L4|F[2]~2_combout\);

-- Location: LABCELL_X85_Y10_N21
\L1|L4|F[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L4|F[3]~3_combout\ = ( \L1|L1|WideOr2~combout\ & ( (!\L1|L1|WideOr3~combout\ & (\L1|L1|WideOr0~combout\ & !\L1|L1|WideOr1~combout\)) # (\L1|L1|WideOr3~combout\ & ((\L1|L1|WideOr1~combout\))) ) ) # ( !\L1|L1|WideOr2~combout\ & ( 
-- (!\L1|L1|WideOr0~combout\ & (!\L1|L1|WideOr3~combout\ $ (!\L1|L1|WideOr1~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100001001000001001010010010101001000010010000010010100100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L1|L1|ALT_INV_WideOr3~combout\,
	datab => \L1|L1|ALT_INV_WideOr0~combout\,
	datac => \L1|L1|ALT_INV_WideOr1~combout\,
	datae => \L1|L1|ALT_INV_WideOr2~combout\,
	combout => \L1|L4|F[3]~3_combout\);

-- Location: LABCELL_X85_Y10_N54
\L1|L4|F[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L4|F[4]~4_combout\ = ( \L1|L1|WideOr0~combout\ & ( (!\L1|L1|WideOr2~combout\ & (!\L1|L1|WideOr1~combout\ & \L1|L1|WideOr3~combout\)) ) ) # ( !\L1|L1|WideOr0~combout\ & ( ((!\L1|L1|WideOr2~combout\ & \L1|L1|WideOr1~combout\)) # 
-- (\L1|L1|WideOr3~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111100001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L1|L1|ALT_INV_WideOr2~combout\,
	datab => \L1|L1|ALT_INV_WideOr1~combout\,
	datac => \L1|L1|ALT_INV_WideOr3~combout\,
	dataf => \L1|L1|ALT_INV_WideOr0~combout\,
	combout => \L1|L4|F[4]~4_combout\);

-- Location: LABCELL_X85_Y10_N42
\L1|L4|F[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L4|F[5]~5_combout\ = ( \L1|L1|WideOr1~1_combout\ & ( \L1|L1|WideOr1~0_combout\ & ( (\L1|L1|WideOr3~0_combout\ & (\L1|L1|WideOr3~1_combout\ & (!\L1|L1|WideOr2~0_combout\ $ (!\L1|L1|WideOr0~0_combout\)))) ) ) ) # ( !\L1|L1|WideOr1~1_combout\ & ( 
-- \L1|L1|WideOr1~0_combout\ & ( (!\L1|L1|WideOr3~0_combout\ & (\L1|L1|WideOr2~0_combout\)) # (\L1|L1|WideOr3~0_combout\ & (!\L1|L1|WideOr0~0_combout\ & ((\L1|L1|WideOr3~1_combout\) # (\L1|L1|WideOr2~0_combout\)))) ) ) ) # ( \L1|L1|WideOr1~1_combout\ & ( 
-- !\L1|L1|WideOr1~0_combout\ & ( (\L1|L1|WideOr3~0_combout\ & (\L1|L1|WideOr3~1_combout\ & !\L1|L1|WideOr0~0_combout\)) ) ) ) # ( !\L1|L1|WideOr1~1_combout\ & ( !\L1|L1|WideOr1~0_combout\ & ( (\L1|L1|WideOr3~0_combout\ & (\L1|L1|WideOr3~1_combout\ & 
-- !\L1|L1|WideOr0~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000110111001000100000000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L1|L1|ALT_INV_WideOr3~0_combout\,
	datab => \L1|L1|ALT_INV_WideOr2~0_combout\,
	datac => \L1|L1|ALT_INV_WideOr3~1_combout\,
	datad => \L1|L1|ALT_INV_WideOr0~0_combout\,
	datae => \L1|L1|ALT_INV_WideOr1~1_combout\,
	dataf => \L1|L1|ALT_INV_WideOr1~0_combout\,
	combout => \L1|L4|F[5]~5_combout\);

-- Location: LABCELL_X85_Y10_N3
\L1|L4|F[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L4|F[6]~6_combout\ = ( \L1|L1|WideOr2~combout\ & ( (\L1|L1|WideOr3~combout\ & (\L1|L1|WideOr1~combout\ & !\L1|L1|WideOr0~combout\)) ) ) # ( !\L1|L1|WideOr2~combout\ & ( (!\L1|L1|WideOr1~combout\ & ((!\L1|L1|WideOr0~combout\))) # 
-- (\L1|L1|WideOr1~combout\ & (!\L1|L1|WideOr3~combout\ & \L1|L1|WideOr0~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001011000010000100000001000011000010110000100001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L1|L1|ALT_INV_WideOr3~combout\,
	datab => \L1|L1|ALT_INV_WideOr1~combout\,
	datac => \L1|L1|ALT_INV_WideOr0~combout\,
	datae => \L1|L1|ALT_INV_WideOr2~combout\,
	combout => \L1|L4|F[6]~6_combout\);

-- Location: LABCELL_X83_Y9_N42
\L1|L2|WideOr3\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L2|WideOr3~combout\ = ( \L1|L2|WideOr3~1_combout\ & ( \L1|L2|WideOr3~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L1|L2|ALT_INV_WideOr3~0_combout\,
	dataf => \L1|L2|ALT_INV_WideOr3~1_combout\,
	combout => \L1|L2|WideOr3~combout\);

-- Location: LABCELL_X85_Y9_N51
\L1|L2|WideOr1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L2|WideOr1~combout\ = ( \L1|L2|WideOr1~0_combout\ & ( \L1|L2|WideOr1~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L1|L2|ALT_INV_WideOr1~1_combout\,
	dataf => \L1|L2|ALT_INV_WideOr1~0_combout\,
	combout => \L1|L2|WideOr1~combout\);

-- Location: LABCELL_X85_Y10_N24
\L1|L5|F[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L5|F[0]~0_combout\ = ( \L1|L2|WideOr1~combout\ & ( (!\L1|L2|WideOr2~combout\ & (!\L1|L2|WideOr3~combout\ $ (\L1|L2|WideOr0~combout\))) ) ) # ( !\L1|L2|WideOr1~combout\ & ( (\L1|L2|WideOr3~combout\ & (!\L1|L2|WideOr0~combout\ $ 
-- (\L1|L2|WideOr2~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000010001010001000001000110011001000000001001100100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L1|L2|ALT_INV_WideOr3~combout\,
	datab => \L1|L2|ALT_INV_WideOr0~combout\,
	datad => \L1|L2|ALT_INV_WideOr2~combout\,
	dataf => \L1|L2|ALT_INV_WideOr1~combout\,
	combout => \L1|L5|F[0]~0_combout\);

-- Location: LABCELL_X83_Y9_N0
\L1|L5|F[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L5|F[1]~1_combout\ = ( \L1|L2|WideOr2~0_combout\ & ( \L1|L2|WideOr3~0_combout\ & ( (\L1|L2|WideOr1~0_combout\ & ((!\L1|L2|WideOr3~1_combout\ & ((\L1|L2|WideOr1~1_combout\))) # (\L1|L2|WideOr3~1_combout\ & (\L1|L2|WideOr0~0_combout\)))) ) ) ) # ( 
-- !\L1|L2|WideOr2~0_combout\ & ( \L1|L2|WideOr3~0_combout\ & ( (\L1|L2|WideOr1~0_combout\ & (\L1|L2|WideOr1~1_combout\ & (!\L1|L2|WideOr0~0_combout\ $ (!\L1|L2|WideOr3~1_combout\)))) ) ) ) # ( \L1|L2|WideOr2~0_combout\ & ( !\L1|L2|WideOr3~0_combout\ & ( 
-- (\L1|L2|WideOr1~0_combout\ & \L1|L2|WideOr1~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000001000000100000001100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L1|L2|ALT_INV_WideOr0~0_combout\,
	datab => \L1|L2|ALT_INV_WideOr1~0_combout\,
	datac => \L1|L2|ALT_INV_WideOr1~1_combout\,
	datad => \L1|L2|ALT_INV_WideOr3~1_combout\,
	datae => \L1|L2|ALT_INV_WideOr2~0_combout\,
	dataf => \L1|L2|ALT_INV_WideOr3~0_combout\,
	combout => \L1|L5|F[1]~1_combout\);

-- Location: MLABCELL_X82_Y9_N15
\L1|L5|F[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L5|F[2]~2_combout\ = ( \L1|L2|WideOr0~0_combout\ & ( \L1|L2|WideOr3~1_combout\ & ( (!\L1|L2|WideOr2~0_combout\) # ((!\L1|L2|WideOr1~0_combout\) # (!\L1|L2|WideOr1~1_combout\ $ (!\L1|L2|WideOr3~0_combout\))) ) ) ) # ( !\L1|L2|WideOr0~0_combout\ & ( 
-- \L1|L2|WideOr3~1_combout\ & ( ((!\L1|L2|WideOr2~0_combout\) # ((!\L1|L2|WideOr1~0_combout\) # (\L1|L2|WideOr3~0_combout\))) # (\L1|L2|WideOr1~1_combout\) ) ) ) # ( \L1|L2|WideOr0~0_combout\ & ( !\L1|L2|WideOr3~1_combout\ & ( (!\L1|L2|WideOr1~0_combout\) # 
-- ((!\L1|L2|WideOr1~1_combout\ & ((!\L1|L2|WideOr2~0_combout\) # (\L1|L2|WideOr3~0_combout\))) # (\L1|L2|WideOr1~1_combout\ & ((!\L1|L2|WideOr3~0_combout\)))) ) ) ) # ( !\L1|L2|WideOr0~0_combout\ & ( !\L1|L2|WideOr3~1_combout\ & ( 
-- ((!\L1|L2|WideOr2~0_combout\) # (!\L1|L2|WideOr1~0_combout\)) # (\L1|L2|WideOr1~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110111111101111111011111101011111101111111111111110111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L1|L2|ALT_INV_WideOr1~1_combout\,
	datab => \L1|L2|ALT_INV_WideOr2~0_combout\,
	datac => \L1|L2|ALT_INV_WideOr1~0_combout\,
	datad => \L1|L2|ALT_INV_WideOr3~0_combout\,
	datae => \L1|L2|ALT_INV_WideOr0~0_combout\,
	dataf => \L1|L2|ALT_INV_WideOr3~1_combout\,
	combout => \L1|L5|F[2]~2_combout\);

-- Location: LABCELL_X85_Y10_N27
\L1|L5|F[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L5|F[3]~3_combout\ = ( \L1|L2|WideOr1~combout\ & ( (!\L1|L2|WideOr3~combout\ & (!\L1|L2|WideOr0~combout\ & !\L1|L2|WideOr2~combout\)) # (\L1|L2|WideOr3~combout\ & ((\L1|L2|WideOr2~combout\))) ) ) # ( !\L1|L2|WideOr1~combout\ & ( 
-- (!\L1|L2|WideOr3~combout\ & (\L1|L2|WideOr0~combout\ & \L1|L2|WideOr2~combout\)) # (\L1|L2|WideOr3~combout\ & (!\L1|L2|WideOr0~combout\ & !\L1|L2|WideOr2~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000001010010100000000101010100000010101011010000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L1|L2|ALT_INV_WideOr3~combout\,
	datac => \L1|L2|ALT_INV_WideOr0~combout\,
	datad => \L1|L2|ALT_INV_WideOr2~combout\,
	dataf => \L1|L2|ALT_INV_WideOr1~combout\,
	combout => \L1|L5|F[3]~3_combout\);

-- Location: MLABCELL_X87_Y10_N27
\L1|L5|F[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L5|F[4]~4_combout\ = ( \L1|L2|WideOr1~combout\ & ( (!\L1|L2|WideOr0~combout\ & ((!\L1|L2|WideOr2~combout\) # (\L1|L2|WideOr3~combout\))) ) ) # ( !\L1|L2|WideOr1~combout\ & ( (\L1|L2|WideOr3~combout\ & ((!\L1|L2|WideOr2~combout\) # 
-- (!\L1|L2|WideOr0~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001110100011001000110000001110000011101000110010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L1|L2|ALT_INV_WideOr2~combout\,
	datab => \L1|L2|ALT_INV_WideOr0~combout\,
	datac => \L1|L2|ALT_INV_WideOr3~combout\,
	datae => \L1|L2|ALT_INV_WideOr1~combout\,
	combout => \L1|L5|F[4]~4_combout\);

-- Location: LABCELL_X83_Y9_N12
\L1|L5|F[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L5|F[5]~5_combout\ = ( \L1|L2|WideOr2~0_combout\ & ( \L1|L2|WideOr1~1_combout\ & ( (\L1|L2|WideOr3~0_combout\ & (!\L1|L2|WideOr0~0_combout\ & \L1|L2|WideOr3~1_combout\)) ) ) ) # ( !\L1|L2|WideOr2~0_combout\ & ( \L1|L2|WideOr1~1_combout\ & ( 
-- (\L1|L2|WideOr3~0_combout\ & (\L1|L2|WideOr3~1_combout\ & (!\L1|L2|WideOr1~0_combout\ $ (\L1|L2|WideOr0~0_combout\)))) ) ) ) # ( \L1|L2|WideOr2~0_combout\ & ( !\L1|L2|WideOr1~1_combout\ & ( (!\L1|L2|WideOr3~0_combout\ & (\L1|L2|WideOr1~0_combout\)) # 
-- (\L1|L2|WideOr3~0_combout\ & (!\L1|L2|WideOr0~0_combout\ & ((\L1|L2|WideOr3~1_combout\) # (\L1|L2|WideOr1~0_combout\)))) ) ) ) # ( !\L1|L2|WideOr2~0_combout\ & ( !\L1|L2|WideOr1~1_combout\ & ( (\L1|L2|WideOr3~0_combout\ & (!\L1|L2|WideOr0~0_combout\ & 
-- \L1|L2|WideOr3~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000001100100111001000000000010000010000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L1|L2|ALT_INV_WideOr3~0_combout\,
	datab => \L1|L2|ALT_INV_WideOr1~0_combout\,
	datac => \L1|L2|ALT_INV_WideOr0~0_combout\,
	datad => \L1|L2|ALT_INV_WideOr3~1_combout\,
	datae => \L1|L2|ALT_INV_WideOr2~0_combout\,
	dataf => \L1|L2|ALT_INV_WideOr1~1_combout\,
	combout => \L1|L5|F[5]~5_combout\);

-- Location: MLABCELL_X87_Y10_N30
\L1|L5|F[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|L5|F[6]~6_combout\ = ( !\L1|L2|WideOr0~combout\ & ( \L1|L2|WideOr3~combout\ & ( !\L1|L2|WideOr1~combout\ $ (\L1|L2|WideOr2~combout\) ) ) ) # ( \L1|L2|WideOr0~combout\ & ( !\L1|L2|WideOr3~combout\ & ( (\L1|L2|WideOr1~combout\ & 
-- !\L1|L2|WideOr2~combout\) ) ) ) # ( !\L1|L2|WideOr0~combout\ & ( !\L1|L2|WideOr3~combout\ & ( (!\L1|L2|WideOr1~combout\ & !\L1|L2|WideOr2~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000001100000011000011000011110000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L1|L2|ALT_INV_WideOr1~combout\,
	datac => \L1|L2|ALT_INV_WideOr2~combout\,
	datae => \L1|L2|ALT_INV_WideOr0~combout\,
	dataf => \L1|L2|ALT_INV_WideOr3~combout\,
	combout => \L1|L5|F[6]~6_combout\);

-- Location: MLABCELL_X87_Y10_N39
\L4|L1|F[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L4|L1|F[0]~0_combout\ = ( \L4|L0|rounds\(3) & ( (\L4|L0|rounds\(0) & (!\L4|L0|rounds\(2) $ (!\L4|L0|rounds\(1)))) ) ) # ( !\L4|L0|rounds\(3) & ( (!\L4|L0|rounds\(1) & (!\L4|L0|rounds\(2) $ (!\L4|L0|rounds\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010010001000010001001000100000000000011001100000000001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L4|L0|ALT_INV_rounds\(2),
	datab => \L4|L0|ALT_INV_rounds\(1),
	datad => \L4|L0|ALT_INV_rounds\(0),
	dataf => \L4|L0|ALT_INV_rounds\(3),
	combout => \L4|L1|F[0]~0_combout\);

-- Location: MLABCELL_X87_Y10_N57
\L4|L1|F[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L4|L1|F[1]~1_combout\ = ( \L4|L0|rounds\(2) & ( (!\L4|L0|rounds\(3) & (!\L4|L0|rounds\(1) $ (!\L4|L0|rounds\(0)))) # (\L4|L0|rounds\(3) & ((!\L4|L0|rounds\(0)) # (\L4|L0|rounds\(1)))) ) ) # ( !\L4|L0|rounds\(2) & ( (\L4|L0|rounds\(3) & (\L4|L0|rounds\(1) 
-- & \L4|L0|rounds\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000101110111100110010111011110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L4|L0|ALT_INV_rounds\(3),
	datab => \L4|L0|ALT_INV_rounds\(1),
	datad => \L4|L0|ALT_INV_rounds\(0),
	dataf => \L4|L0|ALT_INV_rounds\(2),
	combout => \L4|L1|F[1]~1_combout\);

-- Location: FF_X87_Y10_N1
\L4|L0|rounds[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L4|L0|Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|L0|rounds[0]~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y8_N18
\L4|L1|F[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \L4|L1|F[2]~2_combout\ = ( \L4|L0|rounds\(1) & ( (!\L4|L0|rounds\(3) & ((\L4|L0|rounds[2]~DUPLICATE_q\) # (\L4|L0|rounds[0]~DUPLICATE_q\))) # (\L4|L0|rounds\(3) & ((!\L4|L0|rounds[2]~DUPLICATE_q\))) ) ) # ( !\L4|L0|rounds\(1) & ( ((!\L4|L0|rounds\(3)) # 
-- (!\L4|L0|rounds[2]~DUPLICATE_q\)) # (\L4|L0|rounds[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110111111101011111000111110011111101111111010111110001111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L4|L0|ALT_INV_rounds[0]~DUPLICATE_q\,
	datab => \L4|L0|ALT_INV_rounds\(3),
	datac => \L4|L0|ALT_INV_rounds[2]~DUPLICATE_q\,
	datae => \L4|L0|ALT_INV_rounds\(1),
	combout => \L4|L1|F[2]~2_combout\);

-- Location: MLABCELL_X87_Y10_N54
\L4|L1|F[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \L4|L1|F[3]~3_combout\ = ( \L4|L0|rounds\(2) & ( (!\L4|L0|rounds\(1) & (!\L4|L0|rounds\(3) & !\L4|L0|rounds\(0))) # (\L4|L0|rounds\(1) & ((\L4|L0|rounds\(0)))) ) ) # ( !\L4|L0|rounds\(2) & ( (!\L4|L0|rounds\(1) & (!\L4|L0|rounds\(3) & \L4|L0|rounds\(0))) 
-- # (\L4|L0|rounds\(1) & (\L4|L0|rounds\(3) & !\L4|L0|rounds\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111000000000000111100000011000000001100111100000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L4|L0|ALT_INV_rounds\(1),
	datac => \L4|L0|ALT_INV_rounds\(3),
	datad => \L4|L0|ALT_INV_rounds\(0),
	dataf => \L4|L0|ALT_INV_rounds\(2),
	combout => \L4|L1|F[3]~3_combout\);

-- Location: MLABCELL_X87_Y10_N12
\L4|L1|F[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \L4|L1|F[4]~4_combout\ = ( \L4|L0|rounds\(2) & ( (!\L4|L0|rounds\(3) & ((!\L4|L0|rounds\(1)) # (\L4|L0|rounds\(0)))) ) ) # ( !\L4|L0|rounds\(2) & ( (\L4|L0|rounds\(0) & ((!\L4|L0|rounds\(3)) # (!\L4|L0|rounds\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001110000011100000111010001010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L4|L0|ALT_INV_rounds\(3),
	datab => \L4|L0|ALT_INV_rounds\(1),
	datac => \L4|L0|ALT_INV_rounds\(0),
	dataf => \L4|L0|ALT_INV_rounds\(2),
	combout => \L4|L1|F[4]~4_combout\);

-- Location: MLABCELL_X87_Y10_N15
\L4|L1|F[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \L4|L1|F[5]~5_combout\ = ( \L4|L0|rounds\(2) & ( (\L4|L0|rounds\(0) & (!\L4|L0|rounds\(3) $ (!\L4|L0|rounds\(1)))) ) ) # ( !\L4|L0|rounds\(2) & ( (!\L4|L0|rounds\(3) & ((\L4|L0|rounds\(0)) # (\L4|L0|rounds\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010101010001000101010101000000000011001100000000001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L4|L0|ALT_INV_rounds\(3),
	datab => \L4|L0|ALT_INV_rounds\(1),
	datad => \L4|L0|ALT_INV_rounds\(0),
	dataf => \L4|L0|ALT_INV_rounds\(2),
	combout => \L4|L1|F[5]~5_combout\);

-- Location: MLABCELL_X87_Y10_N42
\L4|L1|F[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \L4|L1|F[6]~6_combout\ = ( \L4|L0|rounds\(2) & ( (!\L4|L0|rounds\(0) & ((!\L4|L0|rounds\(3)) # (\L4|L0|rounds\(1)))) # (\L4|L0|rounds\(0) & ((!\L4|L0|rounds\(1)) # (\L4|L0|rounds\(3)))) ) ) # ( !\L4|L0|rounds\(2) & ( (\L4|L0|rounds\(3)) # 
-- (\L4|L0|rounds\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111111100111111001111110011111100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L4|L0|ALT_INV_rounds\(0),
	datab => \L4|L0|ALT_INV_rounds\(1),
	datac => \L4|L0|ALT_INV_rounds\(3),
	dataf => \L4|L0|ALT_INV_rounds\(2),
	combout => \L4|L1|F[6]~6_combout\);

-- Location: FF_X87_Y8_N56
\L4|L0|EA.B4~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \L4|L0|PE.B4~q\,
	clrn => \L4|L0|ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|L0|EA.B4~DUPLICATE_q\);

-- Location: FF_X87_Y8_N14
\L4|L0|EA.B2~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputCLKENA0_outclk\,
	asdata => \L4|L0|PE.B2~q\,
	clrn => \L4|L0|ALT_INV_process_0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|L0|EA.B2~DUPLICATE_q\);

-- Location: MLABCELL_X87_Y8_N42
\L4|L0|WideOr0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L4|L0|WideOr0~combout\ = ( !\L4|L0|EA.B1~q\ & ( !\L4|L0|EA.B3~q\ & ( (!\L4|L0|EA.B5~q\ & (!\L4|L0|EA.B4~DUPLICATE_q\ & !\L4|L0|EA.B2~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L4|L0|ALT_INV_EA.B5~q\,
	datac => \L4|L0|ALT_INV_EA.B4~DUPLICATE_q\,
	datad => \L4|L0|ALT_INV_EA.B2~DUPLICATE_q\,
	datae => \L4|L0|ALT_INV_EA.B1~q\,
	dataf => \L4|L0|ALT_INV_EA.B3~q\,
	combout => \L4|L0|WideOr0~combout\);

-- Location: LABCELL_X88_Y10_N15
\L4|L0|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L4|L0|Selector2~0_combout\ = ( \L4|L0|current_state\(0) & ( \L4|L0|WideOr0~combout\ & ( ((\L4|L0|EA.S1~q\) # (\L4|L0|EA.S5~DUPLICATE_q\)) # (\L4|L0|EA.S3~q\) ) ) ) # ( !\L4|L0|current_state\(0) & ( \L4|L0|WideOr0~combout\ & ( ((\L4|L0|EA.S1~q\) # 
-- (\L4|L0|EA.S5~DUPLICATE_q\)) # (\L4|L0|EA.S3~q\) ) ) ) # ( \L4|L0|current_state\(0) & ( !\L4|L0|WideOr0~combout\ ) ) # ( !\L4|L0|current_state\(0) & ( !\L4|L0|WideOr0~combout\ & ( ((\L4|L0|EA.S1~q\) # (\L4|L0|EA.S5~DUPLICATE_q\)) # (\L4|L0|EA.S3~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111111111111111111101111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L4|L0|ALT_INV_EA.S3~q\,
	datab => \L4|L0|ALT_INV_EA.S5~DUPLICATE_q\,
	datac => \L4|L0|ALT_INV_EA.S1~q\,
	datae => \L4|L0|ALT_INV_current_state\(0),
	dataf => \L4|L0|ALT_INV_WideOr0~combout\,
	combout => \L4|L0|Selector2~0_combout\);

-- Location: FF_X88_Y10_N17
\L4|L0|current_state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L4|L0|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|L0|current_state\(0));

-- Location: LABCELL_X88_Y10_N54
\L4|L0|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L4|L0|Selector0~0_combout\ = ( \L4|L0|current_state\(2) & ( \L4|L0|WideOr0~combout\ & ( ((\L4|L0|EA.S5~DUPLICATE_q\) # (\L4|L0|EA.S4~DUPLICATE_q\)) # (\L4|L0|EA.S6~q\) ) ) ) # ( !\L4|L0|current_state\(2) & ( \L4|L0|WideOr0~combout\ & ( 
-- ((\L4|L0|EA.S5~DUPLICATE_q\) # (\L4|L0|EA.S4~DUPLICATE_q\)) # (\L4|L0|EA.S6~q\) ) ) ) # ( \L4|L0|current_state\(2) & ( !\L4|L0|WideOr0~combout\ ) ) # ( !\L4|L0|current_state\(2) & ( !\L4|L0|WideOr0~combout\ & ( ((\L4|L0|EA.S5~DUPLICATE_q\) # 
-- (\L4|L0|EA.S4~DUPLICATE_q\)) # (\L4|L0|EA.S6~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111111111111111111111111100111111111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L4|L0|ALT_INV_EA.S6~q\,
	datac => \L4|L0|ALT_INV_EA.S4~DUPLICATE_q\,
	datad => \L4|L0|ALT_INV_EA.S5~DUPLICATE_q\,
	datae => \L4|L0|ALT_INV_current_state\(2),
	dataf => \L4|L0|ALT_INV_WideOr0~combout\,
	combout => \L4|L0|Selector0~0_combout\);

-- Location: FF_X88_Y10_N56
\L4|L0|current_state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L4|L0|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|L0|current_state\(2));

-- Location: LABCELL_X88_Y10_N6
\L4|L0|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L4|L0|Selector1~0_combout\ = ( \L4|L0|current_state\(1) & ( \L4|L0|WideOr0~combout\ & ( ((\L4|L0|EA.S2~q\) # (\L4|L0|EA.S6~q\)) # (\L4|L0|EA.S3~q\) ) ) ) # ( !\L4|L0|current_state\(1) & ( \L4|L0|WideOr0~combout\ & ( ((\L4|L0|EA.S2~q\) # 
-- (\L4|L0|EA.S6~q\)) # (\L4|L0|EA.S3~q\) ) ) ) # ( \L4|L0|current_state\(1) & ( !\L4|L0|WideOr0~combout\ ) ) # ( !\L4|L0|current_state\(1) & ( !\L4|L0|WideOr0~combout\ & ( ((\L4|L0|EA.S2~q\) # (\L4|L0|EA.S6~q\)) # (\L4|L0|EA.S3~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111111111111111111101111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L4|L0|ALT_INV_EA.S3~q\,
	datab => \L4|L0|ALT_INV_EA.S6~q\,
	datac => \L4|L0|ALT_INV_EA.S2~q\,
	datae => \L4|L0|ALT_INV_current_state\(1),
	dataf => \L4|L0|ALT_INV_WideOr0~combout\,
	combout => \L4|L0|Selector1~0_combout\);

-- Location: FF_X88_Y10_N8
\L4|L0|current_state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clock_50~inputCLKENA0_outclk\,
	d => \L4|L0|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L4|L0|current_state\(1));

-- Location: LABCELL_X88_Y10_N0
\L4|L2|F[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L4|L2|F[0]~0_combout\ = ( \L4|L0|current_state\(2) & ( !\L4|L0|current_state\(1) & ( !\L4|L0|current_state\(0) ) ) ) # ( !\L4|L0|current_state\(2) & ( !\L4|L0|current_state\(1) & ( \L4|L0|current_state\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L4|L0|ALT_INV_current_state\(0),
	datae => \L4|L0|ALT_INV_current_state\(2),
	dataf => \L4|L0|ALT_INV_current_state\(1),
	combout => \L4|L2|F[0]~0_combout\);

-- Location: LABCELL_X88_Y10_N45
\L4|L2|F[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L4|L2|F[1]~1_combout\ = ( \L4|L0|current_state\(2) & ( \L4|L0|current_state\(1) & ( !\L4|L0|current_state\(0) ) ) ) # ( \L4|L0|current_state\(2) & ( !\L4|L0|current_state\(1) & ( \L4|L0|current_state\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L4|L0|ALT_INV_current_state\(0),
	datae => \L4|L0|ALT_INV_current_state\(2),
	dataf => \L4|L0|ALT_INV_current_state\(1),
	combout => \L4|L2|F[1]~1_combout\);

-- Location: LABCELL_X88_Y10_N48
\L4|L2|F[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \L4|L2|F[2]~2_combout\ = ( !\L4|L0|current_state\(0) & ( (\L4|L0|current_state\(1) & !\L4|L0|current_state\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L4|L0|ALT_INV_current_state\(1),
	datac => \L4|L0|ALT_INV_current_state\(2),
	dataf => \L4|L0|ALT_INV_current_state\(0),
	combout => \L4|L2|F[2]~2_combout\);

-- Location: LABCELL_X88_Y10_N21
\L4|L2|F[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \L4|L2|F[3]~3_combout\ = ( \L4|L0|current_state\(2) & ( \L4|L0|current_state\(1) & ( \L4|L0|current_state\(0) ) ) ) # ( \L4|L0|current_state\(2) & ( !\L4|L0|current_state\(1) & ( !\L4|L0|current_state\(0) ) ) ) # ( !\L4|L0|current_state\(2) & ( 
-- !\L4|L0|current_state\(1) & ( \L4|L0|current_state\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111100001111000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L4|L0|ALT_INV_current_state\(0),
	datae => \L4|L0|ALT_INV_current_state\(2),
	dataf => \L4|L0|ALT_INV_current_state\(1),
	combout => \L4|L2|F[3]~3_combout\);

-- Location: LABCELL_X88_Y10_N51
\L4|L2|F[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \L4|L2|F[4]~4_combout\ = ( \L4|L0|current_state\(0) ) # ( !\L4|L0|current_state\(0) & ( (!\L4|L0|current_state\(1) & \L4|L0|current_state\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L4|L0|ALT_INV_current_state\(1),
	datad => \L4|L0|ALT_INV_current_state\(2),
	dataf => \L4|L0|ALT_INV_current_state\(0),
	combout => \L4|L2|F[4]~4_combout\);

-- Location: LABCELL_X88_Y10_N24
\rtl~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \rtl~4_combout\ = ( \L4|L0|current_state\(0) & ( (!\L4|L0|current_state\(2)) # (\L4|L0|current_state\(1)) ) ) # ( !\L4|L0|current_state\(0) & ( (\L4|L0|current_state\(1) & !\L4|L0|current_state\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000011110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L4|L0|ALT_INV_current_state\(1),
	datac => \L4|L0|ALT_INV_current_state\(2),
	dataf => \L4|L0|ALT_INV_current_state\(0),
	combout => \rtl~4_combout\);

-- Location: LABCELL_X88_Y10_N27
\L4|L2|F[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \L4|L2|F[6]~5_combout\ = ( \L4|L0|current_state\(0) & ( !\L4|L0|current_state\(1) $ (\L4|L0|current_state\(2)) ) ) # ( !\L4|L0|current_state\(0) & ( (!\L4|L0|current_state\(1) & !\L4|L0|current_state\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000011001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L4|L0|ALT_INV_current_state\(1),
	datad => \L4|L0|ALT_INV_current_state\(2),
	dataf => \L4|L0|ALT_INV_current_state\(0),
	combout => \L4|L2|F[6]~5_combout\);

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

-- Location: LABCELL_X22_Y26_N0
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


