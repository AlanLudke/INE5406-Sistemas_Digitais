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

-- DATE "02/24/2018 14:42:35"

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

ENTITY 	Jogo IS
    PORT (
	SW : IN std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0)
	);
END Jogo;

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
-- KEY[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Jogo IS
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
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \L2|L0|Add0~101_sumout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \L0|btn1state.EsperaApertar~0_combout\ : std_logic;
SIGNAL \L0|btn1state.EsperaApertar~q\ : std_logic;
SIGNAL \L0|btn1next.SaidaAtiva~0_combout\ : std_logic;
SIGNAL \L0|btn1state.SaidaAtiva~q\ : std_logic;
SIGNAL \L1|estadoAtual.Setup~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \L0|btn0state.EsperaApertar~0_combout\ : std_logic;
SIGNAL \L0|btn0state.EsperaApertar~q\ : std_logic;
SIGNAL \L0|btn0next.SaidaAtiva~0_combout\ : std_logic;
SIGNAL \L0|btn0state.SaidaAtiva~q\ : std_logic;
SIGNAL \L1|estadoAtual.Setup~q\ : std_logic;
SIGNAL \L2|L3|aux_saida~2_combout\ : std_logic;
SIGNAL \L2|L3|aux_saida[2]~1_combout\ : std_logic;
SIGNAL \L2|L3|aux_saida~0_combout\ : std_logic;
SIGNAL \L2|L3|Equal0~0_combout\ : std_logic;
SIGNAL \L2|L3|tc~q\ : std_logic;
SIGNAL \L1|Selector2~0_combout\ : std_logic;
SIGNAL \L1|estadoAtual.Game~feeder_combout\ : std_logic;
SIGNAL \L1|estadoAtual.Game~q\ : std_logic;
SIGNAL \L1|Selector3~0_combout\ : std_logic;
SIGNAL \L1|estadoAtual.Result~q\ : std_logic;
SIGNAL \L1|estadoAtual.Init~0_combout\ : std_logic;
SIGNAL \L1|estadoAtual.Init~q\ : std_logic;
SIGNAL \L2|L0|Add0~102\ : std_logic;
SIGNAL \L2|L0|Add0~105_sumout\ : std_logic;
SIGNAL \L2|L0|Add0~106\ : std_logic;
SIGNAL \L2|L0|Add0~109_sumout\ : std_logic;
SIGNAL \L2|L0|Add0~110\ : std_logic;
SIGNAL \L2|L0|Add0~125_sumout\ : std_logic;
SIGNAL \L2|L0|Add0~126\ : std_logic;
SIGNAL \L2|L0|Add0~121_sumout\ : std_logic;
SIGNAL \L2|L0|Add0~122\ : std_logic;
SIGNAL \L2|L0|Add0~117_sumout\ : std_logic;
SIGNAL \L2|L0|Add0~118\ : std_logic;
SIGNAL \L2|L0|Add0~113_sumout\ : std_logic;
SIGNAL \L2|L0|cont0[6]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|Add0~114\ : std_logic;
SIGNAL \L2|L0|Add0~45_sumout\ : std_logic;
SIGNAL \L2|L0|cont0[7]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|Add0~46\ : std_logic;
SIGNAL \L2|L0|Add0~41_sumout\ : std_logic;
SIGNAL \L2|L0|cont0[8]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|Add0~42\ : std_logic;
SIGNAL \L2|L0|Add0~37_sumout\ : std_logic;
SIGNAL \L2|L0|cont0[9]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|Add0~38\ : std_logic;
SIGNAL \L2|L0|Add0~33_sumout\ : std_logic;
SIGNAL \L2|L0|Add0~34\ : std_logic;
SIGNAL \L2|L0|Add0~29_sumout\ : std_logic;
SIGNAL \L2|L0|cont0[11]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|Add0~30\ : std_logic;
SIGNAL \L2|L0|Add0~25_sumout\ : std_logic;
SIGNAL \L2|L0|cont0[12]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|Add0~26\ : std_logic;
SIGNAL \L2|L0|Add0~21_sumout\ : std_logic;
SIGNAL \L2|L0|cont0[13]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|Add0~22\ : std_logic;
SIGNAL \L2|L0|Add0~17_sumout\ : std_logic;
SIGNAL \L2|L0|Add0~18\ : std_logic;
SIGNAL \L2|L0|Add0~13_sumout\ : std_logic;
SIGNAL \L2|L0|cont0[15]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|Add0~14\ : std_logic;
SIGNAL \L2|L0|Add0~9_sumout\ : std_logic;
SIGNAL \L2|L0|cont0[16]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|Add0~10\ : std_logic;
SIGNAL \L2|L0|Add0~5_sumout\ : std_logic;
SIGNAL \L2|L0|Add0~6\ : std_logic;
SIGNAL \L2|L0|Add0~1_sumout\ : std_logic;
SIGNAL \L2|L0|cont0[18]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|Add0~2\ : std_logic;
SIGNAL \L2|L0|Add0~49_sumout\ : std_logic;
SIGNAL \L2|L0|cont0[19]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|Add0~50\ : std_logic;
SIGNAL \L2|L0|Add0~53_sumout\ : std_logic;
SIGNAL \L2|L0|Add0~54\ : std_logic;
SIGNAL \L2|L0|Add0~57_sumout\ : std_logic;
SIGNAL \L2|L0|cont0[21]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|Add0~58\ : std_logic;
SIGNAL \L2|L0|Add0~61_sumout\ : std_logic;
SIGNAL \L2|L0|Add0~62\ : std_logic;
SIGNAL \L2|L0|Add0~65_sumout\ : std_logic;
SIGNAL \L2|L0|Add0~66\ : std_logic;
SIGNAL \L2|L0|Add0~69_sumout\ : std_logic;
SIGNAL \L2|L0|Add0~70\ : std_logic;
SIGNAL \L2|L0|Add0~73_sumout\ : std_logic;
SIGNAL \L2|L0|Add0~74\ : std_logic;
SIGNAL \L2|L0|Add0~77_sumout\ : std_logic;
SIGNAL \L2|L0|Add0~78\ : std_logic;
SIGNAL \L2|L0|Add0~81_sumout\ : std_logic;
SIGNAL \L2|L0|Add0~82\ : std_logic;
SIGNAL \L2|L0|Add0~85_sumout\ : std_logic;
SIGNAL \L2|L0|Add0~86\ : std_logic;
SIGNAL \L2|L0|Add0~89_sumout\ : std_logic;
SIGNAL \L2|L0|Add0~90\ : std_logic;
SIGNAL \L2|L0|Add0~93_sumout\ : std_logic;
SIGNAL \L2|L0|Equal0~3_combout\ : std_logic;
SIGNAL \L2|L0|cont0[5]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|cont0[2]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|cont0[1]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|Add0~94\ : std_logic;
SIGNAL \L2|L0|Add0~97_sumout\ : std_logic;
SIGNAL \L2|L0|cont0[31]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|cont0[0]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|Equal0~4_combout\ : std_logic;
SIGNAL \L2|L0|Equal0~1_combout\ : std_logic;
SIGNAL \L2|L0|cont0[4]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|Equal0~5_combout\ : std_logic;
SIGNAL \L2|L0|Equal0~0_combout\ : std_logic;
SIGNAL \L2|L0|Equal0~2_combout\ : std_logic;
SIGNAL \L2|L0|Equal0~6_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \L2|L16|Equal2~0_combout\ : std_logic;
SIGNAL \L2|L16|Equal1~0_combout\ : std_logic;
SIGNAL \L2|L0|Add1~33_sumout\ : std_logic;
SIGNAL \L2|L0|Add1~34\ : std_logic;
SIGNAL \L2|L0|Add1~37_sumout\ : std_logic;
SIGNAL \L2|L0|Add1~38\ : std_logic;
SIGNAL \L2|L0|Add1~41_sumout\ : std_logic;
SIGNAL \L2|L0|Add1~42\ : std_logic;
SIGNAL \L2|L0|Add1~45_sumout\ : std_logic;
SIGNAL \L2|L0|cont1[3]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|Add1~46\ : std_logic;
SIGNAL \L2|L0|Add1~1_sumout\ : std_logic;
SIGNAL \L2|L0|Add1~2\ : std_logic;
SIGNAL \L2|L0|Add1~49_sumout\ : std_logic;
SIGNAL \L2|L0|Add1~50\ : std_logic;
SIGNAL \L2|L0|Add1~53_sumout\ : std_logic;
SIGNAL \L2|L0|Add1~54\ : std_logic;
SIGNAL \L2|L0|Add1~57_sumout\ : std_logic;
SIGNAL \L2|L0|Add1~58\ : std_logic;
SIGNAL \L2|L0|Add1~61_sumout\ : std_logic;
SIGNAL \L2|L0|Add1~62\ : std_logic;
SIGNAL \L2|L0|Add1~65_sumout\ : std_logic;
SIGNAL \L2|L0|Add1~66\ : std_logic;
SIGNAL \L2|L0|Add1~73_sumout\ : std_logic;
SIGNAL \L2|L0|Add1~74\ : std_logic;
SIGNAL \L2|L0|Add1~69_sumout\ : std_logic;
SIGNAL \L2|L0|Add1~70\ : std_logic;
SIGNAL \L2|L0|Add1~109_sumout\ : std_logic;
SIGNAL \L2|L0|Add1~110\ : std_logic;
SIGNAL \L2|L0|Add1~105_sumout\ : std_logic;
SIGNAL \L2|L0|Add1~106\ : std_logic;
SIGNAL \L2|L0|Add1~101_sumout\ : std_logic;
SIGNAL \L2|L0|Add1~102\ : std_logic;
SIGNAL \L2|L0|Add1~97_sumout\ : std_logic;
SIGNAL \L2|L0|Add1~98\ : std_logic;
SIGNAL \L2|L0|Add1~93_sumout\ : std_logic;
SIGNAL \L2|L0|cont1[16]~feeder_combout\ : std_logic;
SIGNAL \L2|L0|cont1[16]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|Add1~94\ : std_logic;
SIGNAL \L2|L0|Add1~89_sumout\ : std_logic;
SIGNAL \L2|L0|cont1[17]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|Add1~90\ : std_logic;
SIGNAL \L2|L0|Add1~85_sumout\ : std_logic;
SIGNAL \L2|L0|cont1[18]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|Add1~86\ : std_logic;
SIGNAL \L2|L0|Add1~81_sumout\ : std_logic;
SIGNAL \L2|L0|Add1~82\ : std_logic;
SIGNAL \L2|L0|Add1~77_sumout\ : std_logic;
SIGNAL \L2|L0|Add1~78\ : std_logic;
SIGNAL \L2|L0|Add1~25_sumout\ : std_logic;
SIGNAL \L2|L0|Add1~26\ : std_logic;
SIGNAL \L2|L0|Add1~29_sumout\ : std_logic;
SIGNAL \L2|L0|Add1~30\ : std_logic;
SIGNAL \L2|L0|Add1~21_sumout\ : std_logic;
SIGNAL \L2|L0|Add1~22\ : std_logic;
SIGNAL \L2|L0|Add1~17_sumout\ : std_logic;
SIGNAL \L2|L0|cont1[24]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|Add1~18\ : std_logic;
SIGNAL \L2|L0|Add1~13_sumout\ : std_logic;
SIGNAL \L2|L0|Add1~14\ : std_logic;
SIGNAL \L2|L0|Add1~9_sumout\ : std_logic;
SIGNAL \L2|L0|Add1~10\ : std_logic;
SIGNAL \L2|L0|Add1~5_sumout\ : std_logic;
SIGNAL \L2|L0|Equal1~0_combout\ : std_logic;
SIGNAL \L2|L0|Equal1~2_combout\ : std_logic;
SIGNAL \L2|L0|Equal1~4_combout\ : std_logic;
SIGNAL \L2|L0|Equal1~1_combout\ : std_logic;
SIGNAL \L2|L0|Equal1~3_combout\ : std_logic;
SIGNAL \L2|L0|Equal1~5_combout\ : std_logic;
SIGNAL \L2|L16|C[3]~1_combout\ : std_logic;
SIGNAL \L2|L0|Add2~9_sumout\ : std_logic;
SIGNAL \L2|L0|Add2~10\ : std_logic;
SIGNAL \L2|L0|Add2~13_sumout\ : std_logic;
SIGNAL \L2|L0|Add2~14\ : std_logic;
SIGNAL \L2|L0|Add2~17_sumout\ : std_logic;
SIGNAL \L2|L0|cont2[0]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|Add2~18\ : std_logic;
SIGNAL \L2|L0|Add2~21_sumout\ : std_logic;
SIGNAL \L2|L0|Add2~22\ : std_logic;
SIGNAL \L2|L0|Add2~25_sumout\ : std_logic;
SIGNAL \L2|L0|cont2[4]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|Add2~26\ : std_logic;
SIGNAL \L2|L0|Add2~29_sumout\ : std_logic;
SIGNAL \L2|L0|Add2~30\ : std_logic;
SIGNAL \L2|L0|Add2~33_sumout\ : std_logic;
SIGNAL \L2|L0|Add2~34\ : std_logic;
SIGNAL \L2|L0|Add2~37_sumout\ : std_logic;
SIGNAL \L2|L0|Add2~38\ : std_logic;
SIGNAL \L2|L0|Add2~41_sumout\ : std_logic;
SIGNAL \L2|L0|Add2~42\ : std_logic;
SIGNAL \L2|L0|Add2~45_sumout\ : std_logic;
SIGNAL \L2|L0|Add2~46\ : std_logic;
SIGNAL \L2|L0|Add2~1_sumout\ : std_logic;
SIGNAL \L2|L0|Add2~2\ : std_logic;
SIGNAL \L2|L0|Add2~49_sumout\ : std_logic;
SIGNAL \L2|L0|Add2~50\ : std_logic;
SIGNAL \L2|L0|Add2~53_sumout\ : std_logic;
SIGNAL \L2|L0|Add2~54\ : std_logic;
SIGNAL \L2|L0|Add2~109_sumout\ : std_logic;
SIGNAL \L2|L0|Add2~110\ : std_logic;
SIGNAL \L2|L0|Add2~57_sumout\ : std_logic;
SIGNAL \L2|L0|Add2~58\ : std_logic;
SIGNAL \L2|L0|Add2~105_sumout\ : std_logic;
SIGNAL \L2|L0|Add2~106\ : std_logic;
SIGNAL \L2|L0|Add2~101_sumout\ : std_logic;
SIGNAL \L2|L0|Add2~102\ : std_logic;
SIGNAL \L2|L0|Add2~97_sumout\ : std_logic;
SIGNAL \L2|L0|cont2[17]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|Add2~98\ : std_logic;
SIGNAL \L2|L0|Add2~93_sumout\ : std_logic;
SIGNAL \L2|L0|Add2~94\ : std_logic;
SIGNAL \L2|L0|Add2~89_sumout\ : std_logic;
SIGNAL \L2|L0|Add2~90\ : std_logic;
SIGNAL \L2|L0|Add2~85_sumout\ : std_logic;
SIGNAL \L2|L0|Add2~86\ : std_logic;
SIGNAL \L2|L0|Add2~81_sumout\ : std_logic;
SIGNAL \L2|L0|Add2~82\ : std_logic;
SIGNAL \L2|L0|Add2~77_sumout\ : std_logic;
SIGNAL \L2|L0|Add2~78\ : std_logic;
SIGNAL \L2|L0|Add2~73_sumout\ : std_logic;
SIGNAL \L2|L0|Add2~74\ : std_logic;
SIGNAL \L2|L0|Add2~69_sumout\ : std_logic;
SIGNAL \L2|L0|Add2~70\ : std_logic;
SIGNAL \L2|L0|Add2~65_sumout\ : std_logic;
SIGNAL \L2|L0|Add2~66\ : std_logic;
SIGNAL \L2|L0|Add2~5_sumout\ : std_logic;
SIGNAL \L2|L0|Equal2~0_combout\ : std_logic;
SIGNAL \L2|L0|Equal2~1_combout\ : std_logic;
SIGNAL \L2|L0|Equal2~3_combout\ : std_logic;
SIGNAL \L2|L0|Add2~6\ : std_logic;
SIGNAL \L2|L0|Add2~61_sumout\ : std_logic;
SIGNAL \L2|L0|Equal2~2_combout\ : std_logic;
SIGNAL \L2|L0|Equal2~4_combout\ : std_logic;
SIGNAL \L2|L0|Equal2~5_combout\ : std_logic;
SIGNAL \L2|L0|Add3~65_sumout\ : std_logic;
SIGNAL \L2|L0|Add3~66\ : std_logic;
SIGNAL \L2|L0|Add3~1_sumout\ : std_logic;
SIGNAL \L2|L0|Add3~2\ : std_logic;
SIGNAL \L2|L0|Add3~45_sumout\ : std_logic;
SIGNAL \L2|L0|Add3~46\ : std_logic;
SIGNAL \L2|L0|Add3~41_sumout\ : std_logic;
SIGNAL \L2|L0|Add3~42\ : std_logic;
SIGNAL \L2|L0|Add3~37_sumout\ : std_logic;
SIGNAL \L2|L0|Add3~38\ : std_logic;
SIGNAL \L2|L0|Add3~33_sumout\ : std_logic;
SIGNAL \L2|L0|Add3~34\ : std_logic;
SIGNAL \L2|L0|Add3~29_sumout\ : std_logic;
SIGNAL \L2|L0|Equal3~1_combout\ : std_logic;
SIGNAL \L2|L0|Add3~30\ : std_logic;
SIGNAL \L2|L0|Add3~25_sumout\ : std_logic;
SIGNAL \L2|L0|Add3~26\ : std_logic;
SIGNAL \L2|L0|Add3~21_sumout\ : std_logic;
SIGNAL \L2|L0|Add3~22\ : std_logic;
SIGNAL \L2|L0|Add3~17_sumout\ : std_logic;
SIGNAL \L2|L0|Add3~18\ : std_logic;
SIGNAL \L2|L0|Add3~13_sumout\ : std_logic;
SIGNAL \L2|L0|cont3[10]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|Add3~14\ : std_logic;
SIGNAL \L2|L0|Add3~5_sumout\ : std_logic;
SIGNAL \L2|L0|Add3~6\ : std_logic;
SIGNAL \L2|L0|Add3~49_sumout\ : std_logic;
SIGNAL \L2|L0|Add3~50\ : std_logic;
SIGNAL \L2|L0|Add3~53_sumout\ : std_logic;
SIGNAL \L2|L0|Add3~54\ : std_logic;
SIGNAL \L2|L0|Add3~9_sumout\ : std_logic;
SIGNAL \L2|L0|Equal3~0_combout\ : std_logic;
SIGNAL \L2|L0|cont3[1]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|cont3[27]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|Add3~10\ : std_logic;
SIGNAL \L2|L0|Add3~61_sumout\ : std_logic;
SIGNAL \L2|L0|Add3~62\ : std_logic;
SIGNAL \L2|L0|Add3~109_sumout\ : std_logic;
SIGNAL \L2|L0|cont3[16]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|Add3~110\ : std_logic;
SIGNAL \L2|L0|Add3~57_sumout\ : std_logic;
SIGNAL \L2|L0|cont3[17]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|Add3~58\ : std_logic;
SIGNAL \L2|L0|Add3~105_sumout\ : std_logic;
SIGNAL \L2|L0|Add3~106\ : std_logic;
SIGNAL \L2|L0|Add3~101_sumout\ : std_logic;
SIGNAL \L2|L0|Add3~102\ : std_logic;
SIGNAL \L2|L0|Add3~97_sumout\ : std_logic;
SIGNAL \L2|L0|Add3~98\ : std_logic;
SIGNAL \L2|L0|Add3~93_sumout\ : std_logic;
SIGNAL \L2|L0|cont3[21]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|Add3~94\ : std_logic;
SIGNAL \L2|L0|Add3~89_sumout\ : std_logic;
SIGNAL \L2|L0|Add3~90\ : std_logic;
SIGNAL \L2|L0|Add3~85_sumout\ : std_logic;
SIGNAL \L2|L0|Add3~86\ : std_logic;
SIGNAL \L2|L0|Add3~81_sumout\ : std_logic;
SIGNAL \L2|L0|Add3~82\ : std_logic;
SIGNAL \L2|L0|Add3~77_sumout\ : std_logic;
SIGNAL \L2|L0|Add3~78\ : std_logic;
SIGNAL \L2|L0|Add3~73_sumout\ : std_logic;
SIGNAL \L2|L0|Add3~74\ : std_logic;
SIGNAL \L2|L0|Add3~69_sumout\ : std_logic;
SIGNAL \L2|L0|Equal3~2_combout\ : std_logic;
SIGNAL \L2|L0|Equal3~3_combout\ : std_logic;
SIGNAL \L2|L0|Equal3~4_combout\ : std_logic;
SIGNAL \L2|L0|Equal3~5_combout\ : std_logic;
SIGNAL \L2|L1|C~1_combout\ : std_logic;
SIGNAL \L2|L1|C~0_combout\ : std_logic;
SIGNAL \L2|L1|C~combout\ : std_logic;
SIGNAL \L2|L3|aux_saida[0]~3_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \L2|L8|saida[2]~0_combout\ : std_logic;
SIGNAL \L2|L8|saida[0]~1_combout\ : std_logic;
SIGNAL \L2|L4|Mux6~0_combout\ : std_logic;
SIGNAL \L2|L6|Mux6~0_combout\ : std_logic;
SIGNAL \L2|L8|saida[1]~2_combout\ : std_logic;
SIGNAL \L2|L8|saida[3]~3_combout\ : std_logic;
SIGNAL \L2|L8|saida[0]~7_combout\ : std_logic;
SIGNAL \L2|Ltemp1|F[0]~0_combout\ : std_logic;
SIGNAL \L2|Ltemp1|F[1]~1_combout\ : std_logic;
SIGNAL \L2|Ltemp1|F[2]~2_combout\ : std_logic;
SIGNAL \L2|Ltemp1|F[3]~3_combout\ : std_logic;
SIGNAL \L2|Ltemp1|F[4]~4_combout\ : std_logic;
SIGNAL \L2|Ltemp1|F[5]~5_combout\ : std_logic;
SIGNAL \L2|Ltemp1|F[6]~6_combout\ : std_logic;
SIGNAL \L2|L6|Mux0~0_combout\ : std_logic;
SIGNAL \L2|L6|Mux1~0_combout\ : std_logic;
SIGNAL \L2|L8|saida[4]~4_combout\ : std_logic;
SIGNAL \L2|L8|saida[5]~6_combout\ : std_logic;
SIGNAL \L2|Ltemp|F[0]~0_combout\ : std_logic;
SIGNAL \L2|Ltemp|F[1]~1_combout\ : std_logic;
SIGNAL \L2|Ltemp|F[2]~2_combout\ : std_logic;
SIGNAL \L2|L6|Mux1~1_combout\ : std_logic;
SIGNAL \L2|Ltemp|F[3]~3_combout\ : std_logic;
SIGNAL \L2|Ltemp|F[4]~4_combout\ : std_logic;
SIGNAL \L2|Ltemp|F[5]~5_combout\ : std_logic;
SIGNAL \L2|Ltemp|F[6]~6_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \L2|L8|saida[6]~5_combout\ : std_logic;
SIGNAL \L2|L13|Equal0~1_combout\ : std_logic;
SIGNAL \L2|L14|aux_saida[0]~3_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \L2|L13|Equal0~2_combout\ : std_logic;
SIGNAL \L2|L13|Equal0~6_combout\ : std_logic;
SIGNAL \L2|L13|Equal0~0_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \L2|L13|Equal0~3_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \L2|L13|Equal0~4_combout\ : std_logic;
SIGNAL \L2|L14|aux_saida~0_combout\ : std_logic;
SIGNAL \L2|L14|aux_saida~2_combout\ : std_logic;
SIGNAL \L2|L13|Equal0~5_combout\ : std_logic;
SIGNAL \L2|L14|aux_saida[2]~1_combout\ : std_logic;
SIGNAL \L2|L16|C[3]~3_combout\ : std_logic;
SIGNAL \L2|L175|saida[3]~feeder_combout\ : std_logic;
SIGNAL \L2|L16|C[1]~4_combout\ : std_logic;
SIGNAL \L2|L175|saida[1]~feeder_combout\ : std_logic;
SIGNAL \L2|L16|C[2]~2_combout\ : std_logic;
SIGNAL \L2|L175|saida[2]~feeder_combout\ : std_logic;
SIGNAL \L2|L19|Equal14~0_combout\ : std_logic;
SIGNAL \L2|L19|F[1]~0_combout\ : std_logic;
SIGNAL \L2|L19|F[2]~1_combout\ : std_logic;
SIGNAL \L2|L19|F[3]~2_combout\ : std_logic;
SIGNAL \L2|L19|Equal14~1_combout\ : std_logic;
SIGNAL \L2|L19|F[6]~3_combout\ : std_logic;
SIGNAL \L2|L16|C[7]~5_combout\ : std_logic;
SIGNAL \L2|L175|saida[7]~feeder_combout\ : std_logic;
SIGNAL \L2|L16|C[4]~8_combout\ : std_logic;
SIGNAL \L2|L175|saida[4]~feeder_combout\ : std_logic;
SIGNAL \L2|L16|C[6]~7_combout\ : std_logic;
SIGNAL \L2|L175|saida[6]~feeder_combout\ : std_logic;
SIGNAL \L2|L16|C[5]~6_combout\ : std_logic;
SIGNAL \L2|L175|saida[5]~feeder_combout\ : std_logic;
SIGNAL \L2|L18|F[0]~0_combout\ : std_logic;
SIGNAL \L2|L18|F[1]~1_combout\ : std_logic;
SIGNAL \L2|L18|F[2]~2_combout\ : std_logic;
SIGNAL \L2|L18|F[3]~3_combout\ : std_logic;
SIGNAL \L2|L18|F[4]~4_combout\ : std_logic;
SIGNAL \L2|L18|F[5]~5_combout\ : std_logic;
SIGNAL \L2|L18|F[6]~6_combout\ : std_logic;
SIGNAL \L2|L2|F[0]~0_combout\ : std_logic;
SIGNAL \L2|L16|C[7]~0_combout\ : std_logic;
SIGNAL \L2|L15|Equal10~0_combout\ : std_logic;
SIGNAL \L2|L15|F[9]~0_combout\ : std_logic;
SIGNAL \L2|L15|comb~0_combout\ : std_logic;
SIGNAL \L2|L15|comb~17_combout\ : std_logic;
SIGNAL \L2|L15|F[2]~1_combout\ : std_logic;
SIGNAL \L2|L15|comb~2_combout\ : std_logic;
SIGNAL \L2|L15|comb~1_combout\ : std_logic;
SIGNAL \L2|L15|comb~3_combout\ : std_logic;
SIGNAL \L2|L15|comb~16_combout\ : std_logic;
SIGNAL \L2|L15|comb~4_combout\ : std_logic;
SIGNAL \L2|L15|F[4]~2_combout\ : std_logic;
SIGNAL \L2|L15|comb~6_combout\ : std_logic;
SIGNAL \L2|L15|comb~5_combout\ : std_logic;
SIGNAL \L2|L15|comb~7_combout\ : std_logic;
SIGNAL \L2|L15|comb~15_combout\ : std_logic;
SIGNAL \L2|L15|comb~14_combout\ : std_logic;
SIGNAL \L2|L15|comb~13_combout\ : std_logic;
SIGNAL \L2|L15|comb~8_combout\ : std_logic;
SIGNAL \L2|L15|comb~12_combout\ : std_logic;
SIGNAL \L2|L15|comb~11_combout\ : std_logic;
SIGNAL \L2|L15|comb~9_combout\ : std_logic;
SIGNAL \L2|L15|comb~10_combout\ : std_logic;
SIGNAL \L2|L15|F\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \L2|L12|saida\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \L2|L0|cont3\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \L2|L3|aux_saida\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \L2|L175|saida\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \L2|L0|cont1\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \L2|L0|cont0\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \L2|L9|aux_saida\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \L2|L0|cont2\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \L2|L17|saida\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \L2|L14|aux_saida\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \L2|L0|C\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \L2|L0|ALT_INV_cont1\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \L2|L0|ALT_INV_cont2\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \L2|L0|ALT_INV_cont3\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \L2|L0|ALT_INV_cont0[4]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|ALT_INV_cont0[5]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|ALT_INV_cont0[6]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|ALT_INV_cont0[2]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|ALT_INV_cont0[1]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|ALT_INV_cont0[0]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|ALT_INV_cont0[31]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|ALT_INV_cont0[21]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|ALT_INV_cont0[19]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|ALT_INV_cont0[7]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|ALT_INV_cont0[8]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|ALT_INV_cont0[9]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|ALT_INV_cont0[11]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|ALT_INV_cont0[12]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|ALT_INV_cont0[13]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|ALT_INV_cont0[15]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|ALT_INV_cont0[16]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|ALT_INV_cont0[18]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|ALT_INV_cont1[16]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|ALT_INV_cont1[17]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|ALT_INV_cont1[18]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|ALT_INV_cont1[3]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|ALT_INV_cont1[24]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|ALT_INV_cont2[17]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|ALT_INV_cont2[4]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|ALT_INV_cont2[0]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|ALT_INV_cont3[16]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|ALT_INV_cont3[21]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|ALT_INV_cont3[27]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|ALT_INV_cont3[17]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|ALT_INV_cont3[10]~DUPLICATE_q\ : std_logic;
SIGNAL \L2|L0|ALT_INV_cont3[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \L2|L15|ALT_INV_F\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \L2|L8|ALT_INV_saida[0]~7_combout\ : std_logic;
SIGNAL \L2|L15|ALT_INV_comb~17_combout\ : std_logic;
SIGNAL \L2|L15|ALT_INV_comb~16_combout\ : std_logic;
SIGNAL \L2|L15|ALT_INV_comb~15_combout\ : std_logic;
SIGNAL \L2|L15|ALT_INV_comb~14_combout\ : std_logic;
SIGNAL \L2|L15|ALT_INV_comb~13_combout\ : std_logic;
SIGNAL \L2|L15|ALT_INV_comb~12_combout\ : std_logic;
SIGNAL \L2|L15|ALT_INV_comb~11_combout\ : std_logic;
SIGNAL \L2|L15|ALT_INV_comb~10_combout\ : std_logic;
SIGNAL \L2|L13|ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \L2|L0|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \L2|L0|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \L2|L0|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \L2|L0|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \L2|L0|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \L2|L0|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \L2|L0|ALT_INV_Equal1~4_combout\ : std_logic;
SIGNAL \L2|L0|ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \L2|L0|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \L2|L0|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \L2|L0|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \L2|L0|ALT_INV_Equal2~4_combout\ : std_logic;
SIGNAL \L2|L0|ALT_INV_Equal2~3_combout\ : std_logic;
SIGNAL \L2|L0|ALT_INV_Equal2~2_combout\ : std_logic;
SIGNAL \L2|L0|ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \L2|L0|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \L2|L0|ALT_INV_Equal3~4_combout\ : std_logic;
SIGNAL \L2|L0|ALT_INV_Equal3~3_combout\ : std_logic;
SIGNAL \L2|L0|ALT_INV_Equal3~2_combout\ : std_logic;
SIGNAL \L2|L0|ALT_INV_Equal3~1_combout\ : std_logic;
SIGNAL \L2|L0|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \L0|ALT_INV_btn1state.EsperaApertar~q\ : std_logic;
SIGNAL \L0|ALT_INV_btn0state.EsperaApertar~q\ : std_logic;
SIGNAL \L2|L13|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \L2|L13|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \L2|L12|ALT_INV_saida\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \L2|L13|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \L2|L13|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \L2|L13|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \L1|ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \L2|L3|ALT_INV_tc~q\ : std_logic;
SIGNAL \L2|L0|ALT_INV_C\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \L2|L1|ALT_INV_C~0_combout\ : std_logic;
SIGNAL \L2|L1|ALT_INV_C~1_combout\ : std_logic;
SIGNAL \L2|L16|ALT_INV_C[3]~1_combout\ : std_logic;
SIGNAL \L0|ALT_INV_btn1state.SaidaAtiva~q\ : std_logic;
SIGNAL \L0|ALT_INV_btn0state.SaidaAtiva~q\ : std_logic;
SIGNAL \L2|L15|ALT_INV_comb~9_combout\ : std_logic;
SIGNAL \L2|L15|ALT_INV_comb~8_combout\ : std_logic;
SIGNAL \L2|L15|ALT_INV_comb~7_combout\ : std_logic;
SIGNAL \L2|L15|ALT_INV_comb~6_combout\ : std_logic;
SIGNAL \L2|L15|ALT_INV_comb~5_combout\ : std_logic;
SIGNAL \L2|L15|ALT_INV_comb~4_combout\ : std_logic;
SIGNAL \L2|L15|ALT_INV_F[4]~2_combout\ : std_logic;
SIGNAL \L2|L15|ALT_INV_comb~3_combout\ : std_logic;
SIGNAL \L2|L15|ALT_INV_comb~2_combout\ : std_logic;
SIGNAL \L2|L15|ALT_INV_comb~1_combout\ : std_logic;
SIGNAL \L2|L15|ALT_INV_F[2]~1_combout\ : std_logic;
SIGNAL \L2|L15|ALT_INV_comb~0_combout\ : std_logic;
SIGNAL \L2|L15|ALT_INV_F[9]~0_combout\ : std_logic;
SIGNAL \L2|L15|ALT_INV_Equal10~0_combout\ : std_logic;
SIGNAL \L2|L14|ALT_INV_aux_saida\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \L2|L17|ALT_INV_saida\ : std_logic_vector(7 DOWNTO 1);
SIGNAL \L1|ALT_INV_estadoAtual.Result~q\ : std_logic;
SIGNAL \L2|L3|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \L1|ALT_INV_estadoAtual.Game~q\ : std_logic;
SIGNAL \L1|ALT_INV_estadoAtual.Setup~q\ : std_logic;
SIGNAL \L1|ALT_INV_estadoAtual.Init~q\ : std_logic;
SIGNAL \L2|L16|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \L2|L16|ALT_INV_C[7]~0_combout\ : std_logic;
SIGNAL \L2|L16|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \L2|L18|ALT_INV_F[6]~6_combout\ : std_logic;
SIGNAL \L2|L175|ALT_INV_saida\ : std_logic_vector(7 DOWNTO 1);
SIGNAL \L2|L19|ALT_INV_F[6]~3_combout\ : std_logic;
SIGNAL \L2|Ltemp|ALT_INV_F[6]~6_combout\ : std_logic;
SIGNAL \L2|L6|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \L2|L6|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \L2|L8|ALT_INV_saida[5]~6_combout\ : std_logic;
SIGNAL \L2|L6|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \L2|L8|ALT_INV_saida[6]~5_combout\ : std_logic;
SIGNAL \L2|L8|ALT_INV_saida[4]~4_combout\ : std_logic;
SIGNAL \L2|Ltemp1|ALT_INV_F[6]~6_combout\ : std_logic;
SIGNAL \L2|L8|ALT_INV_saida[3]~3_combout\ : std_logic;
SIGNAL \L2|L8|ALT_INV_saida[1]~2_combout\ : std_logic;
SIGNAL \L2|L4|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \L2|L6|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \L2|L8|ALT_INV_saida[0]~1_combout\ : std_logic;
SIGNAL \L2|L8|ALT_INV_saida[2]~0_combout\ : std_logic;
SIGNAL \L2|L3|ALT_INV_aux_saida\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \L2|L9|ALT_INV_aux_saida\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \L2|L0|ALT_INV_Add1~93_sumout\ : std_logic;
SIGNAL \L2|L0|ALT_INV_cont0\ : std_logic_vector(31 DOWNTO 0);

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
ww_CLOCK_50 <= CLOCK_50;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\L2|L0|ALT_INV_cont1\(15) <= NOT \L2|L0|cont1\(15);
\L2|L0|ALT_INV_cont1\(16) <= NOT \L2|L0|cont1\(16);
\L2|L0|ALT_INV_cont1\(17) <= NOT \L2|L0|cont1\(17);
\L2|L0|ALT_INV_cont1\(18) <= NOT \L2|L0|cont1\(18);
\L2|L0|ALT_INV_cont1\(19) <= NOT \L2|L0|cont1\(19);
\L2|L0|ALT_INV_cont1\(20) <= NOT \L2|L0|cont1\(20);
\L2|L0|ALT_INV_cont1\(10) <= NOT \L2|L0|cont1\(10);
\L2|L0|ALT_INV_cont1\(11) <= NOT \L2|L0|cont1\(11);
\L2|L0|ALT_INV_cont1\(9) <= NOT \L2|L0|cont1\(9);
\L2|L0|ALT_INV_cont1\(8) <= NOT \L2|L0|cont1\(8);
\L2|L0|ALT_INV_cont1\(7) <= NOT \L2|L0|cont1\(7);
\L2|L0|ALT_INV_cont1\(6) <= NOT \L2|L0|cont1\(6);
\L2|L0|ALT_INV_cont1\(5) <= NOT \L2|L0|cont1\(5);
\L2|L0|ALT_INV_cont1\(3) <= NOT \L2|L0|cont1\(3);
\L2|L0|ALT_INV_cont1\(2) <= NOT \L2|L0|cont1\(2);
\L2|L0|ALT_INV_cont1\(1) <= NOT \L2|L0|cont1\(1);
\L2|L0|ALT_INV_cont1\(0) <= NOT \L2|L0|cont1\(0);
\L2|L0|ALT_INV_cont1\(22) <= NOT \L2|L0|cont1\(22);
\L2|L0|ALT_INV_cont1\(21) <= NOT \L2|L0|cont1\(21);
\L2|L0|ALT_INV_cont1\(23) <= NOT \L2|L0|cont1\(23);
\L2|L0|ALT_INV_cont1\(24) <= NOT \L2|L0|cont1\(24);
\L2|L0|ALT_INV_cont1\(25) <= NOT \L2|L0|cont1\(25);
\L2|L0|ALT_INV_cont1\(26) <= NOT \L2|L0|cont1\(26);
\L2|L0|ALT_INV_cont1\(27) <= NOT \L2|L0|cont1\(27);
\L2|L0|ALT_INV_cont1\(4) <= NOT \L2|L0|cont1\(4);
\L2|L0|ALT_INV_cont2\(13) <= NOT \L2|L0|cont2\(13);
\L2|L0|ALT_INV_cont2\(15) <= NOT \L2|L0|cont2\(15);
\L2|L0|ALT_INV_cont2\(16) <= NOT \L2|L0|cont2\(16);
\L2|L0|ALT_INV_cont2\(17) <= NOT \L2|L0|cont2\(17);
\L2|L0|ALT_INV_cont2\(18) <= NOT \L2|L0|cont2\(18);
\L2|L0|ALT_INV_cont2\(19) <= NOT \L2|L0|cont2\(19);
\L2|L0|ALT_INV_cont2\(20) <= NOT \L2|L0|cont2\(20);
\L2|L0|ALT_INV_cont2\(21) <= NOT \L2|L0|cont2\(21);
\L2|L0|ALT_INV_cont2\(22) <= NOT \L2|L0|cont2\(22);
\L2|L0|ALT_INV_cont2\(23) <= NOT \L2|L0|cont2\(23);
\L2|L0|ALT_INV_cont2\(24) <= NOT \L2|L0|cont2\(24);
\L2|L0|ALT_INV_cont2\(25) <= NOT \L2|L0|cont2\(25);
\L2|L0|ALT_INV_cont2\(27) <= NOT \L2|L0|cont2\(27);
\L2|L0|ALT_INV_cont2\(14) <= NOT \L2|L0|cont2\(14);
\L2|L0|ALT_INV_cont2\(12) <= NOT \L2|L0|cont2\(12);
\L2|L0|ALT_INV_cont2\(11) <= NOT \L2|L0|cont2\(11);
\L2|L0|ALT_INV_cont2\(9) <= NOT \L2|L0|cont2\(9);
\L2|L0|ALT_INV_cont2\(8) <= NOT \L2|L0|cont2\(8);
\L2|L0|ALT_INV_cont2\(7) <= NOT \L2|L0|cont2\(7);
\L2|L0|ALT_INV_cont2\(6) <= NOT \L2|L0|cont2\(6);
\L2|L0|ALT_INV_cont2\(5) <= NOT \L2|L0|cont2\(5);
\L2|L0|ALT_INV_cont2\(4) <= NOT \L2|L0|cont2\(4);
\L2|L0|ALT_INV_cont2\(3) <= NOT \L2|L0|cont2\(3);
\L2|L0|ALT_INV_cont2\(2) <= NOT \L2|L0|cont2\(2);
\L2|L0|ALT_INV_cont2\(1) <= NOT \L2|L0|cont2\(1);
\L2|L0|ALT_INV_cont2\(0) <= NOT \L2|L0|cont2\(0);
\L2|L0|ALT_INV_cont2\(26) <= NOT \L2|L0|cont2\(26);
\L2|L0|ALT_INV_cont2\(10) <= NOT \L2|L0|cont2\(10);
\L2|L0|ALT_INV_cont3\(16) <= NOT \L2|L0|cont3\(16);
\L2|L0|ALT_INV_cont3\(18) <= NOT \L2|L0|cont3\(18);
\L2|L0|ALT_INV_cont3\(19) <= NOT \L2|L0|cont3\(19);
\L2|L0|ALT_INV_cont3\(20) <= NOT \L2|L0|cont3\(20);
\L2|L0|ALT_INV_cont3\(21) <= NOT \L2|L0|cont3\(21);
\L2|L0|ALT_INV_cont3\(22) <= NOT \L2|L0|cont3\(22);
\L2|L0|ALT_INV_cont3\(23) <= NOT \L2|L0|cont3\(23);
\L2|L0|ALT_INV_cont3\(24) <= NOT \L2|L0|cont3\(24);
\L2|L0|ALT_INV_cont3\(25) <= NOT \L2|L0|cont3\(25);
\L2|L0|ALT_INV_cont3\(26) <= NOT \L2|L0|cont3\(26);
\L2|L0|ALT_INV_cont3\(27) <= NOT \L2|L0|cont3\(27);
\L2|L0|ALT_INV_cont3\(0) <= NOT \L2|L0|cont3\(0);
\L2|L0|ALT_INV_cont3\(15) <= NOT \L2|L0|cont3\(15);
\L2|L0|ALT_INV_cont3\(17) <= NOT \L2|L0|cont3\(17);
\L2|L0|ALT_INV_cont3\(13) <= NOT \L2|L0|cont3\(13);
\L2|L0|ALT_INV_cont3\(12) <= NOT \L2|L0|cont3\(12);
\L2|L0|ALT_INV_cont3\(2) <= NOT \L2|L0|cont3\(2);
\L2|L0|ALT_INV_cont3\(3) <= NOT \L2|L0|cont3\(3);
\L2|L0|ALT_INV_cont3\(4) <= NOT \L2|L0|cont3\(4);
\L2|L0|ALT_INV_cont3\(5) <= NOT \L2|L0|cont3\(5);
\L2|L0|ALT_INV_cont3\(6) <= NOT \L2|L0|cont3\(6);
\L2|L0|ALT_INV_cont3\(7) <= NOT \L2|L0|cont3\(7);
\L2|L0|ALT_INV_cont3\(8) <= NOT \L2|L0|cont3\(8);
\L2|L0|ALT_INV_cont3\(9) <= NOT \L2|L0|cont3\(9);
\L2|L0|ALT_INV_cont3\(10) <= NOT \L2|L0|cont3\(10);
\L2|L0|ALT_INV_cont3\(14) <= NOT \L2|L0|cont3\(14);
\L2|L0|ALT_INV_cont3\(11) <= NOT \L2|L0|cont3\(11);
\L2|L0|ALT_INV_cont3\(1) <= NOT \L2|L0|cont3\(1);
\L2|L0|ALT_INV_cont0[4]~DUPLICATE_q\ <= NOT \L2|L0|cont0[4]~DUPLICATE_q\;
\L2|L0|ALT_INV_cont0[5]~DUPLICATE_q\ <= NOT \L2|L0|cont0[5]~DUPLICATE_q\;
\L2|L0|ALT_INV_cont0[6]~DUPLICATE_q\ <= NOT \L2|L0|cont0[6]~DUPLICATE_q\;
\L2|L0|ALT_INV_cont0[2]~DUPLICATE_q\ <= NOT \L2|L0|cont0[2]~DUPLICATE_q\;
\L2|L0|ALT_INV_cont0[1]~DUPLICATE_q\ <= NOT \L2|L0|cont0[1]~DUPLICATE_q\;
\L2|L0|ALT_INV_cont0[0]~DUPLICATE_q\ <= NOT \L2|L0|cont0[0]~DUPLICATE_q\;
\L2|L0|ALT_INV_cont0[31]~DUPLICATE_q\ <= NOT \L2|L0|cont0[31]~DUPLICATE_q\;
\L2|L0|ALT_INV_cont0[21]~DUPLICATE_q\ <= NOT \L2|L0|cont0[21]~DUPLICATE_q\;
\L2|L0|ALT_INV_cont0[19]~DUPLICATE_q\ <= NOT \L2|L0|cont0[19]~DUPLICATE_q\;
\L2|L0|ALT_INV_cont0[7]~DUPLICATE_q\ <= NOT \L2|L0|cont0[7]~DUPLICATE_q\;
\L2|L0|ALT_INV_cont0[8]~DUPLICATE_q\ <= NOT \L2|L0|cont0[8]~DUPLICATE_q\;
\L2|L0|ALT_INV_cont0[9]~DUPLICATE_q\ <= NOT \L2|L0|cont0[9]~DUPLICATE_q\;
\L2|L0|ALT_INV_cont0[11]~DUPLICATE_q\ <= NOT \L2|L0|cont0[11]~DUPLICATE_q\;
\L2|L0|ALT_INV_cont0[12]~DUPLICATE_q\ <= NOT \L2|L0|cont0[12]~DUPLICATE_q\;
\L2|L0|ALT_INV_cont0[13]~DUPLICATE_q\ <= NOT \L2|L0|cont0[13]~DUPLICATE_q\;
\L2|L0|ALT_INV_cont0[15]~DUPLICATE_q\ <= NOT \L2|L0|cont0[15]~DUPLICATE_q\;
\L2|L0|ALT_INV_cont0[16]~DUPLICATE_q\ <= NOT \L2|L0|cont0[16]~DUPLICATE_q\;
\L2|L0|ALT_INV_cont0[18]~DUPLICATE_q\ <= NOT \L2|L0|cont0[18]~DUPLICATE_q\;
\L2|L0|ALT_INV_cont1[16]~DUPLICATE_q\ <= NOT \L2|L0|cont1[16]~DUPLICATE_q\;
\L2|L0|ALT_INV_cont1[17]~DUPLICATE_q\ <= NOT \L2|L0|cont1[17]~DUPLICATE_q\;
\L2|L0|ALT_INV_cont1[18]~DUPLICATE_q\ <= NOT \L2|L0|cont1[18]~DUPLICATE_q\;
\L2|L0|ALT_INV_cont1[3]~DUPLICATE_q\ <= NOT \L2|L0|cont1[3]~DUPLICATE_q\;
\L2|L0|ALT_INV_cont1[24]~DUPLICATE_q\ <= NOT \L2|L0|cont1[24]~DUPLICATE_q\;
\L2|L0|ALT_INV_cont2[17]~DUPLICATE_q\ <= NOT \L2|L0|cont2[17]~DUPLICATE_q\;
\L2|L0|ALT_INV_cont2[4]~DUPLICATE_q\ <= NOT \L2|L0|cont2[4]~DUPLICATE_q\;
\L2|L0|ALT_INV_cont2[0]~DUPLICATE_q\ <= NOT \L2|L0|cont2[0]~DUPLICATE_q\;
\L2|L0|ALT_INV_cont3[16]~DUPLICATE_q\ <= NOT \L2|L0|cont3[16]~DUPLICATE_q\;
\L2|L0|ALT_INV_cont3[21]~DUPLICATE_q\ <= NOT \L2|L0|cont3[21]~DUPLICATE_q\;
\L2|L0|ALT_INV_cont3[27]~DUPLICATE_q\ <= NOT \L2|L0|cont3[27]~DUPLICATE_q\;
\L2|L0|ALT_INV_cont3[17]~DUPLICATE_q\ <= NOT \L2|L0|cont3[17]~DUPLICATE_q\;
\L2|L0|ALT_INV_cont3[10]~DUPLICATE_q\ <= NOT \L2|L0|cont3[10]~DUPLICATE_q\;
\L2|L0|ALT_INV_cont3[1]~DUPLICATE_q\ <= NOT \L2|L0|cont3[1]~DUPLICATE_q\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\L2|L15|ALT_INV_F\(9) <= NOT \L2|L15|F\(9);
\L2|L15|ALT_INV_F\(8) <= NOT \L2|L15|F\(8);
\L2|L15|ALT_INV_F\(7) <= NOT \L2|L15|F\(7);
\L2|L15|ALT_INV_F\(6) <= NOT \L2|L15|F\(6);
\L2|L15|ALT_INV_F\(5) <= NOT \L2|L15|F\(5);
\L2|L15|ALT_INV_F\(4) <= NOT \L2|L15|F\(4);
\L2|L15|ALT_INV_F\(3) <= NOT \L2|L15|F\(3);
\L2|L15|ALT_INV_F\(2) <= NOT \L2|L15|F\(2);
\L2|L15|ALT_INV_F\(1) <= NOT \L2|L15|F\(1);
\L2|L15|ALT_INV_F\(0) <= NOT \L2|L15|F\(0);
\L2|L8|ALT_INV_saida[0]~7_combout\ <= NOT \L2|L8|saida[0]~7_combout\;
\L2|L15|ALT_INV_comb~17_combout\ <= NOT \L2|L15|comb~17_combout\;
\L2|L15|ALT_INV_comb~16_combout\ <= NOT \L2|L15|comb~16_combout\;
\L2|L15|ALT_INV_comb~15_combout\ <= NOT \L2|L15|comb~15_combout\;
\L2|L15|ALT_INV_comb~14_combout\ <= NOT \L2|L15|comb~14_combout\;
\L2|L15|ALT_INV_comb~13_combout\ <= NOT \L2|L15|comb~13_combout\;
\L2|L15|ALT_INV_comb~12_combout\ <= NOT \L2|L15|comb~12_combout\;
\L2|L15|ALT_INV_comb~11_combout\ <= NOT \L2|L15|comb~11_combout\;
\L2|L15|ALT_INV_comb~10_combout\ <= NOT \L2|L15|comb~10_combout\;
\L2|L13|ALT_INV_Equal0~6_combout\ <= NOT \L2|L13|Equal0~6_combout\;
\L2|L0|ALT_INV_Equal0~5_combout\ <= NOT \L2|L0|Equal0~5_combout\;
\L2|L0|ALT_INV_Equal0~4_combout\ <= NOT \L2|L0|Equal0~4_combout\;
\L2|L0|ALT_INV_Equal0~3_combout\ <= NOT \L2|L0|Equal0~3_combout\;
\L2|L0|ALT_INV_Equal0~2_combout\ <= NOT \L2|L0|Equal0~2_combout\;
\L2|L0|ALT_INV_Equal0~1_combout\ <= NOT \L2|L0|Equal0~1_combout\;
\L2|L0|ALT_INV_Equal0~0_combout\ <= NOT \L2|L0|Equal0~0_combout\;
\L2|L0|ALT_INV_Equal1~4_combout\ <= NOT \L2|L0|Equal1~4_combout\;
\L2|L0|ALT_INV_Equal1~3_combout\ <= NOT \L2|L0|Equal1~3_combout\;
\L2|L0|ALT_INV_Equal1~2_combout\ <= NOT \L2|L0|Equal1~2_combout\;
\L2|L0|ALT_INV_Equal1~1_combout\ <= NOT \L2|L0|Equal1~1_combout\;
\L2|L0|ALT_INV_Equal1~0_combout\ <= NOT \L2|L0|Equal1~0_combout\;
\L2|L0|ALT_INV_Equal2~4_combout\ <= NOT \L2|L0|Equal2~4_combout\;
\L2|L0|ALT_INV_Equal2~3_combout\ <= NOT \L2|L0|Equal2~3_combout\;
\L2|L0|ALT_INV_Equal2~2_combout\ <= NOT \L2|L0|Equal2~2_combout\;
\L2|L0|ALT_INV_Equal2~1_combout\ <= NOT \L2|L0|Equal2~1_combout\;
\L2|L0|ALT_INV_Equal2~0_combout\ <= NOT \L2|L0|Equal2~0_combout\;
\L2|L0|ALT_INV_Equal3~4_combout\ <= NOT \L2|L0|Equal3~4_combout\;
\L2|L0|ALT_INV_Equal3~3_combout\ <= NOT \L2|L0|Equal3~3_combout\;
\L2|L0|ALT_INV_Equal3~2_combout\ <= NOT \L2|L0|Equal3~2_combout\;
\L2|L0|ALT_INV_Equal3~1_combout\ <= NOT \L2|L0|Equal3~1_combout\;
\L2|L0|ALT_INV_Equal3~0_combout\ <= NOT \L2|L0|Equal3~0_combout\;
\L0|ALT_INV_btn1state.EsperaApertar~q\ <= NOT \L0|btn1state.EsperaApertar~q\;
\L0|ALT_INV_btn0state.EsperaApertar~q\ <= NOT \L0|btn0state.EsperaApertar~q\;
\L2|L13|ALT_INV_Equal0~5_combout\ <= NOT \L2|L13|Equal0~5_combout\;
\L2|L13|ALT_INV_Equal0~3_combout\ <= NOT \L2|L13|Equal0~3_combout\;
\L2|L12|ALT_INV_saida\(7) <= NOT \L2|L12|saida\(7);
\L2|L12|ALT_INV_saida\(1) <= NOT \L2|L12|saida\(1);
\L2|L13|ALT_INV_Equal0~2_combout\ <= NOT \L2|L13|Equal0~2_combout\;
\L2|L12|ALT_INV_saida\(5) <= NOT \L2|L12|saida\(5);
\L2|L12|ALT_INV_saida\(4) <= NOT \L2|L12|saida\(4);
\L2|L12|ALT_INV_saida\(2) <= NOT \L2|L12|saida\(2);
\L2|L13|ALT_INV_Equal0~1_combout\ <= NOT \L2|L13|Equal0~1_combout\;
\L2|L12|ALT_INV_saida\(6) <= NOT \L2|L12|saida\(6);
\L2|L12|ALT_INV_saida\(3) <= NOT \L2|L12|saida\(3);
\L2|L13|ALT_INV_Equal0~0_combout\ <= NOT \L2|L13|Equal0~0_combout\;
\L2|L12|ALT_INV_saida\(0) <= NOT \L2|L12|saida\(0);
\L1|ALT_INV_Selector2~0_combout\ <= NOT \L1|Selector2~0_combout\;
\L2|L3|ALT_INV_tc~q\ <= NOT \L2|L3|tc~q\;
\L2|L0|ALT_INV_C\(0) <= NOT \L2|L0|C\(0);
\L2|L1|ALT_INV_C~0_combout\ <= NOT \L2|L1|C~0_combout\;
\L2|L0|ALT_INV_C\(1) <= NOT \L2|L0|C\(1);
\L2|L1|ALT_INV_C~1_combout\ <= NOT \L2|L1|C~1_combout\;
\L2|L16|ALT_INV_C[3]~1_combout\ <= NOT \L2|L16|C[3]~1_combout\;
\L2|L0|ALT_INV_C\(2) <= NOT \L2|L0|C\(2);
\L2|L0|ALT_INV_C\(3) <= NOT \L2|L0|C\(3);
\L0|ALT_INV_btn1state.SaidaAtiva~q\ <= NOT \L0|btn1state.SaidaAtiva~q\;
\L0|ALT_INV_btn0state.SaidaAtiva~q\ <= NOT \L0|btn0state.SaidaAtiva~q\;
\L2|L15|ALT_INV_comb~9_combout\ <= NOT \L2|L15|comb~9_combout\;
\L2|L15|ALT_INV_comb~8_combout\ <= NOT \L2|L15|comb~8_combout\;
\L2|L15|ALT_INV_comb~7_combout\ <= NOT \L2|L15|comb~7_combout\;
\L2|L15|ALT_INV_comb~6_combout\ <= NOT \L2|L15|comb~6_combout\;
\L2|L15|ALT_INV_comb~5_combout\ <= NOT \L2|L15|comb~5_combout\;
\L2|L15|ALT_INV_comb~4_combout\ <= NOT \L2|L15|comb~4_combout\;
\L2|L15|ALT_INV_F[4]~2_combout\ <= NOT \L2|L15|F[4]~2_combout\;
\L2|L15|ALT_INV_comb~3_combout\ <= NOT \L2|L15|comb~3_combout\;
\L2|L15|ALT_INV_comb~2_combout\ <= NOT \L2|L15|comb~2_combout\;
\L2|L15|ALT_INV_comb~1_combout\ <= NOT \L2|L15|comb~1_combout\;
\L2|L15|ALT_INV_F[2]~1_combout\ <= NOT \L2|L15|F[2]~1_combout\;
\L2|L15|ALT_INV_comb~0_combout\ <= NOT \L2|L15|comb~0_combout\;
\L2|L15|ALT_INV_F[9]~0_combout\ <= NOT \L2|L15|F[9]~0_combout\;
\L2|L15|ALT_INV_Equal10~0_combout\ <= NOT \L2|L15|Equal10~0_combout\;
\L2|L14|ALT_INV_aux_saida\(1) <= NOT \L2|L14|aux_saida\(1);
\L2|L14|ALT_INV_aux_saida\(2) <= NOT \L2|L14|aux_saida\(2);
\L2|L14|ALT_INV_aux_saida\(3) <= NOT \L2|L14|aux_saida\(3);
\L2|L14|ALT_INV_aux_saida\(0) <= NOT \L2|L14|aux_saida\(0);
\L2|L17|ALT_INV_saida\(4) <= NOT \L2|L17|saida\(4);
\L2|L17|ALT_INV_saida\(6) <= NOT \L2|L17|saida\(6);
\L2|L17|ALT_INV_saida\(5) <= NOT \L2|L17|saida\(5);
\L2|L17|ALT_INV_saida\(7) <= NOT \L2|L17|saida\(7);
\L2|L17|ALT_INV_saida\(1) <= NOT \L2|L17|saida\(1);
\L2|L17|ALT_INV_saida\(3) <= NOT \L2|L17|saida\(3);
\L1|ALT_INV_estadoAtual.Result~q\ <= NOT \L1|estadoAtual.Result~q\;
\L2|L17|ALT_INV_saida\(2) <= NOT \L2|L17|saida\(2);
\L2|L3|ALT_INV_Equal0~0_combout\ <= NOT \L2|L3|Equal0~0_combout\;
\L1|ALT_INV_estadoAtual.Game~q\ <= NOT \L1|estadoAtual.Game~q\;
\L1|ALT_INV_estadoAtual.Setup~q\ <= NOT \L1|estadoAtual.Setup~q\;
\L1|ALT_INV_estadoAtual.Init~q\ <= NOT \L1|estadoAtual.Init~q\;
\L2|L16|ALT_INV_Equal2~0_combout\ <= NOT \L2|L16|Equal2~0_combout\;
\L2|L16|ALT_INV_C[7]~0_combout\ <= NOT \L2|L16|C[7]~0_combout\;
\L2|L16|ALT_INV_Equal1~0_combout\ <= NOT \L2|L16|Equal1~0_combout\;
\L2|L18|ALT_INV_F[6]~6_combout\ <= NOT \L2|L18|F[6]~6_combout\;
\L2|L175|ALT_INV_saida\(4) <= NOT \L2|L175|saida\(4);
\L2|L175|ALT_INV_saida\(6) <= NOT \L2|L175|saida\(6);
\L2|L175|ALT_INV_saida\(5) <= NOT \L2|L175|saida\(5);
\L2|L175|ALT_INV_saida\(7) <= NOT \L2|L175|saida\(7);
\L2|L19|ALT_INV_F[6]~3_combout\ <= NOT \L2|L19|F[6]~3_combout\;
\L2|L175|ALT_INV_saida\(1) <= NOT \L2|L175|saida\(1);
\L2|L175|ALT_INV_saida\(3) <= NOT \L2|L175|saida\(3);
\L2|L175|ALT_INV_saida\(2) <= NOT \L2|L175|saida\(2);
\L2|Ltemp|ALT_INV_F[6]~6_combout\ <= NOT \L2|Ltemp|F[6]~6_combout\;
\L2|L6|ALT_INV_Mux1~1_combout\ <= NOT \L2|L6|Mux1~1_combout\;
\L2|L6|ALT_INV_Mux0~0_combout\ <= NOT \L2|L6|Mux0~0_combout\;
\L2|L8|ALT_INV_saida[5]~6_combout\ <= NOT \L2|L8|saida[5]~6_combout\;
\L2|L6|ALT_INV_Mux1~0_combout\ <= NOT \L2|L6|Mux1~0_combout\;
\L2|L8|ALT_INV_saida[6]~5_combout\ <= NOT \L2|L8|saida[6]~5_combout\;
\L2|L8|ALT_INV_saida[4]~4_combout\ <= NOT \L2|L8|saida[4]~4_combout\;
\L2|Ltemp1|ALT_INV_F[6]~6_combout\ <= NOT \L2|Ltemp1|F[6]~6_combout\;
\L2|L8|ALT_INV_saida[3]~3_combout\ <= NOT \L2|L8|saida[3]~3_combout\;
\L2|L8|ALT_INV_saida[1]~2_combout\ <= NOT \L2|L8|saida[1]~2_combout\;
\L2|L4|ALT_INV_Mux6~0_combout\ <= NOT \L2|L4|Mux6~0_combout\;
\L2|L6|ALT_INV_Mux6~0_combout\ <= NOT \L2|L6|Mux6~0_combout\;
\L2|L8|ALT_INV_saida[0]~1_combout\ <= NOT \L2|L8|saida[0]~1_combout\;
\L2|L8|ALT_INV_saida[2]~0_combout\ <= NOT \L2|L8|saida[2]~0_combout\;
\L2|L3|ALT_INV_aux_saida\(0) <= NOT \L2|L3|aux_saida\(0);
\L2|L3|ALT_INV_aux_saida\(1) <= NOT \L2|L3|aux_saida\(1);
\L2|L3|ALT_INV_aux_saida\(2) <= NOT \L2|L3|aux_saida\(2);
\L2|L3|ALT_INV_aux_saida\(3) <= NOT \L2|L3|aux_saida\(3);
\L2|L9|ALT_INV_aux_saida\(1) <= NOT \L2|L9|aux_saida\(1);
\L2|L9|ALT_INV_aux_saida\(0) <= NOT \L2|L9|aux_saida\(0);
\L2|L0|ALT_INV_Add1~93_sumout\ <= NOT \L2|L0|Add1~93_sumout\;
\L2|L0|ALT_INV_cont0\(3) <= NOT \L2|L0|cont0\(3);
\L2|L0|ALT_INV_cont0\(4) <= NOT \L2|L0|cont0\(4);
\L2|L0|ALT_INV_cont0\(5) <= NOT \L2|L0|cont0\(5);
\L2|L0|ALT_INV_cont0\(6) <= NOT \L2|L0|cont0\(6);
\L2|L0|ALT_INV_cont0\(2) <= NOT \L2|L0|cont0\(2);
\L2|L0|ALT_INV_cont0\(1) <= NOT \L2|L0|cont0\(1);
\L2|L0|ALT_INV_cont0\(0) <= NOT \L2|L0|cont0\(0);
\L2|L0|ALT_INV_cont0\(31) <= NOT \L2|L0|cont0\(31);
\L2|L0|ALT_INV_cont0\(30) <= NOT \L2|L0|cont0\(30);
\L2|L0|ALT_INV_cont0\(29) <= NOT \L2|L0|cont0\(29);
\L2|L0|ALT_INV_cont0\(28) <= NOT \L2|L0|cont0\(28);
\L2|L0|ALT_INV_cont0\(27) <= NOT \L2|L0|cont0\(27);
\L2|L0|ALT_INV_cont0\(26) <= NOT \L2|L0|cont0\(26);
\L2|L0|ALT_INV_cont0\(25) <= NOT \L2|L0|cont0\(25);
\L2|L0|ALT_INV_cont0\(24) <= NOT \L2|L0|cont0\(24);
\L2|L0|ALT_INV_cont0\(23) <= NOT \L2|L0|cont0\(23);
\L2|L0|ALT_INV_cont0\(22) <= NOT \L2|L0|cont0\(22);
\L2|L0|ALT_INV_cont0\(21) <= NOT \L2|L0|cont0\(21);
\L2|L0|ALT_INV_cont0\(20) <= NOT \L2|L0|cont0\(20);
\L2|L0|ALT_INV_cont0\(19) <= NOT \L2|L0|cont0\(19);
\L2|L0|ALT_INV_cont0\(7) <= NOT \L2|L0|cont0\(7);
\L2|L0|ALT_INV_cont0\(8) <= NOT \L2|L0|cont0\(8);
\L2|L0|ALT_INV_cont0\(9) <= NOT \L2|L0|cont0\(9);
\L2|L0|ALT_INV_cont0\(10) <= NOT \L2|L0|cont0\(10);
\L2|L0|ALT_INV_cont0\(11) <= NOT \L2|L0|cont0\(11);
\L2|L0|ALT_INV_cont0\(12) <= NOT \L2|L0|cont0\(12);
\L2|L0|ALT_INV_cont0\(13) <= NOT \L2|L0|cont0\(13);
\L2|L0|ALT_INV_cont0\(14) <= NOT \L2|L0|cont0\(14);
\L2|L0|ALT_INV_cont0\(15) <= NOT \L2|L0|cont0\(15);
\L2|L0|ALT_INV_cont0\(16) <= NOT \L2|L0|cont0\(16);
\L2|L0|ALT_INV_cont0\(17) <= NOT \L2|L0|cont0\(17);
\L2|L0|ALT_INV_cont0\(18) <= NOT \L2|L0|cont0\(18);
\L2|L0|ALT_INV_cont1\(12) <= NOT \L2|L0|cont1\(12);
\L2|L0|ALT_INV_cont1\(13) <= NOT \L2|L0|cont1\(13);
\L2|L0|ALT_INV_cont1\(14) <= NOT \L2|L0|cont1\(14);

-- Location: IOOBUF_X89_Y8_N39
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \L2|Ltemp1|F[0]~0_combout\,
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
	i => \L2|Ltemp1|F[1]~1_combout\,
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
	i => \L2|Ltemp1|F[2]~2_combout\,
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
	i => \L2|Ltemp1|F[3]~3_combout\,
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
	i => \L2|Ltemp1|F[4]~4_combout\,
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
	i => \L2|Ltemp1|F[5]~5_combout\,
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
	i => \L2|Ltemp1|ALT_INV_F[6]~6_combout\,
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
	i => \L2|Ltemp|F[0]~0_combout\,
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
	i => \L2|Ltemp|F[1]~1_combout\,
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
	i => \L2|Ltemp|F[2]~2_combout\,
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
	i => \L2|Ltemp|F[3]~3_combout\,
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
	i => \L2|Ltemp|F[4]~4_combout\,
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
	i => \L2|Ltemp|F[5]~5_combout\,
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
	i => \L2|Ltemp|ALT_INV_F[6]~6_combout\,
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
	i => \L2|L19|Equal14~0_combout\,
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
	i => \L2|L19|F[1]~0_combout\,
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
	i => \L2|L19|F[2]~1_combout\,
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
	i => \L2|L19|F[3]~2_combout\,
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
	i => \L2|L19|Equal14~0_combout\,
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
	i => \L2|L19|Equal14~1_combout\,
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
	i => \L2|L19|ALT_INV_F[6]~3_combout\,
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
	i => \L2|L18|F[0]~0_combout\,
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
	i => \L2|L18|F[1]~1_combout\,
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
	i => \L2|L18|F[2]~2_combout\,
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
	i => \L2|L18|F[3]~3_combout\,
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
	i => \L2|L18|F[4]~4_combout\,
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
	i => \L2|L18|F[5]~5_combout\,
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
	i => \L2|L18|ALT_INV_F[6]~6_combout\,
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
	i => \L2|L2|F[0]~0_combout\,
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
	i => GND,
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
	i => \L2|L16|Equal1~0_combout\,
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
	i => \L2|L2|F[0]~0_combout\,
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
	i => \L2|L16|ALT_INV_Equal1~0_combout\,
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
	i => \L2|L16|ALT_INV_C[7]~0_combout\,
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
	i => \L2|L16|ALT_INV_Equal2~0_combout\,
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
	i => VCC,
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
	i => VCC,
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
	i => \L2|L15|F\(0),
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
	i => \L2|L15|F\(1),
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
	i => \L2|L15|F\(2),
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
	i => \L2|L15|F\(3),
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
	i => \L2|L15|F\(4),
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
	i => \L2|L15|F\(5),
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
	i => \L2|L15|F\(6),
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
	i => \L2|L15|F\(7),
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
	i => \L2|L15|F\(8),
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
	i => \L2|L15|F\(9),
	devoe => ww_devoe,
	o => ww_LEDR(9));

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

-- Location: LABCELL_X63_Y5_N0
\L2|L0|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add0~101_sumout\ = SUM(( \L2|L0|cont0\(0) ) + ( VCC ) + ( !VCC ))
-- \L2|L0|Add0~102\ = CARRY(( \L2|L0|cont0\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L2|L0|ALT_INV_cont0\(0),
	cin => GND,
	sumout => \L2|L0|Add0~101_sumout\,
	cout => \L2|L0|Add0~102\);

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

-- Location: LABCELL_X64_Y7_N30
\L0|btn1state.EsperaApertar~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|btn1state.EsperaApertar~0_combout\ = !\KEY[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_KEY[1]~input_o\,
	combout => \L0|btn1state.EsperaApertar~0_combout\);

-- Location: FF_X64_Y7_N31
\L0|btn1state.EsperaApertar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L0|btn1state.EsperaApertar~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|btn1state.EsperaApertar~q\);

-- Location: LABCELL_X64_Y7_N33
\L0|btn1next.SaidaAtiva~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|btn1next.SaidaAtiva~0_combout\ = ( !\L0|btn1state.EsperaApertar~q\ & ( !\KEY[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_KEY[1]~input_o\,
	dataf => \L0|ALT_INV_btn1state.EsperaApertar~q\,
	combout => \L0|btn1next.SaidaAtiva~0_combout\);

-- Location: FF_X64_Y7_N35
\L0|btn1state.SaidaAtiva\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L0|btn1next.SaidaAtiva~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|btn1state.SaidaAtiva~q\);

-- Location: LABCELL_X64_Y7_N48
\L1|estadoAtual.Setup~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|estadoAtual.Setup~0_combout\ = ( !\L1|estadoAtual.Init~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \L1|ALT_INV_estadoAtual.Init~q\,
	combout => \L1|estadoAtual.Setup~0_combout\);

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

-- Location: LABCELL_X63_Y7_N27
\L0|btn0state.EsperaApertar~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|btn0state.EsperaApertar~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	combout => \L0|btn0state.EsperaApertar~0_combout\);

-- Location: FF_X63_Y7_N28
\L0|btn0state.EsperaApertar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L0|btn0state.EsperaApertar~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|btn0state.EsperaApertar~q\);

-- Location: LABCELL_X63_Y7_N24
\L0|btn0next.SaidaAtiva~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L0|btn0next.SaidaAtiva~0_combout\ = ( !\L0|btn0state.EsperaApertar~q\ & ( !\KEY[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	dataf => \L0|ALT_INV_btn0state.EsperaApertar~q\,
	combout => \L0|btn0next.SaidaAtiva~0_combout\);

-- Location: FF_X63_Y7_N26
\L0|btn0state.SaidaAtiva\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L0|btn0next.SaidaAtiva~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L0|btn0state.SaidaAtiva~q\);

-- Location: FF_X64_Y7_N50
\L1|estadoAtual.Setup\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L1|estadoAtual.Setup~0_combout\,
	clrn => \L0|ALT_INV_btn0state.SaidaAtiva~q\,
	ena => \L0|btn1state.SaidaAtiva~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|estadoAtual.Setup~q\);

-- Location: MLABCELL_X65_Y7_N36
\L2|L3|aux_saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L3|aux_saida~2_combout\ = ( !\L2|L3|Equal0~0_combout\ & ( !\L2|L3|aux_saida\(0) $ (!\L2|L3|aux_saida\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L2|L3|ALT_INV_aux_saida\(0),
	datac => \L2|L3|ALT_INV_aux_saida\(1),
	dataf => \L2|L3|ALT_INV_Equal0~0_combout\,
	combout => \L2|L3|aux_saida~2_combout\);

-- Location: FF_X66_Y6_N26
\L2|L3|aux_saida[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L2|L1|C~combout\,
	asdata => \L2|L3|aux_saida~2_combout\,
	clrn => \L1|estadoAtual.Init~q\,
	sload => VCC,
	ena => \L1|estadoAtual.Game~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L3|aux_saida\(1));

-- Location: MLABCELL_X65_Y7_N12
\L2|L3|aux_saida[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L3|aux_saida[2]~1_combout\ = ( \L1|estadoAtual.Game~q\ & ( !\L2|L3|aux_saida\(2) $ (((!\L2|L3|aux_saida\(1)) # (!\L2|L3|aux_saida\(0)))) ) ) # ( !\L1|estadoAtual.Game~q\ & ( \L2|L3|aux_saida\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000101111110100000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L3|ALT_INV_aux_saida\(1),
	datac => \L2|L3|ALT_INV_aux_saida\(0),
	datad => \L2|L3|ALT_INV_aux_saida\(2),
	dataf => \L1|ALT_INV_estadoAtual.Game~q\,
	combout => \L2|L3|aux_saida[2]~1_combout\);

-- Location: FF_X65_Y6_N32
\L2|L3|aux_saida[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L2|L1|C~combout\,
	asdata => \L2|L3|aux_saida[2]~1_combout\,
	clrn => \L1|estadoAtual.Init~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L3|aux_saida\(2));

-- Location: LABCELL_X64_Y6_N27
\L2|L3|aux_saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L3|aux_saida~0_combout\ = ( \L2|L3|aux_saida\(2) & ( !\L2|L3|aux_saida\(3) $ (((!\L2|L3|aux_saida\(0)) # (!\L2|L3|aux_saida\(1)))) ) ) # ( !\L2|L3|aux_saida\(2) & ( (\L2|L3|aux_saida\(3) & ((!\L2|L3|aux_saida\(0)) # (\L2|L3|aux_saida\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001100100011001000110010001100110110001101100011011000110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L3|ALT_INV_aux_saida\(0),
	datab => \L2|L3|ALT_INV_aux_saida\(3),
	datac => \L2|L3|ALT_INV_aux_saida\(1),
	dataf => \L2|L3|ALT_INV_aux_saida\(2),
	combout => \L2|L3|aux_saida~0_combout\);

-- Location: FF_X66_Y6_N56
\L2|L3|aux_saida[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L2|L1|C~combout\,
	asdata => \L2|L3|aux_saida~0_combout\,
	clrn => \L1|estadoAtual.Init~q\,
	sload => VCC,
	ena => \L1|estadoAtual.Game~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L3|aux_saida\(3));

-- Location: MLABCELL_X65_Y7_N9
\L2|L3|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L3|Equal0~0_combout\ = ( \L2|L3|aux_saida\(0) & ( (\L2|L3|aux_saida\(3) & (!\L2|L3|aux_saida\(2) & !\L2|L3|aux_saida\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000100000000000000000000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L3|ALT_INV_aux_saida\(3),
	datab => \L2|L3|ALT_INV_aux_saida\(2),
	datac => \L2|L3|ALT_INV_aux_saida\(1),
	datae => \L2|L3|ALT_INV_aux_saida\(0),
	combout => \L2|L3|Equal0~0_combout\);

-- Location: FF_X65_Y7_N35
\L2|L3|tc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L2|L1|C~combout\,
	asdata => \L2|L3|Equal0~0_combout\,
	clrn => \L1|estadoAtual.Init~q\,
	sload => VCC,
	ena => \L1|estadoAtual.Game~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L3|tc~q\);

-- Location: MLABCELL_X65_Y7_N24
\L1|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|Selector2~0_combout\ = ( \L2|L3|tc~q\ & ( (\L1|estadoAtual.Setup~q\ & \L0|btn1state.SaidaAtiva~q\) ) ) # ( !\L2|L3|tc~q\ & ( ((\L1|estadoAtual.Setup~q\ & \L0|btn1state.SaidaAtiva~q\)) # (\L1|estadoAtual.Game~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L1|ALT_INV_estadoAtual.Setup~q\,
	datac => \L1|ALT_INV_estadoAtual.Game~q\,
	datad => \L0|ALT_INV_btn1state.SaidaAtiva~q\,
	dataf => \L2|L3|ALT_INV_tc~q\,
	combout => \L1|Selector2~0_combout\);

-- Location: MLABCELL_X65_Y7_N51
\L1|estadoAtual.Game~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|estadoAtual.Game~feeder_combout\ = ( \L1|Selector2~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \L1|ALT_INV_Selector2~0_combout\,
	combout => \L1|estadoAtual.Game~feeder_combout\);

-- Location: FF_X65_Y7_N53
\L1|estadoAtual.Game\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L1|estadoAtual.Game~feeder_combout\,
	clrn => \L0|ALT_INV_btn0state.SaidaAtiva~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|estadoAtual.Game~q\);

-- Location: LABCELL_X64_Y6_N57
\L1|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|Selector3~0_combout\ = ( \L1|estadoAtual.Result~q\ & ( \L2|L3|tc~q\ & ( (!\L0|btn1state.SaidaAtiva~q\) # (\L1|estadoAtual.Game~q\) ) ) ) # ( !\L1|estadoAtual.Result~q\ & ( \L2|L3|tc~q\ & ( \L1|estadoAtual.Game~q\ ) ) ) # ( \L1|estadoAtual.Result~q\ & 
-- ( !\L2|L3|tc~q\ & ( !\L0|btn1state.SaidaAtiva~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L0|ALT_INV_btn1state.SaidaAtiva~q\,
	datad => \L1|ALT_INV_estadoAtual.Game~q\,
	datae => \L1|ALT_INV_estadoAtual.Result~q\,
	dataf => \L2|L3|ALT_INV_tc~q\,
	combout => \L1|Selector3~0_combout\);

-- Location: FF_X64_Y6_N59
\L1|estadoAtual.Result\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L1|Selector3~0_combout\,
	clrn => \L0|ALT_INV_btn0state.SaidaAtiva~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|estadoAtual.Result~q\);

-- Location: LABCELL_X64_Y6_N12
\L1|estadoAtual.Init~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L1|estadoAtual.Init~0_combout\ = !\L1|estadoAtual.Result~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L1|ALT_INV_estadoAtual.Result~q\,
	combout => \L1|estadoAtual.Init~0_combout\);

-- Location: FF_X63_Y6_N59
\L1|estadoAtual.Init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \L1|estadoAtual.Init~0_combout\,
	clrn => \L0|ALT_INV_btn0state.SaidaAtiva~q\,
	sload => VCC,
	ena => \L0|btn1state.SaidaAtiva~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L1|estadoAtual.Init~q\);

-- Location: FF_X63_Y5_N2
\L2|L0|cont0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add0~101_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont0\(0));

-- Location: LABCELL_X63_Y5_N3
\L2|L0|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add0~105_sumout\ = SUM(( \L2|L0|cont0\(1) ) + ( GND ) + ( \L2|L0|Add0~102\ ))
-- \L2|L0|Add0~106\ = CARRY(( \L2|L0|cont0\(1) ) + ( GND ) + ( \L2|L0|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L2|L0|ALT_INV_cont0\(1),
	cin => \L2|L0|Add0~102\,
	sumout => \L2|L0|Add0~105_sumout\,
	cout => \L2|L0|Add0~106\);

-- Location: FF_X63_Y5_N5
\L2|L0|cont0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add0~105_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont0\(1));

-- Location: LABCELL_X63_Y5_N6
\L2|L0|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add0~109_sumout\ = SUM(( \L2|L0|cont0\(2) ) + ( GND ) + ( \L2|L0|Add0~106\ ))
-- \L2|L0|Add0~110\ = CARRY(( \L2|L0|cont0\(2) ) + ( GND ) + ( \L2|L0|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L2|L0|ALT_INV_cont0\(2),
	cin => \L2|L0|Add0~106\,
	sumout => \L2|L0|Add0~109_sumout\,
	cout => \L2|L0|Add0~110\);

-- Location: FF_X63_Y5_N7
\L2|L0|cont0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add0~109_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont0\(2));

-- Location: LABCELL_X63_Y5_N9
\L2|L0|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add0~125_sumout\ = SUM(( \L2|L0|cont0\(3) ) + ( GND ) + ( \L2|L0|Add0~110\ ))
-- \L2|L0|Add0~126\ = CARRY(( \L2|L0|cont0\(3) ) + ( GND ) + ( \L2|L0|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L0|ALT_INV_cont0\(3),
	cin => \L2|L0|Add0~110\,
	sumout => \L2|L0|Add0~125_sumout\,
	cout => \L2|L0|Add0~126\);

-- Location: FF_X63_Y5_N11
\L2|L0|cont0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add0~125_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont0\(3));

-- Location: LABCELL_X63_Y5_N12
\L2|L0|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add0~121_sumout\ = SUM(( \L2|L0|cont0\(4) ) + ( GND ) + ( \L2|L0|Add0~126\ ))
-- \L2|L0|Add0~122\ = CARRY(( \L2|L0|cont0\(4) ) + ( GND ) + ( \L2|L0|Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L2|L0|ALT_INV_cont0\(4),
	cin => \L2|L0|Add0~126\,
	sumout => \L2|L0|Add0~121_sumout\,
	cout => \L2|L0|Add0~122\);

-- Location: FF_X63_Y5_N14
\L2|L0|cont0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add0~121_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont0\(4));

-- Location: LABCELL_X63_Y5_N15
\L2|L0|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add0~117_sumout\ = SUM(( \L2|L0|cont0\(5) ) + ( GND ) + ( \L2|L0|Add0~122\ ))
-- \L2|L0|Add0~118\ = CARRY(( \L2|L0|cont0\(5) ) + ( GND ) + ( \L2|L0|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L0|ALT_INV_cont0\(5),
	cin => \L2|L0|Add0~122\,
	sumout => \L2|L0|Add0~117_sumout\,
	cout => \L2|L0|Add0~118\);

-- Location: FF_X63_Y5_N17
\L2|L0|cont0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add0~117_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont0\(5));

-- Location: LABCELL_X63_Y5_N18
\L2|L0|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add0~113_sumout\ = SUM(( \L2|L0|cont0[6]~DUPLICATE_q\ ) + ( GND ) + ( \L2|L0|Add0~118\ ))
-- \L2|L0|Add0~114\ = CARRY(( \L2|L0|cont0[6]~DUPLICATE_q\ ) + ( GND ) + ( \L2|L0|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L0|ALT_INV_cont0[6]~DUPLICATE_q\,
	cin => \L2|L0|Add0~118\,
	sumout => \L2|L0|Add0~113_sumout\,
	cout => \L2|L0|Add0~114\);

-- Location: FF_X63_Y5_N20
\L2|L0|cont0[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add0~113_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont0[6]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y5_N21
\L2|L0|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add0~45_sumout\ = SUM(( \L2|L0|cont0[7]~DUPLICATE_q\ ) + ( GND ) + ( \L2|L0|Add0~114\ ))
-- \L2|L0|Add0~46\ = CARRY(( \L2|L0|cont0[7]~DUPLICATE_q\ ) + ( GND ) + ( \L2|L0|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L2|L0|ALT_INV_cont0[7]~DUPLICATE_q\,
	cin => \L2|L0|Add0~114\,
	sumout => \L2|L0|Add0~45_sumout\,
	cout => \L2|L0|Add0~46\);

-- Location: FF_X63_Y5_N23
\L2|L0|cont0[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add0~45_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont0[7]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y5_N24
\L2|L0|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add0~41_sumout\ = SUM(( \L2|L0|cont0[8]~DUPLICATE_q\ ) + ( GND ) + ( \L2|L0|Add0~46\ ))
-- \L2|L0|Add0~42\ = CARRY(( \L2|L0|cont0[8]~DUPLICATE_q\ ) + ( GND ) + ( \L2|L0|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L0|ALT_INV_cont0[8]~DUPLICATE_q\,
	cin => \L2|L0|Add0~46\,
	sumout => \L2|L0|Add0~41_sumout\,
	cout => \L2|L0|Add0~42\);

-- Location: FF_X63_Y5_N26
\L2|L0|cont0[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add0~41_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont0[8]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y5_N27
\L2|L0|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add0~37_sumout\ = SUM(( \L2|L0|cont0[9]~DUPLICATE_q\ ) + ( GND ) + ( \L2|L0|Add0~42\ ))
-- \L2|L0|Add0~38\ = CARRY(( \L2|L0|cont0[9]~DUPLICATE_q\ ) + ( GND ) + ( \L2|L0|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L2|L0|ALT_INV_cont0[9]~DUPLICATE_q\,
	cin => \L2|L0|Add0~42\,
	sumout => \L2|L0|Add0~37_sumout\,
	cout => \L2|L0|Add0~38\);

-- Location: FF_X63_Y5_N29
\L2|L0|cont0[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add0~37_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont0[9]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y5_N30
\L2|L0|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add0~33_sumout\ = SUM(( \L2|L0|cont0\(10) ) + ( GND ) + ( \L2|L0|Add0~38\ ))
-- \L2|L0|Add0~34\ = CARRY(( \L2|L0|cont0\(10) ) + ( GND ) + ( \L2|L0|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L0|ALT_INV_cont0\(10),
	cin => \L2|L0|Add0~38\,
	sumout => \L2|L0|Add0~33_sumout\,
	cout => \L2|L0|Add0~34\);

-- Location: FF_X63_Y5_N31
\L2|L0|cont0[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add0~33_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont0\(10));

-- Location: LABCELL_X63_Y5_N33
\L2|L0|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add0~29_sumout\ = SUM(( \L2|L0|cont0[11]~DUPLICATE_q\ ) + ( GND ) + ( \L2|L0|Add0~34\ ))
-- \L2|L0|Add0~30\ = CARRY(( \L2|L0|cont0[11]~DUPLICATE_q\ ) + ( GND ) + ( \L2|L0|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L0|ALT_INV_cont0[11]~DUPLICATE_q\,
	cin => \L2|L0|Add0~34\,
	sumout => \L2|L0|Add0~29_sumout\,
	cout => \L2|L0|Add0~30\);

-- Location: FF_X63_Y5_N35
\L2|L0|cont0[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add0~29_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont0[11]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y5_N36
\L2|L0|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add0~25_sumout\ = SUM(( \L2|L0|cont0[12]~DUPLICATE_q\ ) + ( GND ) + ( \L2|L0|Add0~30\ ))
-- \L2|L0|Add0~26\ = CARRY(( \L2|L0|cont0[12]~DUPLICATE_q\ ) + ( GND ) + ( \L2|L0|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L2|L0|ALT_INV_cont0[12]~DUPLICATE_q\,
	cin => \L2|L0|Add0~30\,
	sumout => \L2|L0|Add0~25_sumout\,
	cout => \L2|L0|Add0~26\);

-- Location: FF_X63_Y5_N38
\L2|L0|cont0[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add0~25_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont0[12]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y5_N39
\L2|L0|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add0~21_sumout\ = SUM(( \L2|L0|cont0[13]~DUPLICATE_q\ ) + ( GND ) + ( \L2|L0|Add0~26\ ))
-- \L2|L0|Add0~22\ = CARRY(( \L2|L0|cont0[13]~DUPLICATE_q\ ) + ( GND ) + ( \L2|L0|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L0|ALT_INV_cont0[13]~DUPLICATE_q\,
	cin => \L2|L0|Add0~26\,
	sumout => \L2|L0|Add0~21_sumout\,
	cout => \L2|L0|Add0~22\);

-- Location: FF_X63_Y5_N41
\L2|L0|cont0[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add0~21_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont0[13]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y5_N42
\L2|L0|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add0~17_sumout\ = SUM(( \L2|L0|cont0\(14) ) + ( GND ) + ( \L2|L0|Add0~22\ ))
-- \L2|L0|Add0~18\ = CARRY(( \L2|L0|cont0\(14) ) + ( GND ) + ( \L2|L0|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L2|L0|ALT_INV_cont0\(14),
	cin => \L2|L0|Add0~22\,
	sumout => \L2|L0|Add0~17_sumout\,
	cout => \L2|L0|Add0~18\);

-- Location: FF_X63_Y5_N43
\L2|L0|cont0[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add0~17_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont0\(14));

-- Location: LABCELL_X63_Y5_N45
\L2|L0|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add0~13_sumout\ = SUM(( \L2|L0|cont0[15]~DUPLICATE_q\ ) + ( GND ) + ( \L2|L0|Add0~18\ ))
-- \L2|L0|Add0~14\ = CARRY(( \L2|L0|cont0[15]~DUPLICATE_q\ ) + ( GND ) + ( \L2|L0|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L0|ALT_INV_cont0[15]~DUPLICATE_q\,
	cin => \L2|L0|Add0~18\,
	sumout => \L2|L0|Add0~13_sumout\,
	cout => \L2|L0|Add0~14\);

-- Location: FF_X63_Y5_N47
\L2|L0|cont0[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add0~13_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont0[15]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y5_N48
\L2|L0|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add0~9_sumout\ = SUM(( \L2|L0|cont0[16]~DUPLICATE_q\ ) + ( GND ) + ( \L2|L0|Add0~14\ ))
-- \L2|L0|Add0~10\ = CARRY(( \L2|L0|cont0[16]~DUPLICATE_q\ ) + ( GND ) + ( \L2|L0|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L0|ALT_INV_cont0[16]~DUPLICATE_q\,
	cin => \L2|L0|Add0~14\,
	sumout => \L2|L0|Add0~9_sumout\,
	cout => \L2|L0|Add0~10\);

-- Location: FF_X63_Y5_N50
\L2|L0|cont0[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add0~9_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont0[16]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y5_N51
\L2|L0|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add0~5_sumout\ = SUM(( \L2|L0|cont0\(17) ) + ( GND ) + ( \L2|L0|Add0~10\ ))
-- \L2|L0|Add0~6\ = CARRY(( \L2|L0|cont0\(17) ) + ( GND ) + ( \L2|L0|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L0|ALT_INV_cont0\(17),
	cin => \L2|L0|Add0~10\,
	sumout => \L2|L0|Add0~5_sumout\,
	cout => \L2|L0|Add0~6\);

-- Location: FF_X63_Y5_N52
\L2|L0|cont0[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add0~5_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont0\(17));

-- Location: LABCELL_X63_Y5_N54
\L2|L0|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add0~1_sumout\ = SUM(( \L2|L0|cont0[18]~DUPLICATE_q\ ) + ( GND ) + ( \L2|L0|Add0~6\ ))
-- \L2|L0|Add0~2\ = CARRY(( \L2|L0|cont0[18]~DUPLICATE_q\ ) + ( GND ) + ( \L2|L0|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L0|ALT_INV_cont0[18]~DUPLICATE_q\,
	cin => \L2|L0|Add0~6\,
	sumout => \L2|L0|Add0~1_sumout\,
	cout => \L2|L0|Add0~2\);

-- Location: FF_X63_Y5_N56
\L2|L0|cont0[18]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add0~1_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont0[18]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y5_N57
\L2|L0|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add0~49_sumout\ = SUM(( \L2|L0|cont0[19]~DUPLICATE_q\ ) + ( GND ) + ( \L2|L0|Add0~2\ ))
-- \L2|L0|Add0~50\ = CARRY(( \L2|L0|cont0[19]~DUPLICATE_q\ ) + ( GND ) + ( \L2|L0|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L0|ALT_INV_cont0[19]~DUPLICATE_q\,
	cin => \L2|L0|Add0~2\,
	sumout => \L2|L0|Add0~49_sumout\,
	cout => \L2|L0|Add0~50\);

-- Location: FF_X63_Y5_N59
\L2|L0|cont0[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add0~49_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont0[19]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y4_N0
\L2|L0|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add0~53_sumout\ = SUM(( \L2|L0|cont0\(20) ) + ( GND ) + ( \L2|L0|Add0~50\ ))
-- \L2|L0|Add0~54\ = CARRY(( \L2|L0|cont0\(20) ) + ( GND ) + ( \L2|L0|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L0|ALT_INV_cont0\(20),
	cin => \L2|L0|Add0~50\,
	sumout => \L2|L0|Add0~53_sumout\,
	cout => \L2|L0|Add0~54\);

-- Location: FF_X63_Y4_N2
\L2|L0|cont0[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add0~53_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont0\(20));

-- Location: LABCELL_X63_Y4_N3
\L2|L0|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add0~57_sumout\ = SUM(( \L2|L0|cont0[21]~DUPLICATE_q\ ) + ( GND ) + ( \L2|L0|Add0~54\ ))
-- \L2|L0|Add0~58\ = CARRY(( \L2|L0|cont0[21]~DUPLICATE_q\ ) + ( GND ) + ( \L2|L0|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L2|L0|ALT_INV_cont0[21]~DUPLICATE_q\,
	cin => \L2|L0|Add0~54\,
	sumout => \L2|L0|Add0~57_sumout\,
	cout => \L2|L0|Add0~58\);

-- Location: FF_X63_Y4_N5
\L2|L0|cont0[21]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add0~57_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont0[21]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y4_N6
\L2|L0|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add0~61_sumout\ = SUM(( \L2|L0|cont0\(22) ) + ( GND ) + ( \L2|L0|Add0~58\ ))
-- \L2|L0|Add0~62\ = CARRY(( \L2|L0|cont0\(22) ) + ( GND ) + ( \L2|L0|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L0|ALT_INV_cont0\(22),
	cin => \L2|L0|Add0~58\,
	sumout => \L2|L0|Add0~61_sumout\,
	cout => \L2|L0|Add0~62\);

-- Location: FF_X63_Y4_N7
\L2|L0|cont0[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add0~61_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont0\(22));

-- Location: LABCELL_X63_Y4_N9
\L2|L0|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add0~65_sumout\ = SUM(( \L2|L0|cont0\(23) ) + ( GND ) + ( \L2|L0|Add0~62\ ))
-- \L2|L0|Add0~66\ = CARRY(( \L2|L0|cont0\(23) ) + ( GND ) + ( \L2|L0|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L0|ALT_INV_cont0\(23),
	cin => \L2|L0|Add0~62\,
	sumout => \L2|L0|Add0~65_sumout\,
	cout => \L2|L0|Add0~66\);

-- Location: FF_X63_Y4_N11
\L2|L0|cont0[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add0~65_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont0\(23));

-- Location: LABCELL_X63_Y4_N12
\L2|L0|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add0~69_sumout\ = SUM(( \L2|L0|cont0\(24) ) + ( GND ) + ( \L2|L0|Add0~66\ ))
-- \L2|L0|Add0~70\ = CARRY(( \L2|L0|cont0\(24) ) + ( GND ) + ( \L2|L0|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L2|L0|ALT_INV_cont0\(24),
	cin => \L2|L0|Add0~66\,
	sumout => \L2|L0|Add0~69_sumout\,
	cout => \L2|L0|Add0~70\);

-- Location: FF_X63_Y4_N13
\L2|L0|cont0[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add0~69_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont0\(24));

-- Location: LABCELL_X63_Y4_N15
\L2|L0|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add0~73_sumout\ = SUM(( \L2|L0|cont0\(25) ) + ( GND ) + ( \L2|L0|Add0~70\ ))
-- \L2|L0|Add0~74\ = CARRY(( \L2|L0|cont0\(25) ) + ( GND ) + ( \L2|L0|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L0|ALT_INV_cont0\(25),
	cin => \L2|L0|Add0~70\,
	sumout => \L2|L0|Add0~73_sumout\,
	cout => \L2|L0|Add0~74\);

-- Location: FF_X63_Y4_N17
\L2|L0|cont0[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add0~73_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont0\(25));

-- Location: LABCELL_X63_Y4_N18
\L2|L0|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add0~77_sumout\ = SUM(( \L2|L0|cont0\(26) ) + ( GND ) + ( \L2|L0|Add0~74\ ))
-- \L2|L0|Add0~78\ = CARRY(( \L2|L0|cont0\(26) ) + ( GND ) + ( \L2|L0|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L0|ALT_INV_cont0\(26),
	cin => \L2|L0|Add0~74\,
	sumout => \L2|L0|Add0~77_sumout\,
	cout => \L2|L0|Add0~78\);

-- Location: FF_X63_Y4_N20
\L2|L0|cont0[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add0~77_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont0\(26));

-- Location: LABCELL_X63_Y4_N21
\L2|L0|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add0~81_sumout\ = SUM(( \L2|L0|cont0\(27) ) + ( GND ) + ( \L2|L0|Add0~78\ ))
-- \L2|L0|Add0~82\ = CARRY(( \L2|L0|cont0\(27) ) + ( GND ) + ( \L2|L0|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L2|L0|ALT_INV_cont0\(27),
	cin => \L2|L0|Add0~78\,
	sumout => \L2|L0|Add0~81_sumout\,
	cout => \L2|L0|Add0~82\);

-- Location: FF_X63_Y4_N23
\L2|L0|cont0[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add0~81_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont0\(27));

-- Location: LABCELL_X63_Y4_N24
\L2|L0|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add0~85_sumout\ = SUM(( \L2|L0|cont0\(28) ) + ( GND ) + ( \L2|L0|Add0~82\ ))
-- \L2|L0|Add0~86\ = CARRY(( \L2|L0|cont0\(28) ) + ( GND ) + ( \L2|L0|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L0|ALT_INV_cont0\(28),
	cin => \L2|L0|Add0~82\,
	sumout => \L2|L0|Add0~85_sumout\,
	cout => \L2|L0|Add0~86\);

-- Location: FF_X63_Y4_N26
\L2|L0|cont0[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add0~85_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont0\(28));

-- Location: LABCELL_X63_Y4_N27
\L2|L0|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add0~89_sumout\ = SUM(( \L2|L0|cont0\(29) ) + ( GND ) + ( \L2|L0|Add0~86\ ))
-- \L2|L0|Add0~90\ = CARRY(( \L2|L0|cont0\(29) ) + ( GND ) + ( \L2|L0|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L2|L0|ALT_INV_cont0\(29),
	cin => \L2|L0|Add0~86\,
	sumout => \L2|L0|Add0~89_sumout\,
	cout => \L2|L0|Add0~90\);

-- Location: FF_X63_Y4_N29
\L2|L0|cont0[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add0~89_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont0\(29));

-- Location: LABCELL_X63_Y4_N30
\L2|L0|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add0~93_sumout\ = SUM(( \L2|L0|cont0\(30) ) + ( GND ) + ( \L2|L0|Add0~90\ ))
-- \L2|L0|Add0~94\ = CARRY(( \L2|L0|cont0\(30) ) + ( GND ) + ( \L2|L0|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L2|L0|ALT_INV_cont0\(30),
	cin => \L2|L0|Add0~90\,
	sumout => \L2|L0|Add0~93_sumout\,
	cout => \L2|L0|Add0~94\);

-- Location: FF_X63_Y4_N32
\L2|L0|cont0[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add0~93_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont0\(30));

-- Location: LABCELL_X63_Y4_N36
\L2|L0|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Equal0~3_combout\ = ( \L2|L0|cont0\(27) & ( \L2|L0|cont0\(28) & ( (!\L2|L0|cont0\(29) & (!\L2|L0|cont0\(30) & (\L2|L0|cont0\(26) & !\L2|L0|cont0\(25)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L0|ALT_INV_cont0\(29),
	datab => \L2|L0|ALT_INV_cont0\(30),
	datac => \L2|L0|ALT_INV_cont0\(26),
	datad => \L2|L0|ALT_INV_cont0\(25),
	datae => \L2|L0|ALT_INV_cont0\(27),
	dataf => \L2|L0|ALT_INV_cont0\(28),
	combout => \L2|L0|Equal0~3_combout\);

-- Location: FF_X63_Y5_N19
\L2|L0|cont0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add0~113_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont0\(6));

-- Location: FF_X63_Y5_N16
\L2|L0|cont0[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add0~117_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont0[5]~DUPLICATE_q\);

-- Location: FF_X63_Y5_N8
\L2|L0|cont0[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add0~109_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont0[2]~DUPLICATE_q\);

-- Location: FF_X63_Y5_N4
\L2|L0|cont0[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add0~105_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont0[1]~DUPLICATE_q\);

-- Location: FF_X63_Y4_N35
\L2|L0|cont0[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add0~97_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont0\(31));

-- Location: LABCELL_X63_Y4_N33
\L2|L0|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add0~97_sumout\ = SUM(( \L2|L0|cont0\(31) ) + ( GND ) + ( \L2|L0|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L0|ALT_INV_cont0\(31),
	cin => \L2|L0|Add0~94\,
	sumout => \L2|L0|Add0~97_sumout\);

-- Location: FF_X63_Y4_N34
\L2|L0|cont0[31]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add0~97_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont0[31]~DUPLICATE_q\);

-- Location: FF_X63_Y5_N1
\L2|L0|cont0[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add0~101_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont0[0]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y5_N42
\L2|L0|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Equal0~4_combout\ = ( !\L2|L0|cont0[31]~DUPLICATE_q\ & ( !\L2|L0|cont0[0]~DUPLICATE_q\ & ( (!\L2|L0|cont0\(6) & (!\L2|L0|cont0[5]~DUPLICATE_q\ & (!\L2|L0|cont0[2]~DUPLICATE_q\ & !\L2|L0|cont0[1]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L0|ALT_INV_cont0\(6),
	datab => \L2|L0|ALT_INV_cont0[5]~DUPLICATE_q\,
	datac => \L2|L0|ALT_INV_cont0[2]~DUPLICATE_q\,
	datad => \L2|L0|ALT_INV_cont0[1]~DUPLICATE_q\,
	datae => \L2|L0|ALT_INV_cont0[31]~DUPLICATE_q\,
	dataf => \L2|L0|ALT_INV_cont0[0]~DUPLICATE_q\,
	combout => \L2|L0|Equal0~4_combout\);

-- Location: FF_X63_Y5_N37
\L2|L0|cont0[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add0~25_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont0\(12));

-- Location: FF_X63_Y5_N22
\L2|L0|cont0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add0~45_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont0\(7));

-- Location: FF_X63_Y5_N34
\L2|L0|cont0[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add0~29_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont0\(11));

-- Location: FF_X63_Y5_N28
\L2|L0|cont0[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add0~37_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont0\(9));

-- Location: FF_X63_Y5_N25
\L2|L0|cont0[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add0~41_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont0\(8));

-- Location: LABCELL_X64_Y5_N24
\L2|L0|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Equal0~1_combout\ = ( !\L2|L0|cont0\(9) & ( \L2|L0|cont0\(8) & ( (!\L2|L0|cont0\(12) & (\L2|L0|cont0\(10) & (!\L2|L0|cont0\(7) & !\L2|L0|cont0\(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L0|ALT_INV_cont0\(12),
	datab => \L2|L0|ALT_INV_cont0\(10),
	datac => \L2|L0|ALT_INV_cont0\(7),
	datad => \L2|L0|ALT_INV_cont0\(11),
	datae => \L2|L0|ALT_INV_cont0\(9),
	dataf => \L2|L0|ALT_INV_cont0\(8),
	combout => \L2|L0|Equal0~1_combout\);

-- Location: FF_X63_Y5_N13
\L2|L0|cont0[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add0~121_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont0[4]~DUPLICATE_q\);

-- Location: LABCELL_X64_Y5_N39
\L2|L0|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Equal0~5_combout\ = ( !\L2|L0|cont0[4]~DUPLICATE_q\ & ( !\L2|L0|cont0\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \L2|L0|ALT_INV_cont0[4]~DUPLICATE_q\,
	dataf => \L2|L0|ALT_INV_cont0\(3),
	combout => \L2|L0|Equal0~5_combout\);

-- Location: FF_X63_Y5_N55
\L2|L0|cont0[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add0~1_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont0\(18));

-- Location: FF_X63_Y5_N40
\L2|L0|cont0[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add0~21_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont0\(13));

-- Location: FF_X63_Y5_N46
\L2|L0|cont0[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add0~13_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont0\(15));

-- Location: FF_X63_Y5_N49
\L2|L0|cont0[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add0~9_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont0\(16));

-- Location: LABCELL_X64_Y5_N0
\L2|L0|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Equal0~0_combout\ = ( \L2|L0|cont0\(16) & ( !\L2|L0|cont0\(17) & ( (\L2|L0|cont0\(18) & (\L2|L0|cont0\(14) & (\L2|L0|cont0\(13) & !\L2|L0|cont0\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L0|ALT_INV_cont0\(18),
	datab => \L2|L0|ALT_INV_cont0\(14),
	datac => \L2|L0|ALT_INV_cont0\(13),
	datad => \L2|L0|ALT_INV_cont0\(15),
	datae => \L2|L0|ALT_INV_cont0\(16),
	dataf => \L2|L0|ALT_INV_cont0\(17),
	combout => \L2|L0|Equal0~0_combout\);

-- Location: FF_X63_Y4_N4
\L2|L0|cont0[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add0~57_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont0\(21));

-- Location: FF_X63_Y5_N58
\L2|L0|cont0[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add0~49_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont0\(19));

-- Location: LABCELL_X64_Y5_N33
\L2|L0|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Equal0~2_combout\ = ( \L2|L0|cont0\(22) & ( \L2|L0|cont0\(24) & ( (!\L2|L0|cont0\(21) & (!\L2|L0|cont0\(20) & (\L2|L0|cont0\(19) & \L2|L0|cont0\(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L0|ALT_INV_cont0\(21),
	datab => \L2|L0|ALT_INV_cont0\(20),
	datac => \L2|L0|ALT_INV_cont0\(19),
	datad => \L2|L0|ALT_INV_cont0\(23),
	datae => \L2|L0|ALT_INV_cont0\(22),
	dataf => \L2|L0|ALT_INV_cont0\(24),
	combout => \L2|L0|Equal0~2_combout\);

-- Location: LABCELL_X64_Y5_N18
\L2|L0|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Equal0~6_combout\ = ( \L2|L0|Equal0~0_combout\ & ( \L2|L0|Equal0~2_combout\ & ( (\L2|L0|Equal0~3_combout\ & (\L2|L0|Equal0~4_combout\ & (\L2|L0|Equal0~1_combout\ & \L2|L0|Equal0~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L0|ALT_INV_Equal0~3_combout\,
	datab => \L2|L0|ALT_INV_Equal0~4_combout\,
	datac => \L2|L0|ALT_INV_Equal0~1_combout\,
	datad => \L2|L0|ALT_INV_Equal0~5_combout\,
	datae => \L2|L0|ALT_INV_Equal0~0_combout\,
	dataf => \L2|L0|ALT_INV_Equal0~2_combout\,
	combout => \L2|L0|Equal0~6_combout\);

-- Location: FF_X64_Y5_N7
\L2|L0|C[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \L2|L0|Equal0~6_combout\,
	clrn => \L1|estadoAtual.Init~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|C\(0));

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

-- Location: LABCELL_X4_Y2_N18
\L2|L16|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L16|Equal2~0_combout\ = ( \SW[8]~input_o\ ) # ( !\SW[8]~input_o\ & ( \SW[9]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[9]~input_o\,
	dataf => \ALT_INV_SW[8]~input_o\,
	combout => \L2|L16|Equal2~0_combout\);

-- Location: LABCELL_X4_Y6_N6
\L2|L16|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L16|Equal1~0_combout\ = ( \SW[8]~input_o\ & ( !\SW[9]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[9]~input_o\,
	dataf => \ALT_INV_SW[8]~input_o\,
	combout => \L2|L16|Equal1~0_combout\);

-- Location: MLABCELL_X65_Y6_N0
\L2|L0|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add1~33_sumout\ = SUM(( \L2|L0|cont1\(0) ) + ( VCC ) + ( !VCC ))
-- \L2|L0|Add1~34\ = CARRY(( \L2|L0|cont1\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L2|L0|ALT_INV_cont1\(0),
	cin => GND,
	sumout => \L2|L0|Add1~33_sumout\,
	cout => \L2|L0|Add1~34\);

-- Location: FF_X65_Y6_N2
\L2|L0|cont1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add1~33_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont1\(0));

-- Location: MLABCELL_X65_Y6_N3
\L2|L0|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add1~37_sumout\ = SUM(( \L2|L0|cont1\(1) ) + ( GND ) + ( \L2|L0|Add1~34\ ))
-- \L2|L0|Add1~38\ = CARRY(( \L2|L0|cont1\(1) ) + ( GND ) + ( \L2|L0|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L2|L0|ALT_INV_cont1\(1),
	cin => \L2|L0|Add1~34\,
	sumout => \L2|L0|Add1~37_sumout\,
	cout => \L2|L0|Add1~38\);

-- Location: FF_X65_Y6_N5
\L2|L0|cont1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add1~37_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont1\(1));

-- Location: MLABCELL_X65_Y6_N6
\L2|L0|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add1~41_sumout\ = SUM(( \L2|L0|cont1\(2) ) + ( GND ) + ( \L2|L0|Add1~38\ ))
-- \L2|L0|Add1~42\ = CARRY(( \L2|L0|cont1\(2) ) + ( GND ) + ( \L2|L0|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L2|L0|ALT_INV_cont1\(2),
	cin => \L2|L0|Add1~38\,
	sumout => \L2|L0|Add1~41_sumout\,
	cout => \L2|L0|Add1~42\);

-- Location: FF_X65_Y6_N8
\L2|L0|cont1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add1~41_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont1\(2));

-- Location: MLABCELL_X65_Y6_N9
\L2|L0|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add1~45_sumout\ = SUM(( \L2|L0|cont1[3]~DUPLICATE_q\ ) + ( GND ) + ( \L2|L0|Add1~42\ ))
-- \L2|L0|Add1~46\ = CARRY(( \L2|L0|cont1[3]~DUPLICATE_q\ ) + ( GND ) + ( \L2|L0|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L0|ALT_INV_cont1[3]~DUPLICATE_q\,
	cin => \L2|L0|Add1~42\,
	sumout => \L2|L0|Add1~45_sumout\,
	cout => \L2|L0|Add1~46\);

-- Location: FF_X65_Y6_N11
\L2|L0|cont1[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add1~45_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont1[3]~DUPLICATE_q\);

-- Location: MLABCELL_X65_Y6_N12
\L2|L0|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add1~1_sumout\ = SUM(( \L2|L0|cont1\(4) ) + ( GND ) + ( \L2|L0|Add1~46\ ))
-- \L2|L0|Add1~2\ = CARRY(( \L2|L0|cont1\(4) ) + ( GND ) + ( \L2|L0|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L2|L0|ALT_INV_cont1\(4),
	cin => \L2|L0|Add1~46\,
	sumout => \L2|L0|Add1~1_sumout\,
	cout => \L2|L0|Add1~2\);

-- Location: FF_X65_Y6_N14
\L2|L0|cont1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add1~1_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont1\(4));

-- Location: MLABCELL_X65_Y6_N15
\L2|L0|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add1~49_sumout\ = SUM(( \L2|L0|cont1\(5) ) + ( GND ) + ( \L2|L0|Add1~2\ ))
-- \L2|L0|Add1~50\ = CARRY(( \L2|L0|cont1\(5) ) + ( GND ) + ( \L2|L0|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L0|ALT_INV_cont1\(5),
	cin => \L2|L0|Add1~2\,
	sumout => \L2|L0|Add1~49_sumout\,
	cout => \L2|L0|Add1~50\);

-- Location: FF_X65_Y6_N17
\L2|L0|cont1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add1~49_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont1\(5));

-- Location: MLABCELL_X65_Y6_N18
\L2|L0|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add1~53_sumout\ = SUM(( \L2|L0|cont1\(6) ) + ( GND ) + ( \L2|L0|Add1~50\ ))
-- \L2|L0|Add1~54\ = CARRY(( \L2|L0|cont1\(6) ) + ( GND ) + ( \L2|L0|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L0|ALT_INV_cont1\(6),
	cin => \L2|L0|Add1~50\,
	sumout => \L2|L0|Add1~53_sumout\,
	cout => \L2|L0|Add1~54\);

-- Location: FF_X65_Y6_N20
\L2|L0|cont1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add1~53_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont1\(6));

-- Location: MLABCELL_X65_Y6_N21
\L2|L0|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add1~57_sumout\ = SUM(( \L2|L0|cont1\(7) ) + ( GND ) + ( \L2|L0|Add1~54\ ))
-- \L2|L0|Add1~58\ = CARRY(( \L2|L0|cont1\(7) ) + ( GND ) + ( \L2|L0|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L2|L0|ALT_INV_cont1\(7),
	cin => \L2|L0|Add1~54\,
	sumout => \L2|L0|Add1~57_sumout\,
	cout => \L2|L0|Add1~58\);

-- Location: FF_X65_Y6_N23
\L2|L0|cont1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add1~57_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont1\(7));

-- Location: MLABCELL_X65_Y6_N24
\L2|L0|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add1~61_sumout\ = SUM(( \L2|L0|cont1\(8) ) + ( GND ) + ( \L2|L0|Add1~58\ ))
-- \L2|L0|Add1~62\ = CARRY(( \L2|L0|cont1\(8) ) + ( GND ) + ( \L2|L0|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L0|ALT_INV_cont1\(8),
	cin => \L2|L0|Add1~58\,
	sumout => \L2|L0|Add1~61_sumout\,
	cout => \L2|L0|Add1~62\);

-- Location: FF_X65_Y6_N26
\L2|L0|cont1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add1~61_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont1\(8));

-- Location: MLABCELL_X65_Y6_N27
\L2|L0|Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add1~65_sumout\ = SUM(( \L2|L0|cont1\(9) ) + ( GND ) + ( \L2|L0|Add1~62\ ))
-- \L2|L0|Add1~66\ = CARRY(( \L2|L0|cont1\(9) ) + ( GND ) + ( \L2|L0|Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L2|L0|ALT_INV_cont1\(9),
	cin => \L2|L0|Add1~62\,
	sumout => \L2|L0|Add1~65_sumout\,
	cout => \L2|L0|Add1~66\);

-- Location: FF_X65_Y6_N29
\L2|L0|cont1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add1~65_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont1\(9));

-- Location: MLABCELL_X65_Y5_N0
\L2|L0|Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add1~73_sumout\ = SUM(( \L2|L0|cont1\(10) ) + ( GND ) + ( \L2|L0|Add1~66\ ))
-- \L2|L0|Add1~74\ = CARRY(( \L2|L0|cont1\(10) ) + ( GND ) + ( \L2|L0|Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L2|L0|ALT_INV_cont1\(10),
	cin => \L2|L0|Add1~66\,
	sumout => \L2|L0|Add1~73_sumout\,
	cout => \L2|L0|Add1~74\);

-- Location: FF_X65_Y5_N2
\L2|L0|cont1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add1~73_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont1\(10));

-- Location: MLABCELL_X65_Y5_N3
\L2|L0|Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add1~69_sumout\ = SUM(( \L2|L0|cont1\(11) ) + ( GND ) + ( \L2|L0|Add1~74\ ))
-- \L2|L0|Add1~70\ = CARRY(( \L2|L0|cont1\(11) ) + ( GND ) + ( \L2|L0|Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L2|L0|ALT_INV_cont1\(11),
	cin => \L2|L0|Add1~74\,
	sumout => \L2|L0|Add1~69_sumout\,
	cout => \L2|L0|Add1~70\);

-- Location: FF_X65_Y5_N5
\L2|L0|cont1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add1~69_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont1\(11));

-- Location: MLABCELL_X65_Y5_N6
\L2|L0|Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add1~109_sumout\ = SUM(( \L2|L0|cont1\(12) ) + ( GND ) + ( \L2|L0|Add1~70\ ))
-- \L2|L0|Add1~110\ = CARRY(( \L2|L0|cont1\(12) ) + ( GND ) + ( \L2|L0|Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L2|L0|ALT_INV_cont1\(12),
	cin => \L2|L0|Add1~70\,
	sumout => \L2|L0|Add1~109_sumout\,
	cout => \L2|L0|Add1~110\);

-- Location: FF_X65_Y5_N7
\L2|L0|cont1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add1~109_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont1\(12));

-- Location: MLABCELL_X65_Y5_N9
\L2|L0|Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add1~105_sumout\ = SUM(( \L2|L0|cont1\(13) ) + ( GND ) + ( \L2|L0|Add1~110\ ))
-- \L2|L0|Add1~106\ = CARRY(( \L2|L0|cont1\(13) ) + ( GND ) + ( \L2|L0|Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L0|ALT_INV_cont1\(13),
	cin => \L2|L0|Add1~110\,
	sumout => \L2|L0|Add1~105_sumout\,
	cout => \L2|L0|Add1~106\);

-- Location: FF_X65_Y5_N11
\L2|L0|cont1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add1~105_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont1\(13));

-- Location: MLABCELL_X65_Y5_N12
\L2|L0|Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add1~101_sumout\ = SUM(( \L2|L0|cont1\(14) ) + ( GND ) + ( \L2|L0|Add1~106\ ))
-- \L2|L0|Add1~102\ = CARRY(( \L2|L0|cont1\(14) ) + ( GND ) + ( \L2|L0|Add1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L2|L0|ALT_INV_cont1\(14),
	cin => \L2|L0|Add1~106\,
	sumout => \L2|L0|Add1~101_sumout\,
	cout => \L2|L0|Add1~102\);

-- Location: FF_X65_Y5_N14
\L2|L0|cont1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add1~101_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont1\(14));

-- Location: MLABCELL_X65_Y5_N15
\L2|L0|Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add1~97_sumout\ = SUM(( \L2|L0|cont1\(15) ) + ( GND ) + ( \L2|L0|Add1~102\ ))
-- \L2|L0|Add1~98\ = CARRY(( \L2|L0|cont1\(15) ) + ( GND ) + ( \L2|L0|Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L0|ALT_INV_cont1\(15),
	cin => \L2|L0|Add1~102\,
	sumout => \L2|L0|Add1~97_sumout\,
	cout => \L2|L0|Add1~98\);

-- Location: FF_X65_Y5_N17
\L2|L0|cont1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add1~97_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont1\(15));

-- Location: MLABCELL_X65_Y5_N18
\L2|L0|Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add1~93_sumout\ = SUM(( \L2|L0|cont1[16]~DUPLICATE_q\ ) + ( GND ) + ( \L2|L0|Add1~98\ ))
-- \L2|L0|Add1~94\ = CARRY(( \L2|L0|cont1[16]~DUPLICATE_q\ ) + ( GND ) + ( \L2|L0|Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L0|ALT_INV_cont1[16]~DUPLICATE_q\,
	cin => \L2|L0|Add1~98\,
	sumout => \L2|L0|Add1~93_sumout\,
	cout => \L2|L0|Add1~94\);

-- Location: LABCELL_X64_Y5_N48
\L2|L0|cont1[16]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|cont1[16]~feeder_combout\ = ( \L2|L0|Add1~93_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \L2|L0|ALT_INV_Add1~93_sumout\,
	combout => \L2|L0|cont1[16]~feeder_combout\);

-- Location: FF_X64_Y5_N49
\L2|L0|cont1[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|cont1[16]~feeder_combout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont1[16]~DUPLICATE_q\);

-- Location: MLABCELL_X65_Y5_N21
\L2|L0|Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add1~89_sumout\ = SUM(( \L2|L0|cont1[17]~DUPLICATE_q\ ) + ( GND ) + ( \L2|L0|Add1~94\ ))
-- \L2|L0|Add1~90\ = CARRY(( \L2|L0|cont1[17]~DUPLICATE_q\ ) + ( GND ) + ( \L2|L0|Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L0|ALT_INV_cont1[17]~DUPLICATE_q\,
	cin => \L2|L0|Add1~94\,
	sumout => \L2|L0|Add1~89_sumout\,
	cout => \L2|L0|Add1~90\);

-- Location: FF_X64_Y5_N16
\L2|L0|cont1[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \L2|L0|Add1~89_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal1~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont1[17]~DUPLICATE_q\);

-- Location: MLABCELL_X65_Y5_N24
\L2|L0|Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add1~85_sumout\ = SUM(( \L2|L0|cont1[18]~DUPLICATE_q\ ) + ( GND ) + ( \L2|L0|Add1~90\ ))
-- \L2|L0|Add1~86\ = CARRY(( \L2|L0|cont1[18]~DUPLICATE_q\ ) + ( GND ) + ( \L2|L0|Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L0|ALT_INV_cont1[18]~DUPLICATE_q\,
	cin => \L2|L0|Add1~90\,
	sumout => \L2|L0|Add1~85_sumout\,
	cout => \L2|L0|Add1~86\);

-- Location: FF_X65_Y5_N26
\L2|L0|cont1[18]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add1~85_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont1[18]~DUPLICATE_q\);

-- Location: MLABCELL_X65_Y5_N27
\L2|L0|Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add1~81_sumout\ = SUM(( \L2|L0|cont1\(19) ) + ( GND ) + ( \L2|L0|Add1~86\ ))
-- \L2|L0|Add1~82\ = CARRY(( \L2|L0|cont1\(19) ) + ( GND ) + ( \L2|L0|Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L2|L0|ALT_INV_cont1\(19),
	cin => \L2|L0|Add1~86\,
	sumout => \L2|L0|Add1~81_sumout\,
	cout => \L2|L0|Add1~82\);

-- Location: FF_X65_Y5_N29
\L2|L0|cont1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add1~81_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont1\(19));

-- Location: MLABCELL_X65_Y5_N30
\L2|L0|Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add1~77_sumout\ = SUM(( \L2|L0|cont1\(20) ) + ( GND ) + ( \L2|L0|Add1~82\ ))
-- \L2|L0|Add1~78\ = CARRY(( \L2|L0|cont1\(20) ) + ( GND ) + ( \L2|L0|Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L2|L0|ALT_INV_cont1\(20),
	cin => \L2|L0|Add1~82\,
	sumout => \L2|L0|Add1~77_sumout\,
	cout => \L2|L0|Add1~78\);

-- Location: FF_X65_Y5_N32
\L2|L0|cont1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add1~77_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont1\(20));

-- Location: MLABCELL_X65_Y5_N33
\L2|L0|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add1~25_sumout\ = SUM(( \L2|L0|cont1\(21) ) + ( GND ) + ( \L2|L0|Add1~78\ ))
-- \L2|L0|Add1~26\ = CARRY(( \L2|L0|cont1\(21) ) + ( GND ) + ( \L2|L0|Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L0|ALT_INV_cont1\(21),
	cin => \L2|L0|Add1~78\,
	sumout => \L2|L0|Add1~25_sumout\,
	cout => \L2|L0|Add1~26\);

-- Location: FF_X65_Y5_N35
\L2|L0|cont1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add1~25_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont1\(21));

-- Location: MLABCELL_X65_Y5_N36
\L2|L0|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add1~29_sumout\ = SUM(( \L2|L0|cont1\(22) ) + ( GND ) + ( \L2|L0|Add1~26\ ))
-- \L2|L0|Add1~30\ = CARRY(( \L2|L0|cont1\(22) ) + ( GND ) + ( \L2|L0|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L2|L0|ALT_INV_cont1\(22),
	cin => \L2|L0|Add1~26\,
	sumout => \L2|L0|Add1~29_sumout\,
	cout => \L2|L0|Add1~30\);

-- Location: FF_X65_Y5_N37
\L2|L0|cont1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add1~29_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont1\(22));

-- Location: MLABCELL_X65_Y5_N39
\L2|L0|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add1~21_sumout\ = SUM(( \L2|L0|cont1\(23) ) + ( GND ) + ( \L2|L0|Add1~30\ ))
-- \L2|L0|Add1~22\ = CARRY(( \L2|L0|cont1\(23) ) + ( GND ) + ( \L2|L0|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L0|ALT_INV_cont1\(23),
	cin => \L2|L0|Add1~30\,
	sumout => \L2|L0|Add1~21_sumout\,
	cout => \L2|L0|Add1~22\);

-- Location: FF_X65_Y5_N41
\L2|L0|cont1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add1~21_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont1\(23));

-- Location: MLABCELL_X65_Y5_N42
\L2|L0|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add1~17_sumout\ = SUM(( \L2|L0|cont1[24]~DUPLICATE_q\ ) + ( GND ) + ( \L2|L0|Add1~22\ ))
-- \L2|L0|Add1~18\ = CARRY(( \L2|L0|cont1[24]~DUPLICATE_q\ ) + ( GND ) + ( \L2|L0|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L2|L0|ALT_INV_cont1[24]~DUPLICATE_q\,
	cin => \L2|L0|Add1~22\,
	sumout => \L2|L0|Add1~17_sumout\,
	cout => \L2|L0|Add1~18\);

-- Location: FF_X65_Y5_N44
\L2|L0|cont1[24]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add1~17_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont1[24]~DUPLICATE_q\);

-- Location: MLABCELL_X65_Y5_N45
\L2|L0|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add1~13_sumout\ = SUM(( \L2|L0|cont1\(25) ) + ( GND ) + ( \L2|L0|Add1~18\ ))
-- \L2|L0|Add1~14\ = CARRY(( \L2|L0|cont1\(25) ) + ( GND ) + ( \L2|L0|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L0|ALT_INV_cont1\(25),
	cin => \L2|L0|Add1~18\,
	sumout => \L2|L0|Add1~13_sumout\,
	cout => \L2|L0|Add1~14\);

-- Location: FF_X65_Y5_N47
\L2|L0|cont1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add1~13_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont1\(25));

-- Location: MLABCELL_X65_Y5_N48
\L2|L0|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add1~9_sumout\ = SUM(( \L2|L0|cont1\(26) ) + ( GND ) + ( \L2|L0|Add1~14\ ))
-- \L2|L0|Add1~10\ = CARRY(( \L2|L0|cont1\(26) ) + ( GND ) + ( \L2|L0|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L0|ALT_INV_cont1\(26),
	cin => \L2|L0|Add1~14\,
	sumout => \L2|L0|Add1~9_sumout\,
	cout => \L2|L0|Add1~10\);

-- Location: FF_X65_Y5_N50
\L2|L0|cont1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add1~9_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont1\(26));

-- Location: MLABCELL_X65_Y5_N51
\L2|L0|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add1~5_sumout\ = SUM(( \L2|L0|cont1\(27) ) + ( GND ) + ( \L2|L0|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L0|ALT_INV_cont1\(27),
	cin => \L2|L0|Add1~10\,
	sumout => \L2|L0|Add1~5_sumout\);

-- Location: FF_X65_Y5_N53
\L2|L0|cont1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add1~5_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont1\(27));

-- Location: FF_X65_Y5_N43
\L2|L0|cont1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add1~17_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont1\(24));

-- Location: MLABCELL_X65_Y5_N54
\L2|L0|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Equal1~0_combout\ = ( !\L2|L0|cont1\(24) & ( !\L2|L0|cont1\(26) & ( (\L2|L0|cont1\(27) & (!\L2|L0|cont1\(25) & (\L2|L0|cont1\(21) & \L2|L0|cont1\(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L0|ALT_INV_cont1\(27),
	datab => \L2|L0|ALT_INV_cont1\(25),
	datac => \L2|L0|ALT_INV_cont1\(21),
	datad => \L2|L0|ALT_INV_cont1\(23),
	datae => \L2|L0|ALT_INV_cont1\(24),
	dataf => \L2|L0|ALT_INV_cont1\(26),
	combout => \L2|L0|Equal1~0_combout\);

-- Location: LABCELL_X64_Y6_N45
\L2|L0|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Equal1~2_combout\ = ( !\L2|L0|cont1\(5) & ( !\L2|L0|cont1\(11) & ( (!\L2|L0|cont1\(9) & (\L2|L0|cont1\(8) & (!\L2|L0|cont1\(6) & \L2|L0|cont1\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L0|ALT_INV_cont1\(9),
	datab => \L2|L0|ALT_INV_cont1\(8),
	datac => \L2|L0|ALT_INV_cont1\(6),
	datad => \L2|L0|ALT_INV_cont1\(7),
	datae => \L2|L0|ALT_INV_cont1\(5),
	dataf => \L2|L0|ALT_INV_cont1\(11),
	combout => \L2|L0|Equal1~2_combout\);

-- Location: LABCELL_X64_Y5_N54
\L2|L0|Equal1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Equal1~4_combout\ = ( \L2|L0|cont1\(15) & ( \L2|L0|cont1\(12) & ( (!\L2|L0|cont1\(13) & \L2|L0|cont1\(14)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L0|ALT_INV_cont1\(13),
	datad => \L2|L0|ALT_INV_cont1\(14),
	datae => \L2|L0|ALT_INV_cont1\(15),
	dataf => \L2|L0|ALT_INV_cont1\(12),
	combout => \L2|L0|Equal1~4_combout\);

-- Location: FF_X65_Y6_N10
\L2|L0|cont1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add1~45_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont1\(3));

-- Location: MLABCELL_X65_Y6_N48
\L2|L0|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Equal1~1_combout\ = ( \L2|L0|cont1\(22) & ( (!\L2|L0|cont1\(3) & (!\L2|L0|cont1\(2) & (!\L2|L0|cont1\(0) & !\L2|L0|cont1\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L0|ALT_INV_cont1\(3),
	datab => \L2|L0|ALT_INV_cont1\(2),
	datac => \L2|L0|ALT_INV_cont1\(0),
	datad => \L2|L0|ALT_INV_cont1\(1),
	dataf => \L2|L0|ALT_INV_cont1\(22),
	combout => \L2|L0|Equal1~1_combout\);

-- Location: FF_X64_Y5_N50
\L2|L0|cont1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|cont1[16]~feeder_combout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont1\(16));

-- Location: FF_X64_Y5_N17
\L2|L0|cont1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \L2|L0|Add1~89_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal1~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont1\(17));

-- Location: FF_X65_Y5_N25
\L2|L0|cont1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add1~85_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont1\(18));

-- Location: LABCELL_X64_Y5_N9
\L2|L0|Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Equal1~3_combout\ = ( !\L2|L0|cont1\(10) & ( \L2|L0|cont1\(20) & ( (!\L2|L0|cont1\(16) & (!\L2|L0|cont1\(17) & (!\L2|L0|cont1\(18) & !\L2|L0|cont1\(19)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L0|ALT_INV_cont1\(16),
	datab => \L2|L0|ALT_INV_cont1\(17),
	datac => \L2|L0|ALT_INV_cont1\(18),
	datad => \L2|L0|ALT_INV_cont1\(19),
	datae => \L2|L0|ALT_INV_cont1\(10),
	dataf => \L2|L0|ALT_INV_cont1\(20),
	combout => \L2|L0|Equal1~3_combout\);

-- Location: LABCELL_X64_Y6_N3
\L2|L0|Equal1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Equal1~5_combout\ = ( \L2|L0|Equal1~1_combout\ & ( \L2|L0|Equal1~3_combout\ & ( (!\L2|L0|cont1\(4) & (\L2|L0|Equal1~0_combout\ & (\L2|L0|Equal1~2_combout\ & \L2|L0|Equal1~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L0|ALT_INV_cont1\(4),
	datab => \L2|L0|ALT_INV_Equal1~0_combout\,
	datac => \L2|L0|ALT_INV_Equal1~2_combout\,
	datad => \L2|L0|ALT_INV_Equal1~4_combout\,
	datae => \L2|L0|ALT_INV_Equal1~1_combout\,
	dataf => \L2|L0|ALT_INV_Equal1~3_combout\,
	combout => \L2|L0|Equal1~5_combout\);

-- Location: FF_X64_Y6_N23
\L2|L0|C[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \L2|L0|Equal1~5_combout\,
	clrn => \L1|estadoAtual.Init~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|C\(1));

-- Location: LABCELL_X61_Y6_N24
\L2|L16|C[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L16|C[3]~1_combout\ = ( !\SW[8]~input_o\ & ( \SW[9]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[9]~input_o\,
	dataf => \ALT_INV_SW[8]~input_o\,
	combout => \L2|L16|C[3]~1_combout\);

-- Location: LABCELL_X62_Y6_N30
\L2|L0|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add2~9_sumout\ = SUM(( \L2|L0|cont2\(0) ) + ( VCC ) + ( !VCC ))
-- \L2|L0|Add2~10\ = CARRY(( \L2|L0|cont2\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L0|ALT_INV_cont2\(0),
	cin => GND,
	sumout => \L2|L0|Add2~9_sumout\,
	cout => \L2|L0|Add2~10\);

-- Location: FF_X62_Y6_N31
\L2|L0|cont2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add2~9_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont2\(0));

-- Location: LABCELL_X62_Y6_N33
\L2|L0|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add2~13_sumout\ = SUM(( \L2|L0|cont2\(1) ) + ( GND ) + ( \L2|L0|Add2~10\ ))
-- \L2|L0|Add2~14\ = CARRY(( \L2|L0|cont2\(1) ) + ( GND ) + ( \L2|L0|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L0|ALT_INV_cont2\(1),
	cin => \L2|L0|Add2~10\,
	sumout => \L2|L0|Add2~13_sumout\,
	cout => \L2|L0|Add2~14\);

-- Location: FF_X62_Y6_N35
\L2|L0|cont2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add2~13_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont2\(1));

-- Location: LABCELL_X62_Y6_N36
\L2|L0|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add2~17_sumout\ = SUM(( \L2|L0|cont2\(2) ) + ( GND ) + ( \L2|L0|Add2~14\ ))
-- \L2|L0|Add2~18\ = CARRY(( \L2|L0|cont2\(2) ) + ( GND ) + ( \L2|L0|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L2|L0|ALT_INV_cont2\(2),
	cin => \L2|L0|Add2~14\,
	sumout => \L2|L0|Add2~17_sumout\,
	cout => \L2|L0|Add2~18\);

-- Location: FF_X62_Y6_N38
\L2|L0|cont2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add2~17_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont2\(2));

-- Location: FF_X62_Y6_N32
\L2|L0|cont2[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add2~9_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont2[0]~DUPLICATE_q\);

-- Location: LABCELL_X62_Y6_N39
\L2|L0|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add2~21_sumout\ = SUM(( \L2|L0|cont2\(3) ) + ( GND ) + ( \L2|L0|Add2~18\ ))
-- \L2|L0|Add2~22\ = CARRY(( \L2|L0|cont2\(3) ) + ( GND ) + ( \L2|L0|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L0|ALT_INV_cont2\(3),
	cin => \L2|L0|Add2~18\,
	sumout => \L2|L0|Add2~21_sumout\,
	cout => \L2|L0|Add2~22\);

-- Location: FF_X62_Y6_N41
\L2|L0|cont2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add2~21_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont2\(3));

-- Location: FF_X62_Y6_N44
\L2|L0|cont2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add2~25_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont2\(4));

-- Location: LABCELL_X62_Y6_N42
\L2|L0|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add2~25_sumout\ = SUM(( \L2|L0|cont2\(4) ) + ( GND ) + ( \L2|L0|Add2~22\ ))
-- \L2|L0|Add2~26\ = CARRY(( \L2|L0|cont2\(4) ) + ( GND ) + ( \L2|L0|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L2|L0|ALT_INV_cont2\(4),
	cin => \L2|L0|Add2~22\,
	sumout => \L2|L0|Add2~25_sumout\,
	cout => \L2|L0|Add2~26\);

-- Location: FF_X62_Y6_N43
\L2|L0|cont2[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add2~25_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont2[4]~DUPLICATE_q\);

-- Location: LABCELL_X62_Y6_N45
\L2|L0|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add2~29_sumout\ = SUM(( \L2|L0|cont2\(5) ) + ( GND ) + ( \L2|L0|Add2~26\ ))
-- \L2|L0|Add2~30\ = CARRY(( \L2|L0|cont2\(5) ) + ( GND ) + ( \L2|L0|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L2|L0|ALT_INV_cont2\(5),
	cin => \L2|L0|Add2~26\,
	sumout => \L2|L0|Add2~29_sumout\,
	cout => \L2|L0|Add2~30\);

-- Location: FF_X62_Y6_N47
\L2|L0|cont2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add2~29_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont2\(5));

-- Location: LABCELL_X62_Y6_N48
\L2|L0|Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add2~33_sumout\ = SUM(( \L2|L0|cont2\(6) ) + ( GND ) + ( \L2|L0|Add2~30\ ))
-- \L2|L0|Add2~34\ = CARRY(( \L2|L0|cont2\(6) ) + ( GND ) + ( \L2|L0|Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L0|ALT_INV_cont2\(6),
	cin => \L2|L0|Add2~30\,
	sumout => \L2|L0|Add2~33_sumout\,
	cout => \L2|L0|Add2~34\);

-- Location: FF_X62_Y6_N50
\L2|L0|cont2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add2~33_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont2\(6));

-- Location: LABCELL_X62_Y6_N51
\L2|L0|Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add2~37_sumout\ = SUM(( \L2|L0|cont2\(7) ) + ( GND ) + ( \L2|L0|Add2~34\ ))
-- \L2|L0|Add2~38\ = CARRY(( \L2|L0|cont2\(7) ) + ( GND ) + ( \L2|L0|Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L2|L0|ALT_INV_cont2\(7),
	cin => \L2|L0|Add2~34\,
	sumout => \L2|L0|Add2~37_sumout\,
	cout => \L2|L0|Add2~38\);

-- Location: FF_X62_Y6_N52
\L2|L0|cont2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add2~37_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont2\(7));

-- Location: LABCELL_X62_Y6_N54
\L2|L0|Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add2~41_sumout\ = SUM(( \L2|L0|cont2\(8) ) + ( GND ) + ( \L2|L0|Add2~38\ ))
-- \L2|L0|Add2~42\ = CARRY(( \L2|L0|cont2\(8) ) + ( GND ) + ( \L2|L0|Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L2|L0|ALT_INV_cont2\(8),
	cin => \L2|L0|Add2~38\,
	sumout => \L2|L0|Add2~41_sumout\,
	cout => \L2|L0|Add2~42\);

-- Location: FF_X62_Y6_N56
\L2|L0|cont2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add2~41_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont2\(8));

-- Location: LABCELL_X62_Y6_N57
\L2|L0|Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add2~45_sumout\ = SUM(( \L2|L0|cont2\(9) ) + ( GND ) + ( \L2|L0|Add2~42\ ))
-- \L2|L0|Add2~46\ = CARRY(( \L2|L0|cont2\(9) ) + ( GND ) + ( \L2|L0|Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L2|L0|ALT_INV_cont2\(9),
	cin => \L2|L0|Add2~42\,
	sumout => \L2|L0|Add2~45_sumout\,
	cout => \L2|L0|Add2~46\);

-- Location: FF_X62_Y6_N59
\L2|L0|cont2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add2~45_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont2\(9));

-- Location: LABCELL_X62_Y5_N0
\L2|L0|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add2~1_sumout\ = SUM(( \L2|L0|cont2\(10) ) + ( GND ) + ( \L2|L0|Add2~46\ ))
-- \L2|L0|Add2~2\ = CARRY(( \L2|L0|cont2\(10) ) + ( GND ) + ( \L2|L0|Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L2|L0|ALT_INV_cont2\(10),
	cin => \L2|L0|Add2~46\,
	sumout => \L2|L0|Add2~1_sumout\,
	cout => \L2|L0|Add2~2\);

-- Location: FF_X62_Y5_N2
\L2|L0|cont2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add2~1_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont2\(10));

-- Location: LABCELL_X62_Y5_N3
\L2|L0|Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add2~49_sumout\ = SUM(( \L2|L0|cont2\(11) ) + ( GND ) + ( \L2|L0|Add2~2\ ))
-- \L2|L0|Add2~50\ = CARRY(( \L2|L0|cont2\(11) ) + ( GND ) + ( \L2|L0|Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L2|L0|ALT_INV_cont2\(11),
	cin => \L2|L0|Add2~2\,
	sumout => \L2|L0|Add2~49_sumout\,
	cout => \L2|L0|Add2~50\);

-- Location: FF_X62_Y5_N5
\L2|L0|cont2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add2~49_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont2\(11));

-- Location: LABCELL_X62_Y5_N6
\L2|L0|Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add2~53_sumout\ = SUM(( \L2|L0|cont2\(12) ) + ( GND ) + ( \L2|L0|Add2~50\ ))
-- \L2|L0|Add2~54\ = CARRY(( \L2|L0|cont2\(12) ) + ( GND ) + ( \L2|L0|Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L2|L0|ALT_INV_cont2\(12),
	cin => \L2|L0|Add2~50\,
	sumout => \L2|L0|Add2~53_sumout\,
	cout => \L2|L0|Add2~54\);

-- Location: FF_X62_Y5_N7
\L2|L0|cont2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add2~53_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont2\(12));

-- Location: LABCELL_X62_Y5_N9
\L2|L0|Add2~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add2~109_sumout\ = SUM(( \L2|L0|cont2\(13) ) + ( GND ) + ( \L2|L0|Add2~54\ ))
-- \L2|L0|Add2~110\ = CARRY(( \L2|L0|cont2\(13) ) + ( GND ) + ( \L2|L0|Add2~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L0|ALT_INV_cont2\(13),
	cin => \L2|L0|Add2~54\,
	sumout => \L2|L0|Add2~109_sumout\,
	cout => \L2|L0|Add2~110\);

-- Location: FF_X62_Y5_N11
\L2|L0|cont2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add2~109_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont2\(13));

-- Location: LABCELL_X62_Y5_N12
\L2|L0|Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add2~57_sumout\ = SUM(( \L2|L0|cont2\(14) ) + ( GND ) + ( \L2|L0|Add2~110\ ))
-- \L2|L0|Add2~58\ = CARRY(( \L2|L0|cont2\(14) ) + ( GND ) + ( \L2|L0|Add2~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L2|L0|ALT_INV_cont2\(14),
	cin => \L2|L0|Add2~110\,
	sumout => \L2|L0|Add2~57_sumout\,
	cout => \L2|L0|Add2~58\);

-- Location: FF_X62_Y5_N14
\L2|L0|cont2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add2~57_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont2\(14));

-- Location: LABCELL_X62_Y5_N15
\L2|L0|Add2~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add2~105_sumout\ = SUM(( \L2|L0|cont2\(15) ) + ( GND ) + ( \L2|L0|Add2~58\ ))
-- \L2|L0|Add2~106\ = CARRY(( \L2|L0|cont2\(15) ) + ( GND ) + ( \L2|L0|Add2~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L2|L0|ALT_INV_cont2\(15),
	cin => \L2|L0|Add2~58\,
	sumout => \L2|L0|Add2~105_sumout\,
	cout => \L2|L0|Add2~106\);

-- Location: FF_X62_Y6_N7
\L2|L0|cont2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \L2|L0|Add2~105_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal2~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont2\(15));

-- Location: LABCELL_X62_Y5_N18
\L2|L0|Add2~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add2~101_sumout\ = SUM(( \L2|L0|cont2\(16) ) + ( GND ) + ( \L2|L0|Add2~106\ ))
-- \L2|L0|Add2~102\ = CARRY(( \L2|L0|cont2\(16) ) + ( GND ) + ( \L2|L0|Add2~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L0|ALT_INV_cont2\(16),
	cin => \L2|L0|Add2~106\,
	sumout => \L2|L0|Add2~101_sumout\,
	cout => \L2|L0|Add2~102\);

-- Location: FF_X62_Y6_N14
\L2|L0|cont2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \L2|L0|Add2~101_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal2~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont2\(16));

-- Location: LABCELL_X62_Y5_N21
\L2|L0|Add2~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add2~97_sumout\ = SUM(( \L2|L0|cont2[17]~DUPLICATE_q\ ) + ( GND ) + ( \L2|L0|Add2~102\ ))
-- \L2|L0|Add2~98\ = CARRY(( \L2|L0|cont2[17]~DUPLICATE_q\ ) + ( GND ) + ( \L2|L0|Add2~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L2|L0|ALT_INV_cont2[17]~DUPLICATE_q\,
	cin => \L2|L0|Add2~102\,
	sumout => \L2|L0|Add2~97_sumout\,
	cout => \L2|L0|Add2~98\);

-- Location: FF_X62_Y5_N23
\L2|L0|cont2[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add2~97_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont2[17]~DUPLICATE_q\);

-- Location: LABCELL_X62_Y5_N24
\L2|L0|Add2~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add2~93_sumout\ = SUM(( \L2|L0|cont2\(18) ) + ( GND ) + ( \L2|L0|Add2~98\ ))
-- \L2|L0|Add2~94\ = CARRY(( \L2|L0|cont2\(18) ) + ( GND ) + ( \L2|L0|Add2~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L0|ALT_INV_cont2\(18),
	cin => \L2|L0|Add2~98\,
	sumout => \L2|L0|Add2~93_sumout\,
	cout => \L2|L0|Add2~94\);

-- Location: FF_X62_Y5_N26
\L2|L0|cont2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add2~93_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont2\(18));

-- Location: LABCELL_X62_Y5_N27
\L2|L0|Add2~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add2~89_sumout\ = SUM(( \L2|L0|cont2\(19) ) + ( GND ) + ( \L2|L0|Add2~94\ ))
-- \L2|L0|Add2~90\ = CARRY(( \L2|L0|cont2\(19) ) + ( GND ) + ( \L2|L0|Add2~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L0|ALT_INV_cont2\(19),
	cin => \L2|L0|Add2~94\,
	sumout => \L2|L0|Add2~89_sumout\,
	cout => \L2|L0|Add2~90\);

-- Location: FF_X62_Y5_N28
\L2|L0|cont2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add2~89_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont2\(19));

-- Location: LABCELL_X62_Y5_N30
\L2|L0|Add2~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add2~85_sumout\ = SUM(( \L2|L0|cont2\(20) ) + ( GND ) + ( \L2|L0|Add2~90\ ))
-- \L2|L0|Add2~86\ = CARRY(( \L2|L0|cont2\(20) ) + ( GND ) + ( \L2|L0|Add2~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L0|ALT_INV_cont2\(20),
	cin => \L2|L0|Add2~90\,
	sumout => \L2|L0|Add2~85_sumout\,
	cout => \L2|L0|Add2~86\);

-- Location: FF_X62_Y5_N31
\L2|L0|cont2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add2~85_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont2\(20));

-- Location: LABCELL_X62_Y5_N33
\L2|L0|Add2~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add2~81_sumout\ = SUM(( \L2|L0|cont2\(21) ) + ( GND ) + ( \L2|L0|Add2~86\ ))
-- \L2|L0|Add2~82\ = CARRY(( \L2|L0|cont2\(21) ) + ( GND ) + ( \L2|L0|Add2~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L0|ALT_INV_cont2\(21),
	cin => \L2|L0|Add2~86\,
	sumout => \L2|L0|Add2~81_sumout\,
	cout => \L2|L0|Add2~82\);

-- Location: FF_X62_Y5_N35
\L2|L0|cont2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add2~81_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont2\(21));

-- Location: LABCELL_X62_Y5_N36
\L2|L0|Add2~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add2~77_sumout\ = SUM(( \L2|L0|cont2\(22) ) + ( GND ) + ( \L2|L0|Add2~82\ ))
-- \L2|L0|Add2~78\ = CARRY(( \L2|L0|cont2\(22) ) + ( GND ) + ( \L2|L0|Add2~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L0|ALT_INV_cont2\(22),
	cin => \L2|L0|Add2~82\,
	sumout => \L2|L0|Add2~77_sumout\,
	cout => \L2|L0|Add2~78\);

-- Location: FF_X62_Y5_N38
\L2|L0|cont2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add2~77_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont2\(22));

-- Location: LABCELL_X62_Y5_N39
\L2|L0|Add2~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add2~73_sumout\ = SUM(( \L2|L0|cont2\(23) ) + ( GND ) + ( \L2|L0|Add2~78\ ))
-- \L2|L0|Add2~74\ = CARRY(( \L2|L0|cont2\(23) ) + ( GND ) + ( \L2|L0|Add2~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L0|ALT_INV_cont2\(23),
	cin => \L2|L0|Add2~78\,
	sumout => \L2|L0|Add2~73_sumout\,
	cout => \L2|L0|Add2~74\);

-- Location: FF_X62_Y5_N40
\L2|L0|cont2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add2~73_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont2\(23));

-- Location: LABCELL_X62_Y5_N42
\L2|L0|Add2~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add2~69_sumout\ = SUM(( \L2|L0|cont2\(24) ) + ( GND ) + ( \L2|L0|Add2~74\ ))
-- \L2|L0|Add2~70\ = CARRY(( \L2|L0|cont2\(24) ) + ( GND ) + ( \L2|L0|Add2~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L2|L0|ALT_INV_cont2\(24),
	cin => \L2|L0|Add2~74\,
	sumout => \L2|L0|Add2~69_sumout\,
	cout => \L2|L0|Add2~70\);

-- Location: FF_X62_Y5_N44
\L2|L0|cont2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add2~69_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont2\(24));

-- Location: LABCELL_X62_Y5_N45
\L2|L0|Add2~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add2~65_sumout\ = SUM(( \L2|L0|cont2\(25) ) + ( GND ) + ( \L2|L0|Add2~70\ ))
-- \L2|L0|Add2~66\ = CARRY(( \L2|L0|cont2\(25) ) + ( GND ) + ( \L2|L0|Add2~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L0|ALT_INV_cont2\(25),
	cin => \L2|L0|Add2~70\,
	sumout => \L2|L0|Add2~65_sumout\,
	cout => \L2|L0|Add2~66\);

-- Location: FF_X62_Y5_N47
\L2|L0|cont2[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add2~65_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont2\(25));

-- Location: LABCELL_X62_Y5_N48
\L2|L0|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add2~5_sumout\ = SUM(( \L2|L0|cont2\(26) ) + ( GND ) + ( \L2|L0|Add2~66\ ))
-- \L2|L0|Add2~6\ = CARRY(( \L2|L0|cont2\(26) ) + ( GND ) + ( \L2|L0|Add2~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L2|L0|ALT_INV_cont2\(26),
	cin => \L2|L0|Add2~66\,
	sumout => \L2|L0|Add2~5_sumout\,
	cout => \L2|L0|Add2~6\);

-- Location: FF_X62_Y5_N49
\L2|L0|cont2[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add2~5_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont2\(26));

-- Location: LABCELL_X62_Y6_N18
\L2|L0|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Equal2~0_combout\ = ( !\L2|L0|cont2[4]~DUPLICATE_q\ & ( !\L2|L0|cont2\(26) & ( (!\L2|L0|cont2\(2) & (!\L2|L0|cont2[0]~DUPLICATE_q\ & (!\L2|L0|cont2\(1) & !\L2|L0|cont2\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L0|ALT_INV_cont2\(2),
	datab => \L2|L0|ALT_INV_cont2[0]~DUPLICATE_q\,
	datac => \L2|L0|ALT_INV_cont2\(1),
	datad => \L2|L0|ALT_INV_cont2\(3),
	datae => \L2|L0|ALT_INV_cont2[4]~DUPLICATE_q\,
	dataf => \L2|L0|ALT_INV_cont2\(26),
	combout => \L2|L0|Equal2~0_combout\);

-- Location: LABCELL_X62_Y6_N9
\L2|L0|Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Equal2~1_combout\ = ( \L2|L0|cont2\(9) & ( (!\L2|L0|cont2\(8) & (!\L2|L0|cont2\(5) & (!\L2|L0|cont2\(7) & !\L2|L0|cont2\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L0|ALT_INV_cont2\(8),
	datab => \L2|L0|ALT_INV_cont2\(5),
	datac => \L2|L0|ALT_INV_cont2\(7),
	datad => \L2|L0|ALT_INV_cont2\(6),
	datae => \L2|L0|ALT_INV_cont2\(9),
	combout => \L2|L0|Equal2~1_combout\);

-- Location: LABCELL_X62_Y6_N0
\L2|L0|Equal2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Equal2~3_combout\ = ( \L2|L0|cont2\(23) & ( \L2|L0|cont2\(19) & ( (\L2|L0|cont2\(21) & (!\L2|L0|cont2\(18) & (\L2|L0|cont2\(22) & !\L2|L0|cont2\(20)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L0|ALT_INV_cont2\(21),
	datab => \L2|L0|ALT_INV_cont2\(18),
	datac => \L2|L0|ALT_INV_cont2\(22),
	datad => \L2|L0|ALT_INV_cont2\(20),
	datae => \L2|L0|ALT_INV_cont2\(23),
	dataf => \L2|L0|ALT_INV_cont2\(19),
	combout => \L2|L0|Equal2~3_combout\);

-- Location: LABCELL_X62_Y5_N51
\L2|L0|Add2~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add2~61_sumout\ = SUM(( \L2|L0|cont2\(27) ) + ( GND ) + ( \L2|L0|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L0|ALT_INV_cont2\(27),
	cin => \L2|L0|Add2~6\,
	sumout => \L2|L0|Add2~61_sumout\);

-- Location: FF_X62_Y5_N53
\L2|L0|cont2[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add2~61_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont2\(27));

-- Location: LABCELL_X62_Y5_N54
\L2|L0|Equal2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Equal2~2_combout\ = ( !\L2|L0|cont2\(11) & ( \L2|L0|cont2\(24) & ( (!\L2|L0|cont2\(12) & (\L2|L0|cont2\(14) & (\L2|L0|cont2\(27) & \L2|L0|cont2\(25)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L0|ALT_INV_cont2\(12),
	datab => \L2|L0|ALT_INV_cont2\(14),
	datac => \L2|L0|ALT_INV_cont2\(27),
	datad => \L2|L0|ALT_INV_cont2\(25),
	datae => \L2|L0|ALT_INV_cont2\(11),
	dataf => \L2|L0|ALT_INV_cont2\(24),
	combout => \L2|L0|Equal2~2_combout\);

-- Location: FF_X62_Y5_N22
\L2|L0|cont2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add2~97_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont2\(17));

-- Location: LABCELL_X62_Y6_N27
\L2|L0|Equal2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Equal2~4_combout\ = ( !\L2|L0|cont2\(13) & ( (\L2|L0|cont2\(15) & (\L2|L0|cont2\(17) & \L2|L0|cont2\(16))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L0|ALT_INV_cont2\(15),
	datac => \L2|L0|ALT_INV_cont2\(17),
	datad => \L2|L0|ALT_INV_cont2\(16),
	dataf => \L2|L0|ALT_INV_cont2\(13),
	combout => \L2|L0|Equal2~4_combout\);

-- Location: LABCELL_X62_Y6_N15
\L2|L0|Equal2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Equal2~5_combout\ = ( \L2|L0|Equal2~2_combout\ & ( \L2|L0|Equal2~4_combout\ & ( (\L2|L0|Equal2~0_combout\ & (!\L2|L0|cont2\(10) & (\L2|L0|Equal2~1_combout\ & \L2|L0|Equal2~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L0|ALT_INV_Equal2~0_combout\,
	datab => \L2|L0|ALT_INV_cont2\(10),
	datac => \L2|L0|ALT_INV_Equal2~1_combout\,
	datad => \L2|L0|ALT_INV_Equal2~3_combout\,
	datae => \L2|L0|ALT_INV_Equal2~2_combout\,
	dataf => \L2|L0|ALT_INV_Equal2~4_combout\,
	combout => \L2|L0|Equal2~5_combout\);

-- Location: FF_X61_Y6_N23
\L2|L0|C[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \L2|L0|Equal2~5_combout\,
	clrn => \L1|estadoAtual.Init~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|C\(2));

-- Location: LABCELL_X63_Y7_N30
\L2|L0|Add3~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add3~65_sumout\ = SUM(( \L2|L0|cont3\(0) ) + ( VCC ) + ( !VCC ))
-- \L2|L0|Add3~66\ = CARRY(( \L2|L0|cont3\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L0|ALT_INV_cont3\(0),
	cin => GND,
	sumout => \L2|L0|Add3~65_sumout\,
	cout => \L2|L0|Add3~66\);

-- Location: FF_X63_Y7_N31
\L2|L0|cont3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add3~65_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont3\(0));

-- Location: LABCELL_X63_Y7_N33
\L2|L0|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add3~1_sumout\ = SUM(( \L2|L0|cont3\(1) ) + ( GND ) + ( \L2|L0|Add3~66\ ))
-- \L2|L0|Add3~2\ = CARRY(( \L2|L0|cont3\(1) ) + ( GND ) + ( \L2|L0|Add3~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L0|ALT_INV_cont3\(1),
	cin => \L2|L0|Add3~66\,
	sumout => \L2|L0|Add3~1_sumout\,
	cout => \L2|L0|Add3~2\);

-- Location: FF_X63_Y7_N35
\L2|L0|cont3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add3~1_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont3\(1));

-- Location: LABCELL_X63_Y7_N36
\L2|L0|Add3~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add3~45_sumout\ = SUM(( \L2|L0|cont3\(2) ) + ( GND ) + ( \L2|L0|Add3~2\ ))
-- \L2|L0|Add3~46\ = CARRY(( \L2|L0|cont3\(2) ) + ( GND ) + ( \L2|L0|Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L2|L0|ALT_INV_cont3\(2),
	cin => \L2|L0|Add3~2\,
	sumout => \L2|L0|Add3~45_sumout\,
	cout => \L2|L0|Add3~46\);

-- Location: FF_X63_Y7_N38
\L2|L0|cont3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add3~45_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont3\(2));

-- Location: LABCELL_X63_Y7_N39
\L2|L0|Add3~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add3~41_sumout\ = SUM(( \L2|L0|cont3\(3) ) + ( GND ) + ( \L2|L0|Add3~46\ ))
-- \L2|L0|Add3~42\ = CARRY(( \L2|L0|cont3\(3) ) + ( GND ) + ( \L2|L0|Add3~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L2|L0|ALT_INV_cont3\(3),
	cin => \L2|L0|Add3~46\,
	sumout => \L2|L0|Add3~41_sumout\,
	cout => \L2|L0|Add3~42\);

-- Location: FF_X63_Y7_N40
\L2|L0|cont3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add3~41_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont3\(3));

-- Location: LABCELL_X63_Y7_N42
\L2|L0|Add3~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add3~37_sumout\ = SUM(( \L2|L0|cont3\(4) ) + ( GND ) + ( \L2|L0|Add3~42\ ))
-- \L2|L0|Add3~38\ = CARRY(( \L2|L0|cont3\(4) ) + ( GND ) + ( \L2|L0|Add3~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L2|L0|ALT_INV_cont3\(4),
	cin => \L2|L0|Add3~42\,
	sumout => \L2|L0|Add3~37_sumout\,
	cout => \L2|L0|Add3~38\);

-- Location: FF_X63_Y7_N43
\L2|L0|cont3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add3~37_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont3\(4));

-- Location: LABCELL_X63_Y7_N45
\L2|L0|Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add3~33_sumout\ = SUM(( \L2|L0|cont3\(5) ) + ( GND ) + ( \L2|L0|Add3~38\ ))
-- \L2|L0|Add3~34\ = CARRY(( \L2|L0|cont3\(5) ) + ( GND ) + ( \L2|L0|Add3~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L2|L0|ALT_INV_cont3\(5),
	cin => \L2|L0|Add3~38\,
	sumout => \L2|L0|Add3~33_sumout\,
	cout => \L2|L0|Add3~34\);

-- Location: FF_X63_Y7_N47
\L2|L0|cont3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add3~33_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont3\(5));

-- Location: LABCELL_X63_Y7_N48
\L2|L0|Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add3~29_sumout\ = SUM(( \L2|L0|cont3\(6) ) + ( GND ) + ( \L2|L0|Add3~34\ ))
-- \L2|L0|Add3~30\ = CARRY(( \L2|L0|cont3\(6) ) + ( GND ) + ( \L2|L0|Add3~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L0|ALT_INV_cont3\(6),
	cin => \L2|L0|Add3~34\,
	sumout => \L2|L0|Add3~29_sumout\,
	cout => \L2|L0|Add3~30\);

-- Location: FF_X63_Y7_N50
\L2|L0|cont3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add3~29_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont3\(6));

-- Location: LABCELL_X63_Y7_N21
\L2|L0|Equal3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Equal3~1_combout\ = ( !\L2|L0|cont3\(5) & ( !\L2|L0|cont3\(6) & ( (!\L2|L0|cont3\(2) & (!\L2|L0|cont3\(3) & !\L2|L0|cont3\(4))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L0|ALT_INV_cont3\(2),
	datab => \L2|L0|ALT_INV_cont3\(3),
	datac => \L2|L0|ALT_INV_cont3\(4),
	datae => \L2|L0|ALT_INV_cont3\(5),
	dataf => \L2|L0|ALT_INV_cont3\(6),
	combout => \L2|L0|Equal3~1_combout\);

-- Location: LABCELL_X63_Y7_N51
\L2|L0|Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add3~25_sumout\ = SUM(( \L2|L0|cont3\(7) ) + ( GND ) + ( \L2|L0|Add3~30\ ))
-- \L2|L0|Add3~26\ = CARRY(( \L2|L0|cont3\(7) ) + ( GND ) + ( \L2|L0|Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L2|L0|ALT_INV_cont3\(7),
	cin => \L2|L0|Add3~30\,
	sumout => \L2|L0|Add3~25_sumout\,
	cout => \L2|L0|Add3~26\);

-- Location: FF_X63_Y7_N52
\L2|L0|cont3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add3~25_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont3\(7));

-- Location: LABCELL_X63_Y7_N54
\L2|L0|Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add3~21_sumout\ = SUM(( \L2|L0|cont3\(8) ) + ( GND ) + ( \L2|L0|Add3~26\ ))
-- \L2|L0|Add3~22\ = CARRY(( \L2|L0|cont3\(8) ) + ( GND ) + ( \L2|L0|Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L2|L0|ALT_INV_cont3\(8),
	cin => \L2|L0|Add3~26\,
	sumout => \L2|L0|Add3~21_sumout\,
	cout => \L2|L0|Add3~22\);

-- Location: FF_X63_Y7_N56
\L2|L0|cont3[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add3~21_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont3\(8));

-- Location: LABCELL_X63_Y7_N57
\L2|L0|Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add3~17_sumout\ = SUM(( \L2|L0|cont3\(9) ) + ( GND ) + ( \L2|L0|Add3~22\ ))
-- \L2|L0|Add3~18\ = CARRY(( \L2|L0|cont3\(9) ) + ( GND ) + ( \L2|L0|Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L2|L0|ALT_INV_cont3\(9),
	cin => \L2|L0|Add3~22\,
	sumout => \L2|L0|Add3~17_sumout\,
	cout => \L2|L0|Add3~18\);

-- Location: FF_X63_Y7_N59
\L2|L0|cont3[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add3~17_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont3\(9));

-- Location: LABCELL_X63_Y6_N0
\L2|L0|Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add3~13_sumout\ = SUM(( \L2|L0|cont3[10]~DUPLICATE_q\ ) + ( GND ) + ( \L2|L0|Add3~18\ ))
-- \L2|L0|Add3~14\ = CARRY(( \L2|L0|cont3[10]~DUPLICATE_q\ ) + ( GND ) + ( \L2|L0|Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L2|L0|ALT_INV_cont3[10]~DUPLICATE_q\,
	cin => \L2|L0|Add3~18\,
	sumout => \L2|L0|Add3~13_sumout\,
	cout => \L2|L0|Add3~14\);

-- Location: FF_X63_Y6_N2
\L2|L0|cont3[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add3~13_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont3[10]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y6_N3
\L2|L0|Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add3~5_sumout\ = SUM(( \L2|L0|cont3\(11) ) + ( GND ) + ( \L2|L0|Add3~14\ ))
-- \L2|L0|Add3~6\ = CARRY(( \L2|L0|cont3\(11) ) + ( GND ) + ( \L2|L0|Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L2|L0|ALT_INV_cont3\(11),
	cin => \L2|L0|Add3~14\,
	sumout => \L2|L0|Add3~5_sumout\,
	cout => \L2|L0|Add3~6\);

-- Location: FF_X63_Y6_N5
\L2|L0|cont3[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add3~5_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont3\(11));

-- Location: LABCELL_X63_Y6_N6
\L2|L0|Add3~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add3~49_sumout\ = SUM(( \L2|L0|cont3\(12) ) + ( GND ) + ( \L2|L0|Add3~6\ ))
-- \L2|L0|Add3~50\ = CARRY(( \L2|L0|cont3\(12) ) + ( GND ) + ( \L2|L0|Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L0|ALT_INV_cont3\(12),
	cin => \L2|L0|Add3~6\,
	sumout => \L2|L0|Add3~49_sumout\,
	cout => \L2|L0|Add3~50\);

-- Location: FF_X63_Y7_N16
\L2|L0|cont3[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \L2|L0|Add3~49_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal3~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont3\(12));

-- Location: LABCELL_X63_Y6_N9
\L2|L0|Add3~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add3~53_sumout\ = SUM(( \L2|L0|cont3\(13) ) + ( GND ) + ( \L2|L0|Add3~50\ ))
-- \L2|L0|Add3~54\ = CARRY(( \L2|L0|cont3\(13) ) + ( GND ) + ( \L2|L0|Add3~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L2|L0|ALT_INV_cont3\(13),
	cin => \L2|L0|Add3~50\,
	sumout => \L2|L0|Add3~53_sumout\,
	cout => \L2|L0|Add3~54\);

-- Location: FF_X63_Y6_N10
\L2|L0|cont3[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add3~53_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont3\(13));

-- Location: LABCELL_X63_Y6_N12
\L2|L0|Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add3~9_sumout\ = SUM(( \L2|L0|cont3\(14) ) + ( GND ) + ( \L2|L0|Add3~54\ ))
-- \L2|L0|Add3~10\ = CARRY(( \L2|L0|cont3\(14) ) + ( GND ) + ( \L2|L0|Add3~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L0|ALT_INV_cont3\(14),
	cin => \L2|L0|Add3~54\,
	sumout => \L2|L0|Add3~9_sumout\,
	cout => \L2|L0|Add3~10\);

-- Location: FF_X63_Y7_N8
\L2|L0|cont3[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \L2|L0|Add3~9_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal3~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont3\(14));

-- Location: FF_X63_Y6_N1
\L2|L0|cont3[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add3~13_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont3\(10));

-- Location: LABCELL_X63_Y7_N12
\L2|L0|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Equal3~0_combout\ = ( !\L2|L0|cont3\(7) & ( !\L2|L0|cont3\(11) & ( (\L2|L0|cont3\(8) & (\L2|L0|cont3\(14) & (!\L2|L0|cont3\(10) & !\L2|L0|cont3\(9)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L0|ALT_INV_cont3\(8),
	datab => \L2|L0|ALT_INV_cont3\(14),
	datac => \L2|L0|ALT_INV_cont3\(10),
	datad => \L2|L0|ALT_INV_cont3\(9),
	datae => \L2|L0|ALT_INV_cont3\(7),
	dataf => \L2|L0|ALT_INV_cont3\(11),
	combout => \L2|L0|Equal3~0_combout\);

-- Location: FF_X63_Y7_N34
\L2|L0|cont3[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add3~1_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont3[1]~DUPLICATE_q\);

-- Location: FF_X63_Y6_N52
\L2|L0|cont3[27]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add3~69_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont3[27]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y6_N15
\L2|L0|Add3~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add3~61_sumout\ = SUM(( \L2|L0|cont3\(15) ) + ( GND ) + ( \L2|L0|Add3~10\ ))
-- \L2|L0|Add3~62\ = CARRY(( \L2|L0|cont3\(15) ) + ( GND ) + ( \L2|L0|Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L0|ALT_INV_cont3\(15),
	cin => \L2|L0|Add3~10\,
	sumout => \L2|L0|Add3~61_sumout\,
	cout => \L2|L0|Add3~62\);

-- Location: FF_X63_Y6_N17
\L2|L0|cont3[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add3~61_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont3\(15));

-- Location: LABCELL_X63_Y6_N18
\L2|L0|Add3~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add3~109_sumout\ = SUM(( \L2|L0|cont3[16]~DUPLICATE_q\ ) + ( GND ) + ( \L2|L0|Add3~62\ ))
-- \L2|L0|Add3~110\ = CARRY(( \L2|L0|cont3[16]~DUPLICATE_q\ ) + ( GND ) + ( \L2|L0|Add3~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L0|ALT_INV_cont3[16]~DUPLICATE_q\,
	cin => \L2|L0|Add3~62\,
	sumout => \L2|L0|Add3~109_sumout\,
	cout => \L2|L0|Add3~110\);

-- Location: FF_X63_Y6_N20
\L2|L0|cont3[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add3~109_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont3[16]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y6_N21
\L2|L0|Add3~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add3~57_sumout\ = SUM(( \L2|L0|cont3[17]~DUPLICATE_q\ ) + ( GND ) + ( \L2|L0|Add3~110\ ))
-- \L2|L0|Add3~58\ = CARRY(( \L2|L0|cont3[17]~DUPLICATE_q\ ) + ( GND ) + ( \L2|L0|Add3~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L0|ALT_INV_cont3[17]~DUPLICATE_q\,
	cin => \L2|L0|Add3~110\,
	sumout => \L2|L0|Add3~57_sumout\,
	cout => \L2|L0|Add3~58\);

-- Location: FF_X63_Y7_N4
\L2|L0|cont3[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \L2|L0|Add3~57_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal3~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont3[17]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y6_N24
\L2|L0|Add3~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add3~105_sumout\ = SUM(( \L2|L0|cont3\(18) ) + ( GND ) + ( \L2|L0|Add3~58\ ))
-- \L2|L0|Add3~106\ = CARRY(( \L2|L0|cont3\(18) ) + ( GND ) + ( \L2|L0|Add3~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L0|ALT_INV_cont3\(18),
	cin => \L2|L0|Add3~58\,
	sumout => \L2|L0|Add3~105_sumout\,
	cout => \L2|L0|Add3~106\);

-- Location: FF_X63_Y6_N26
\L2|L0|cont3[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add3~105_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont3\(18));

-- Location: LABCELL_X63_Y6_N27
\L2|L0|Add3~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add3~101_sumout\ = SUM(( \L2|L0|cont3\(19) ) + ( GND ) + ( \L2|L0|Add3~106\ ))
-- \L2|L0|Add3~102\ = CARRY(( \L2|L0|cont3\(19) ) + ( GND ) + ( \L2|L0|Add3~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L0|ALT_INV_cont3\(19),
	cin => \L2|L0|Add3~106\,
	sumout => \L2|L0|Add3~101_sumout\,
	cout => \L2|L0|Add3~102\);

-- Location: FF_X63_Y6_N28
\L2|L0|cont3[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add3~101_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont3\(19));

-- Location: LABCELL_X63_Y6_N30
\L2|L0|Add3~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add3~97_sumout\ = SUM(( \L2|L0|cont3\(20) ) + ( GND ) + ( \L2|L0|Add3~102\ ))
-- \L2|L0|Add3~98\ = CARRY(( \L2|L0|cont3\(20) ) + ( GND ) + ( \L2|L0|Add3~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L2|L0|ALT_INV_cont3\(20),
	cin => \L2|L0|Add3~102\,
	sumout => \L2|L0|Add3~97_sumout\,
	cout => \L2|L0|Add3~98\);

-- Location: FF_X63_Y6_N32
\L2|L0|cont3[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add3~97_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont3\(20));

-- Location: LABCELL_X63_Y6_N33
\L2|L0|Add3~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add3~93_sumout\ = SUM(( \L2|L0|cont3[21]~DUPLICATE_q\ ) + ( GND ) + ( \L2|L0|Add3~98\ ))
-- \L2|L0|Add3~94\ = CARRY(( \L2|L0|cont3[21]~DUPLICATE_q\ ) + ( GND ) + ( \L2|L0|Add3~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L0|ALT_INV_cont3[21]~DUPLICATE_q\,
	cin => \L2|L0|Add3~98\,
	sumout => \L2|L0|Add3~93_sumout\,
	cout => \L2|L0|Add3~94\);

-- Location: FF_X63_Y6_N34
\L2|L0|cont3[21]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add3~93_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont3[21]~DUPLICATE_q\);

-- Location: LABCELL_X63_Y6_N36
\L2|L0|Add3~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add3~89_sumout\ = SUM(( \L2|L0|cont3\(22) ) + ( GND ) + ( \L2|L0|Add3~94\ ))
-- \L2|L0|Add3~90\ = CARRY(( \L2|L0|cont3\(22) ) + ( GND ) + ( \L2|L0|Add3~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L0|ALT_INV_cont3\(22),
	cin => \L2|L0|Add3~94\,
	sumout => \L2|L0|Add3~89_sumout\,
	cout => \L2|L0|Add3~90\);

-- Location: FF_X63_Y6_N38
\L2|L0|cont3[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add3~89_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont3\(22));

-- Location: LABCELL_X63_Y6_N39
\L2|L0|Add3~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add3~85_sumout\ = SUM(( \L2|L0|cont3\(23) ) + ( GND ) + ( \L2|L0|Add3~90\ ))
-- \L2|L0|Add3~86\ = CARRY(( \L2|L0|cont3\(23) ) + ( GND ) + ( \L2|L0|Add3~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L0|ALT_INV_cont3\(23),
	cin => \L2|L0|Add3~90\,
	sumout => \L2|L0|Add3~85_sumout\,
	cout => \L2|L0|Add3~86\);

-- Location: FF_X63_Y6_N41
\L2|L0|cont3[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add3~85_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont3\(23));

-- Location: LABCELL_X63_Y6_N42
\L2|L0|Add3~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add3~81_sumout\ = SUM(( \L2|L0|cont3\(24) ) + ( GND ) + ( \L2|L0|Add3~86\ ))
-- \L2|L0|Add3~82\ = CARRY(( \L2|L0|cont3\(24) ) + ( GND ) + ( \L2|L0|Add3~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L2|L0|ALT_INV_cont3\(24),
	cin => \L2|L0|Add3~86\,
	sumout => \L2|L0|Add3~81_sumout\,
	cout => \L2|L0|Add3~82\);

-- Location: FF_X63_Y6_N44
\L2|L0|cont3[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add3~81_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont3\(24));

-- Location: LABCELL_X63_Y6_N45
\L2|L0|Add3~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add3~77_sumout\ = SUM(( \L2|L0|cont3\(25) ) + ( GND ) + ( \L2|L0|Add3~82\ ))
-- \L2|L0|Add3~78\ = CARRY(( \L2|L0|cont3\(25) ) + ( GND ) + ( \L2|L0|Add3~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L0|ALT_INV_cont3\(25),
	cin => \L2|L0|Add3~82\,
	sumout => \L2|L0|Add3~77_sumout\,
	cout => \L2|L0|Add3~78\);

-- Location: FF_X63_Y6_N47
\L2|L0|cont3[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add3~77_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont3\(25));

-- Location: LABCELL_X63_Y6_N48
\L2|L0|Add3~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add3~73_sumout\ = SUM(( \L2|L0|cont3\(26) ) + ( GND ) + ( \L2|L0|Add3~78\ ))
-- \L2|L0|Add3~74\ = CARRY(( \L2|L0|cont3\(26) ) + ( GND ) + ( \L2|L0|Add3~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L0|ALT_INV_cont3\(26),
	cin => \L2|L0|Add3~78\,
	sumout => \L2|L0|Add3~73_sumout\,
	cout => \L2|L0|Add3~74\);

-- Location: FF_X63_Y6_N50
\L2|L0|cont3[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add3~73_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont3\(26));

-- Location: LABCELL_X63_Y6_N51
\L2|L0|Add3~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Add3~69_sumout\ = SUM(( \L2|L0|cont3[27]~DUPLICATE_q\ ) + ( GND ) + ( \L2|L0|Add3~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L0|ALT_INV_cont3[27]~DUPLICATE_q\,
	cin => \L2|L0|Add3~74\,
	sumout => \L2|L0|Add3~69_sumout\);

-- Location: FF_X63_Y6_N53
\L2|L0|cont3[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add3~69_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont3\(27));

-- Location: FF_X63_Y7_N5
\L2|L0|cont3[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \L2|L0|Add3~57_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal3~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont3\(17));

-- Location: LABCELL_X63_Y7_N0
\L2|L0|Equal3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Equal3~2_combout\ = ( !\L2|L0|cont3\(17) & ( \L2|L0|cont3\(13) & ( (!\L2|L0|cont3\(27) & (!\L2|L0|cont3\(12) & (!\L2|L0|cont3\(0) & \L2|L0|cont3\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L0|ALT_INV_cont3\(27),
	datab => \L2|L0|ALT_INV_cont3\(12),
	datac => \L2|L0|ALT_INV_cont3\(0),
	datad => \L2|L0|ALT_INV_cont3\(15),
	datae => \L2|L0|ALT_INV_cont3\(17),
	dataf => \L2|L0|ALT_INV_cont3\(13),
	combout => \L2|L0|Equal3~2_combout\);

-- Location: FF_X63_Y6_N35
\L2|L0|cont3[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add3~93_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont3\(21));

-- Location: LABCELL_X63_Y6_N54
\L2|L0|Equal3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Equal3~3_combout\ = ( !\L2|L0|cont3\(25) & ( \L2|L0|cont3\(26) & ( (\L2|L0|cont3\(22) & (\L2|L0|cont3\(23) & (\L2|L0|cont3\(21) & \L2|L0|cont3\(24)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L0|ALT_INV_cont3\(22),
	datab => \L2|L0|ALT_INV_cont3\(23),
	datac => \L2|L0|ALT_INV_cont3\(21),
	datad => \L2|L0|ALT_INV_cont3\(24),
	datae => \L2|L0|ALT_INV_cont3\(25),
	dataf => \L2|L0|ALT_INV_cont3\(26),
	combout => \L2|L0|Equal3~3_combout\);

-- Location: FF_X63_Y6_N19
\L2|L0|cont3[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L0|Add3~109_sumout\,
	clrn => \L1|estadoAtual.Init~q\,
	sclr => \L2|L0|Equal3~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|cont3\(16));

-- Location: LABCELL_X62_Y6_N24
\L2|L0|Equal3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Equal3~4_combout\ = ( \L2|L0|cont3\(18) & ( (\L2|L0|cont3\(16) & (\L2|L0|cont3\(20) & !\L2|L0|cont3\(19))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L2|L0|ALT_INV_cont3\(16),
	datac => \L2|L0|ALT_INV_cont3\(20),
	datad => \L2|L0|ALT_INV_cont3\(19),
	dataf => \L2|L0|ALT_INV_cont3\(18),
	combout => \L2|L0|Equal3~4_combout\);

-- Location: LABCELL_X63_Y7_N9
\L2|L0|Equal3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L0|Equal3~5_combout\ = ( \L2|L0|Equal3~3_combout\ & ( \L2|L0|Equal3~4_combout\ & ( (\L2|L0|Equal3~1_combout\ & (\L2|L0|Equal3~0_combout\ & (!\L2|L0|cont3[1]~DUPLICATE_q\ & \L2|L0|Equal3~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L0|ALT_INV_Equal3~1_combout\,
	datab => \L2|L0|ALT_INV_Equal3~0_combout\,
	datac => \L2|L0|ALT_INV_cont3[1]~DUPLICATE_q\,
	datad => \L2|L0|ALT_INV_Equal3~2_combout\,
	datae => \L2|L0|ALT_INV_Equal3~3_combout\,
	dataf => \L2|L0|ALT_INV_Equal3~4_combout\,
	combout => \L2|L0|Equal3~5_combout\);

-- Location: FF_X62_Y7_N8
\L2|L0|C[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \L2|L0|Equal3~5_combout\,
	clrn => \L1|estadoAtual.Init~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L0|C\(3));

-- Location: LABCELL_X61_Y6_N15
\L2|L1|C~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L1|C~1_combout\ = ( !\L2|L0|C\(2) & ( \L2|L0|C\(3) & ( \L2|L16|C[3]~1_combout\ ) ) ) # ( \L2|L0|C\(2) & ( !\L2|L0|C\(3) & ( !\L2|L16|C[3]~1_combout\ ) ) ) # ( !\L2|L0|C\(2) & ( !\L2|L0|C\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111110000000000000000111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L2|L16|ALT_INV_C[3]~1_combout\,
	datae => \L2|L0|ALT_INV_C\(2),
	dataf => \L2|L0|ALT_INV_C\(3),
	combout => \L2|L1|C~1_combout\);

-- Location: LABCELL_X64_Y6_N30
\L2|L1|C~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L1|C~0_combout\ = ( \L2|L0|C\(1) & ( \L2|L1|C~1_combout\ & ( !\L2|L16|Equal1~0_combout\ ) ) ) # ( !\L2|L0|C\(1) & ( \L2|L1|C~1_combout\ ) ) # ( !\L2|L0|C\(1) & ( !\L2|L1|C~1_combout\ & ( \L2|L16|Equal1~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000011111111111111111111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \L2|L16|ALT_INV_Equal1~0_combout\,
	datae => \L2|L0|ALT_INV_C\(1),
	dataf => \L2|L1|ALT_INV_C~1_combout\,
	combout => \L2|L1|C~0_combout\);

-- Location: MLABCELL_X65_Y6_N42
\L2|L1|C\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L1|C~combout\ = LCELL(( \L2|L1|C~0_combout\ & ( (\L2|L0|C\(0) & !\L2|L16|Equal2~0_combout\) ) ) # ( !\L2|L1|C~0_combout\ & ( (\L2|L16|Equal2~0_combout\) # (\L2|L0|C\(0)) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L0|ALT_INV_C\(0),
	datad => \L2|L16|ALT_INV_Equal2~0_combout\,
	dataf => \L2|L1|ALT_INV_C~0_combout\,
	combout => \L2|L1|C~combout\);

-- Location: LABCELL_X64_Y6_N15
\L2|L3|aux_saida[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L3|aux_saida[0]~3_combout\ = ( !\L2|L3|aux_saida\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \L2|L3|ALT_INV_aux_saida\(0),
	combout => \L2|L3|aux_saida[0]~3_combout\);

-- Location: FF_X66_Y6_N29
\L2|L3|aux_saida[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L2|L1|C~combout\,
	asdata => \L2|L3|aux_saida[0]~3_combout\,
	clrn => \L1|estadoAtual.Init~q\,
	sload => VCC,
	ena => \L1|estadoAtual.Game~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L3|aux_saida\(0));

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

-- Location: FF_X65_Y6_N56
\L2|L9|aux_saida[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[1]~input_o\,
	clrn => \L1|estadoAtual.Init~q\,
	sload => VCC,
	ena => \L1|estadoAtual.Setup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L9|aux_saida\(1));

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

-- Location: FF_X65_Y6_N59
\L2|L9|aux_saida[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[0]~input_o\,
	clrn => \L1|estadoAtual.Init~q\,
	sload => VCC,
	ena => \L1|estadoAtual.Setup~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L9|aux_saida\(0));

-- Location: MLABCELL_X65_Y6_N36
\L2|L8|saida[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L8|saida[2]~0_combout\ = ( \L2|L9|aux_saida\(0) & ( \L2|L3|aux_saida\(1) & ( (!\L2|L3|aux_saida\(3) & ((!\L2|L3|aux_saida\(0) & (!\L2|L3|aux_saida\(2) $ (!\L2|L9|aux_saida\(1)))) # (\L2|L3|aux_saida\(0) & ((!\L2|L9|aux_saida\(1)) # 
-- (\L2|L3|aux_saida\(2)))))) ) ) ) # ( !\L2|L9|aux_saida\(0) & ( \L2|L3|aux_saida\(1) & ( (!\L2|L3|aux_saida\(3) & ((!\L2|L3|aux_saida\(0) $ (!\L2|L9|aux_saida\(1))) # (\L2|L3|aux_saida\(2)))) ) ) ) # ( \L2|L9|aux_saida\(0) & ( !\L2|L3|aux_saida\(1) & ( 
-- (!\L2|L3|aux_saida\(0) & (!\L2|L3|aux_saida\(2) $ (((!\L2|L3|aux_saida\(3)))))) # (\L2|L3|aux_saida\(0) & ((!\L2|L3|aux_saida\(2) & ((!\L2|L9|aux_saida\(1)) # (!\L2|L3|aux_saida\(3)))) # (\L2|L3|aux_saida\(2) & (!\L2|L9|aux_saida\(1) & 
-- !\L2|L3|aux_saida\(3))))) ) ) ) # ( !\L2|L9|aux_saida\(0) & ( !\L2|L3|aux_saida\(1) & ( (!\L2|L3|aux_saida\(0) & (!\L2|L3|aux_saida\(2) $ (((!\L2|L3|aux_saida\(3)))))) # (\L2|L3|aux_saida\(0) & (!\L2|L3|aux_saida\(3) & ((\L2|L9|aux_saida\(1)) # 
-- (\L2|L3|aux_saida\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011110001000011101101100100001111011000000000111100100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L3|ALT_INV_aux_saida\(0),
	datab => \L2|L3|ALT_INV_aux_saida\(2),
	datac => \L2|L9|ALT_INV_aux_saida\(1),
	datad => \L2|L3|ALT_INV_aux_saida\(3),
	datae => \L2|L9|ALT_INV_aux_saida\(0),
	dataf => \L2|L3|ALT_INV_aux_saida\(1),
	combout => \L2|L8|saida[2]~0_combout\);

-- Location: MLABCELL_X65_Y6_N45
\L2|L8|saida[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L8|saida[0]~1_combout\ = !\L2|L9|aux_saida\(0) $ (!\L2|L9|aux_saida\(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L9|ALT_INV_aux_saida\(0),
	datac => \L2|L9|ALT_INV_aux_saida\(1),
	combout => \L2|L8|saida[0]~1_combout\);

-- Location: LABCELL_X66_Y6_N33
\L2|L4|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L4|Mux6~0_combout\ = ( \L2|L3|aux_saida\(2) & ( (!\L2|L3|aux_saida\(3) & ((!\L2|L9|aux_saida\(1) & (!\L2|L3|aux_saida\(1) & \L2|L3|aux_saida\(0))) # (\L2|L9|aux_saida\(1) & ((!\L2|L3|aux_saida\(0)))))) ) ) # ( !\L2|L3|aux_saida\(2) & ( 
-- (!\L2|L3|aux_saida\(3) & (\L2|L3|aux_saida\(0) & ((\L2|L9|aux_saida\(1)) # (\L2|L3|aux_saida\(1))))) # (\L2|L3|aux_saida\(3) & (!\L2|L3|aux_saida\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001111010000010100111101000110000100000000011000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L3|ALT_INV_aux_saida\(1),
	datab => \L2|L9|ALT_INV_aux_saida\(1),
	datac => \L2|L3|ALT_INV_aux_saida\(3),
	datad => \L2|L3|ALT_INV_aux_saida\(0),
	dataf => \L2|L3|ALT_INV_aux_saida\(2),
	combout => \L2|L4|Mux6~0_combout\);

-- Location: LABCELL_X66_Y6_N0
\L2|L6|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L6|Mux6~0_combout\ = ( \L2|L3|aux_saida\(0) & ( \L2|L3|aux_saida\(2) & ( !\L2|L3|aux_saida\(3) ) ) ) # ( !\L2|L3|aux_saida\(0) & ( \L2|L3|aux_saida\(2) & ( !\L2|L3|aux_saida\(3) ) ) ) # ( \L2|L3|aux_saida\(0) & ( !\L2|L3|aux_saida\(2) & ( 
-- (!\L2|L3|aux_saida\(3)) # (!\L2|L3|aux_saida\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L3|ALT_INV_aux_saida\(3),
	datac => \L2|L3|ALT_INV_aux_saida\(1),
	datae => \L2|L3|ALT_INV_aux_saida\(0),
	dataf => \L2|L3|ALT_INV_aux_saida\(2),
	combout => \L2|L6|Mux6~0_combout\);

-- Location: LABCELL_X67_Y8_N27
\L2|L8|saida[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L8|saida[1]~2_combout\ = ( \L2|L6|Mux6~0_combout\ & ( (\L2|L4|Mux6~0_combout\) # (\L2|L8|saida[0]~1_combout\) ) ) # ( !\L2|L6|Mux6~0_combout\ & ( (!\L2|L8|saida[0]~1_combout\ & \L2|L4|Mux6~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L8|ALT_INV_saida[0]~1_combout\,
	datad => \L2|L4|ALT_INV_Mux6~0_combout\,
	dataf => \L2|L6|ALT_INV_Mux6~0_combout\,
	combout => \L2|L8|saida[1]~2_combout\);

-- Location: LABCELL_X66_Y6_N24
\L2|L8|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L8|saida[3]~3_combout\ = ( \L2|L3|aux_saida\(1) & ( \L2|L3|aux_saida\(2) & ( (!\L2|L3|aux_saida\(0) & (!\L2|L3|aux_saida\(3) & ((!\L2|L9|aux_saida\(1)) # (\L2|L9|aux_saida\(0))))) ) ) ) # ( !\L2|L3|aux_saida\(1) & ( \L2|L3|aux_saida\(2) & ( 
-- (\L2|L3|aux_saida\(0) & (\L2|L9|aux_saida\(1) & !\L2|L3|aux_saida\(3))) ) ) ) # ( \L2|L3|aux_saida\(1) & ( !\L2|L3|aux_saida\(2) & ( (\L2|L3|aux_saida\(0) & !\L2|L3|aux_saida\(3)) ) ) ) # ( !\L2|L3|aux_saida\(1) & ( !\L2|L3|aux_saida\(2) & ( 
-- (!\L2|L3|aux_saida\(0)) # ((\L2|L9|aux_saida\(1) & (\L2|L3|aux_saida\(3) & \L2|L9|aux_saida\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101011010100000101000000010000000100001000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L3|ALT_INV_aux_saida\(0),
	datab => \L2|L9|ALT_INV_aux_saida\(1),
	datac => \L2|L3|ALT_INV_aux_saida\(3),
	datad => \L2|L9|ALT_INV_aux_saida\(0),
	datae => \L2|L3|ALT_INV_aux_saida\(1),
	dataf => \L2|L3|ALT_INV_aux_saida\(2),
	combout => \L2|L8|saida[3]~3_combout\);

-- Location: LABCELL_X64_Y6_N48
\L2|L8|saida[0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L8|saida[0]~7_combout\ = ( \L2|L9|aux_saida\(1) & ( \L2|L3|aux_saida\(2) & ( (!\L2|L3|aux_saida\(3) & (((!\L2|L3|aux_saida\(1)) # (\L2|L9|aux_saida\(0))) # (\L2|L3|aux_saida\(0)))) ) ) ) # ( !\L2|L9|aux_saida\(1) & ( \L2|L3|aux_saida\(2) & ( 
-- (!\L2|L3|aux_saida\(3) & ((!\L2|L3|aux_saida\(1)) # (\L2|L3|aux_saida\(0)))) ) ) ) # ( \L2|L9|aux_saida\(1) & ( !\L2|L3|aux_saida\(2) & ( (!\L2|L3|aux_saida\(1) & (((!\L2|L3|aux_saida\(3)) # (\L2|L9|aux_saida\(0))) # (\L2|L3|aux_saida\(0)))) ) ) ) # ( 
-- !\L2|L9|aux_saida\(1) & ( !\L2|L3|aux_saida\(2) & ( (!\L2|L3|aux_saida\(1) & (((!\L2|L3|aux_saida\(3) & \L2|L9|aux_saida\(0))) # (\L2|L3|aux_saida\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011010000110100001111000011000100110001001100010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L3|ALT_INV_aux_saida\(0),
	datab => \L2|L3|ALT_INV_aux_saida\(3),
	datac => \L2|L3|ALT_INV_aux_saida\(1),
	datad => \L2|L9|ALT_INV_aux_saida\(0),
	datae => \L2|L9|ALT_INV_aux_saida\(1),
	dataf => \L2|L3|ALT_INV_aux_saida\(2),
	combout => \L2|L8|saida[0]~7_combout\);

-- Location: LABCELL_X83_Y8_N3
\L2|Ltemp1|F[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|Ltemp1|F[0]~0_combout\ = ( \L2|L8|saida[3]~3_combout\ & ( \L2|L8|saida[0]~7_combout\ & ( !\L2|L8|saida[2]~0_combout\ $ (!\L2|L8|saida[1]~2_combout\) ) ) ) # ( !\L2|L8|saida[3]~3_combout\ & ( \L2|L8|saida[0]~7_combout\ & ( (!\L2|L8|saida[2]~0_combout\ 
-- & !\L2|L8|saida[1]~2_combout\) ) ) ) # ( !\L2|L8|saida[3]~3_combout\ & ( !\L2|L8|saida[0]~7_combout\ & ( (\L2|L8|saida[2]~0_combout\ & !\L2|L8|saida[1]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100000000000000000010001000100010000110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L8|ALT_INV_saida[2]~0_combout\,
	datab => \L2|L8|ALT_INV_saida[1]~2_combout\,
	datae => \L2|L8|ALT_INV_saida[3]~3_combout\,
	dataf => \L2|L8|ALT_INV_saida[0]~7_combout\,
	combout => \L2|Ltemp1|F[0]~0_combout\);

-- Location: LABCELL_X83_Y8_N42
\L2|Ltemp1|F[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|Ltemp1|F[1]~1_combout\ = ( \L2|L8|saida[3]~3_combout\ & ( \L2|L8|saida[1]~2_combout\ & ( (\L2|L8|saida[2]~0_combout\) # (\L2|L8|saida[0]~7_combout\) ) ) ) # ( !\L2|L8|saida[3]~3_combout\ & ( \L2|L8|saida[1]~2_combout\ & ( (!\L2|L8|saida[0]~7_combout\ 
-- & \L2|L8|saida[2]~0_combout\) ) ) ) # ( \L2|L8|saida[3]~3_combout\ & ( !\L2|L8|saida[1]~2_combout\ & ( (!\L2|L8|saida[0]~7_combout\ & \L2|L8|saida[2]~0_combout\) ) ) ) # ( !\L2|L8|saida[3]~3_combout\ & ( !\L2|L8|saida[1]~2_combout\ & ( 
-- (\L2|L8|saida[0]~7_combout\ & \L2|L8|saida[2]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000010100000101000001010000010100101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L8|ALT_INV_saida[0]~7_combout\,
	datac => \L2|L8|ALT_INV_saida[2]~0_combout\,
	datae => \L2|L8|ALT_INV_saida[3]~3_combout\,
	dataf => \L2|L8|ALT_INV_saida[1]~2_combout\,
	combout => \L2|Ltemp1|F[1]~1_combout\);

-- Location: LABCELL_X83_Y8_N15
\L2|Ltemp1|F[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|Ltemp1|F[2]~2_combout\ = ( \L2|L8|saida[3]~3_combout\ & ( \L2|L8|saida[0]~7_combout\ & ( (\L2|L8|saida[2]~0_combout\ & \L2|L8|saida[1]~2_combout\) ) ) ) # ( \L2|L8|saida[3]~3_combout\ & ( !\L2|L8|saida[0]~7_combout\ & ( \L2|L8|saida[2]~0_combout\ ) ) 
-- ) # ( !\L2|L8|saida[3]~3_combout\ & ( !\L2|L8|saida[0]~7_combout\ & ( (!\L2|L8|saida[2]~0_combout\ & \L2|L8|saida[1]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010010101010101010100000000000000000001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L8|ALT_INV_saida[2]~0_combout\,
	datab => \L2|L8|ALT_INV_saida[1]~2_combout\,
	datae => \L2|L8|ALT_INV_saida[3]~3_combout\,
	dataf => \L2|L8|ALT_INV_saida[0]~7_combout\,
	combout => \L2|Ltemp1|F[2]~2_combout\);

-- Location: LABCELL_X83_Y8_N54
\L2|Ltemp1|F[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|Ltemp1|F[3]~3_combout\ = ( \L2|L8|saida[3]~3_combout\ & ( \L2|L8|saida[1]~2_combout\ & ( !\L2|L8|saida[0]~7_combout\ $ (\L2|L8|saida[2]~0_combout\) ) ) ) # ( !\L2|L8|saida[3]~3_combout\ & ( \L2|L8|saida[1]~2_combout\ & ( (\L2|L8|saida[0]~7_combout\ & 
-- \L2|L8|saida[2]~0_combout\) ) ) ) # ( !\L2|L8|saida[3]~3_combout\ & ( !\L2|L8|saida[1]~2_combout\ & ( !\L2|L8|saida[0]~7_combout\ $ (!\L2|L8|saida[2]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010000000000000000000000101000001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L8|ALT_INV_saida[0]~7_combout\,
	datac => \L2|L8|ALT_INV_saida[2]~0_combout\,
	datae => \L2|L8|ALT_INV_saida[3]~3_combout\,
	dataf => \L2|L8|ALT_INV_saida[1]~2_combout\,
	combout => \L2|Ltemp1|F[3]~3_combout\);

-- Location: LABCELL_X83_Y8_N36
\L2|Ltemp1|F[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|Ltemp1|F[4]~4_combout\ = ( !\L2|L8|saida[3]~3_combout\ & ( \L2|L8|saida[1]~2_combout\ & ( \L2|L8|saida[0]~7_combout\ ) ) ) # ( \L2|L8|saida[3]~3_combout\ & ( !\L2|L8|saida[1]~2_combout\ & ( (\L2|L8|saida[0]~7_combout\ & !\L2|L8|saida[2]~0_combout\) ) 
-- ) ) # ( !\L2|L8|saida[3]~3_combout\ & ( !\L2|L8|saida[1]~2_combout\ & ( (\L2|L8|saida[2]~0_combout\) # (\L2|L8|saida[0]~7_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010100000101000001010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L8|ALT_INV_saida[0]~7_combout\,
	datac => \L2|L8|ALT_INV_saida[2]~0_combout\,
	datae => \L2|L8|ALT_INV_saida[3]~3_combout\,
	dataf => \L2|L8|ALT_INV_saida[1]~2_combout\,
	combout => \L2|Ltemp1|F[4]~4_combout\);

-- Location: LABCELL_X83_Y8_N33
\L2|Ltemp1|F[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|Ltemp1|F[5]~5_combout\ = ( \L2|L8|saida[3]~3_combout\ & ( \L2|L8|saida[0]~7_combout\ & ( (\L2|L8|saida[2]~0_combout\ & !\L2|L8|saida[1]~2_combout\) ) ) ) # ( !\L2|L8|saida[3]~3_combout\ & ( \L2|L8|saida[0]~7_combout\ & ( (!\L2|L8|saida[2]~0_combout\) 
-- # (\L2|L8|saida[1]~2_combout\) ) ) ) # ( !\L2|L8|saida[3]~3_combout\ & ( !\L2|L8|saida[0]~7_combout\ & ( (!\L2|L8|saida[2]~0_combout\ & \L2|L8|saida[1]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010000000000000000010111011101110110100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L8|ALT_INV_saida[2]~0_combout\,
	datab => \L2|L8|ALT_INV_saida[1]~2_combout\,
	datae => \L2|L8|ALT_INV_saida[3]~3_combout\,
	dataf => \L2|L8|ALT_INV_saida[0]~7_combout\,
	combout => \L2|Ltemp1|F[5]~5_combout\);

-- Location: LABCELL_X83_Y8_N24
\L2|Ltemp1|F[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|Ltemp1|F[6]~6_combout\ = ( \L2|L8|saida[3]~3_combout\ & ( \L2|L8|saida[1]~2_combout\ ) ) # ( !\L2|L8|saida[3]~3_combout\ & ( \L2|L8|saida[1]~2_combout\ & ( (!\L2|L8|saida[0]~7_combout\) # (!\L2|L8|saida[2]~0_combout\) ) ) ) # ( 
-- \L2|L8|saida[3]~3_combout\ & ( !\L2|L8|saida[1]~2_combout\ & ( (!\L2|L8|saida[2]~0_combout\) # (\L2|L8|saida[0]~7_combout\) ) ) ) # ( !\L2|L8|saida[3]~3_combout\ & ( !\L2|L8|saida[1]~2_combout\ & ( \L2|L8|saida[2]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111111101011111010111111010111110101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L8|ALT_INV_saida[0]~7_combout\,
	datac => \L2|L8|ALT_INV_saida[2]~0_combout\,
	datae => \L2|L8|ALT_INV_saida[3]~3_combout\,
	dataf => \L2|L8|ALT_INV_saida[1]~2_combout\,
	combout => \L2|Ltemp1|F[6]~6_combout\);

-- Location: LABCELL_X66_Y6_N15
\L2|L6|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L6|Mux0~0_combout\ = ( !\L2|L3|aux_saida\(3) & ( \L2|L3|aux_saida\(2) & ( (!\L2|L3|aux_saida\(0) & (!\L2|L3|aux_saida\(1) & ((!\L2|L9|aux_saida\(0)) # (!\L2|L9|aux_saida\(1))))) # (\L2|L3|aux_saida\(0) & (((\L2|L3|aux_saida\(1))))) ) ) ) # ( 
-- \L2|L3|aux_saida\(3) & ( !\L2|L3|aux_saida\(2) & ( (!\L2|L3|aux_saida\(0) & !\L2|L3|aux_saida\(1)) ) ) ) # ( !\L2|L3|aux_saida\(3) & ( !\L2|L3|aux_saida\(2) & ( (\L2|L3|aux_saida\(0) & ((!\L2|L9|aux_saida\(0)) # ((!\L2|L9|aux_saida\(1)) # 
-- (!\L2|L3|aux_saida\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010100101010100000000010101000010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L3|ALT_INV_aux_saida\(0),
	datab => \L2|L9|ALT_INV_aux_saida\(0),
	datac => \L2|L9|ALT_INV_aux_saida\(1),
	datad => \L2|L3|ALT_INV_aux_saida\(1),
	datae => \L2|L3|ALT_INV_aux_saida\(3),
	dataf => \L2|L3|ALT_INV_aux_saida\(2),
	combout => \L2|L6|Mux0~0_combout\);

-- Location: LABCELL_X64_Y6_N39
\L2|L6|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L6|Mux1~0_combout\ = ( \L2|L9|aux_saida\(1) & ( \L2|L3|aux_saida\(0) & ( (!\L2|L3|aux_saida\(1) & ((\L2|L9|aux_saida\(0)) # (\L2|L3|aux_saida\(2)))) ) ) ) # ( !\L2|L9|aux_saida\(1) & ( \L2|L3|aux_saida\(0) & ( (\L2|L3|aux_saida\(2) & 
-- !\L2|L3|aux_saida\(1)) ) ) ) # ( \L2|L9|aux_saida\(1) & ( !\L2|L3|aux_saida\(0) & ( !\L2|L3|aux_saida\(1) $ (((!\L2|L3|aux_saida\(2) & \L2|L9|aux_saida\(0)))) ) ) ) # ( !\L2|L9|aux_saida\(1) & ( !\L2|L3|aux_saida\(0) & ( !\L2|L3|aux_saida\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000110111010010001001010101000000000111011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L3|ALT_INV_aux_saida\(2),
	datab => \L2|L9|ALT_INV_aux_saida\(0),
	datad => \L2|L3|ALT_INV_aux_saida\(1),
	datae => \L2|L9|ALT_INV_aux_saida\(1),
	dataf => \L2|L3|ALT_INV_aux_saida\(0),
	combout => \L2|L6|Mux1~0_combout\);

-- Location: LABCELL_X66_Y6_N57
\L2|L8|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L8|saida[4]~4_combout\ = ( \L2|L3|aux_saida\(0) & ( \L2|L3|aux_saida\(2) & ( (!\L2|L3|aux_saida\(3) & ((\L2|L9|aux_saida\(1)) # (\L2|L3|aux_saida\(1)))) ) ) ) # ( !\L2|L3|aux_saida\(0) & ( \L2|L3|aux_saida\(2) & ( (!\L2|L3|aux_saida\(3) & 
-- ((!\L2|L3|aux_saida\(1) & (\L2|L9|aux_saida\(1))) # (\L2|L3|aux_saida\(1) & ((\L2|L9|aux_saida\(0)))))) ) ) ) # ( \L2|L3|aux_saida\(0) & ( !\L2|L3|aux_saida\(2) & ( (!\L2|L3|aux_saida\(1) & (!\L2|L9|aux_saida\(1) & \L2|L3|aux_saida\(3))) # 
-- (\L2|L3|aux_saida\(1) & ((!\L2|L3|aux_saida\(3)))) ) ) ) # ( !\L2|L3|aux_saida\(0) & ( !\L2|L3|aux_saida\(2) & ( (!\L2|L3|aux_saida\(1) & ((!\L2|L3|aux_saida\(3)) # ((!\L2|L9|aux_saida\(1) & !\L2|L9|aux_saida\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010000000010101011000100000100111000000000111011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L3|ALT_INV_aux_saida\(1),
	datab => \L2|L9|ALT_INV_aux_saida\(1),
	datac => \L2|L9|ALT_INV_aux_saida\(0),
	datad => \L2|L3|ALT_INV_aux_saida\(3),
	datae => \L2|L3|ALT_INV_aux_saida\(0),
	dataf => \L2|L3|ALT_INV_aux_saida\(2),
	combout => \L2|L8|saida[4]~4_combout\);

-- Location: MLABCELL_X65_Y6_N33
\L2|L8|saida[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L8|saida[5]~6_combout\ = ( \L2|L9|aux_saida\(1) & ( \L2|L3|aux_saida\(1) & ( (!\L2|L3|aux_saida\(3) & !\L2|L3|aux_saida\(0)) ) ) ) # ( !\L2|L9|aux_saida\(1) & ( \L2|L3|aux_saida\(1) & ( (!\L2|L3|aux_saida\(3) & ((!\L2|L3|aux_saida\(2) & 
-- (!\L2|L9|aux_saida\(0) $ (!\L2|L3|aux_saida\(0)))) # (\L2|L3|aux_saida\(2) & ((!\L2|L3|aux_saida\(0)) # (\L2|L9|aux_saida\(0)))))) ) ) ) # ( \L2|L9|aux_saida\(1) & ( !\L2|L3|aux_saida\(1) & ( (!\L2|L3|aux_saida\(2) & (((!\L2|L3|aux_saida\(3) & 
-- !\L2|L9|aux_saida\(0))) # (\L2|L3|aux_saida\(0)))) # (\L2|L3|aux_saida\(2) & (!\L2|L3|aux_saida\(3))) ) ) ) # ( !\L2|L9|aux_saida\(1) & ( !\L2|L3|aux_saida\(1) & ( (!\L2|L3|aux_saida\(2) & (\L2|L3|aux_saida\(3))) # (\L2|L3|aux_saida\(2) & 
-- (!\L2|L3|aux_saida\(3) & ((!\L2|L3|aux_saida\(0)) # (\L2|L9|aux_saida\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011000100110110001001110111001001100100001001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L3|ALT_INV_aux_saida\(2),
	datab => \L2|L3|ALT_INV_aux_saida\(3),
	datac => \L2|L9|ALT_INV_aux_saida\(0),
	datad => \L2|L3|ALT_INV_aux_saida\(0),
	datae => \L2|L9|ALT_INV_aux_saida\(1),
	dataf => \L2|L3|ALT_INV_aux_saida\(1),
	combout => \L2|L8|saida[5]~6_combout\);

-- Location: LABCELL_X67_Y7_N0
\L2|Ltemp|F[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|Ltemp|F[0]~0_combout\ = ( \L2|L8|saida[4]~4_combout\ & ( \L2|L8|saida[5]~6_combout\ & ( (\L2|L6|Mux0~0_combout\ & ((\L2|L6|Mux1~0_combout\) # (\L2|L3|aux_saida\(3)))) ) ) ) # ( \L2|L8|saida[4]~4_combout\ & ( !\L2|L8|saida[5]~6_combout\ & ( 
-- !\L2|L6|Mux0~0_combout\ $ (((!\L2|L3|aux_saida\(3) & !\L2|L6|Mux1~0_combout\))) ) ) ) # ( !\L2|L8|saida[4]~4_combout\ & ( !\L2|L8|saida[5]~6_combout\ & ( (!\L2|L6|Mux0~0_combout\ & (!\L2|L3|aux_saida\(3) & !\L2|L6|Mux1~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000011010100110101000000000000000000001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L6|ALT_INV_Mux0~0_combout\,
	datab => \L2|L3|ALT_INV_aux_saida\(3),
	datac => \L2|L6|ALT_INV_Mux1~0_combout\,
	datae => \L2|L8|ALT_INV_saida[4]~4_combout\,
	dataf => \L2|L8|ALT_INV_saida[5]~6_combout\,
	combout => \L2|Ltemp|F[0]~0_combout\);

-- Location: LABCELL_X66_Y7_N51
\L2|Ltemp|F[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|Ltemp|F[1]~1_combout\ = ( \L2|L3|aux_saida\(3) & ( (\L2|L8|saida[5]~6_combout\ & (\L2|L8|saida[4]~4_combout\ & \L2|L6|Mux0~0_combout\)) ) ) # ( !\L2|L3|aux_saida\(3) & ( (!\L2|L8|saida[5]~6_combout\ & (!\L2|L6|Mux1~0_combout\ & 
-- (!\L2|L8|saida[4]~4_combout\ $ (!\L2|L6|Mux0~0_combout\)))) # (\L2|L8|saida[5]~6_combout\ & ((!\L2|L8|saida[4]~4_combout\ & (!\L2|L6|Mux1~0_combout\)) # (\L2|L8|saida[4]~4_combout\ & ((\L2|L6|Mux0~0_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100010100011001010001010001100000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L6|ALT_INV_Mux1~0_combout\,
	datab => \L2|L8|ALT_INV_saida[5]~6_combout\,
	datac => \L2|L8|ALT_INV_saida[4]~4_combout\,
	datad => \L2|L6|ALT_INV_Mux0~0_combout\,
	dataf => \L2|L3|ALT_INV_aux_saida\(3),
	combout => \L2|Ltemp|F[1]~1_combout\);

-- Location: LABCELL_X64_Y7_N42
\L2|Ltemp|F[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|Ltemp|F[2]~2_combout\ = ( \L2|L8|saida[4]~4_combout\ & ( \L2|L6|Mux0~0_combout\ & ( (!\L2|L6|Mux1~0_combout\ & (\L2|L8|saida[5]~6_combout\ & !\L2|L3|aux_saida\(3))) ) ) ) # ( !\L2|L8|saida[4]~4_combout\ & ( \L2|L6|Mux0~0_combout\ & ( 
-- (!\L2|L6|Mux1~0_combout\ & !\L2|L3|aux_saida\(3)) ) ) ) # ( !\L2|L8|saida[4]~4_combout\ & ( !\L2|L6|Mux0~0_combout\ & ( (\L2|L8|saida[5]~6_combout\ & ((\L2|L3|aux_saida\(3)) # (\L2|L6|Mux1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011000000000000000010100000101000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L6|ALT_INV_Mux1~0_combout\,
	datab => \L2|L8|ALT_INV_saida[5]~6_combout\,
	datac => \L2|L3|ALT_INV_aux_saida\(3),
	datae => \L2|L8|ALT_INV_saida[4]~4_combout\,
	dataf => \L2|L6|ALT_INV_Mux0~0_combout\,
	combout => \L2|Ltemp|F[2]~2_combout\);

-- Location: MLABCELL_X65_Y7_N39
\L2|L6|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L6|Mux1~1_combout\ = (!\L2|L6|Mux1~0_combout\ & !\L2|L3|aux_saida\(3))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L6|ALT_INV_Mux1~0_combout\,
	datad => \L2|L3|ALT_INV_aux_saida\(3),
	combout => \L2|L6|Mux1~1_combout\);

-- Location: MLABCELL_X65_Y7_N42
\L2|Ltemp|F[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|Ltemp|F[3]~3_combout\ = ( \L2|L6|Mux0~0_combout\ & ( (\L2|L8|saida[5]~6_combout\ & (!\L2|L8|saida[4]~4_combout\ $ (\L2|L6|Mux1~1_combout\))) ) ) # ( !\L2|L6|Mux0~0_combout\ & ( (!\L2|L8|saida[4]~4_combout\ & (\L2|L6|Mux1~1_combout\ & 
-- !\L2|L8|saida[5]~6_combout\)) # (\L2|L8|saida[4]~4_combout\ & (!\L2|L6|Mux1~1_combout\ $ (\L2|L8|saida[5]~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000101100001000010010000100101100001011000010000100100001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L8|ALT_INV_saida[4]~4_combout\,
	datab => \L2|L6|ALT_INV_Mux1~1_combout\,
	datac => \L2|L8|ALT_INV_saida[5]~6_combout\,
	datae => \L2|L6|ALT_INV_Mux0~0_combout\,
	combout => \L2|Ltemp|F[3]~3_combout\);

-- Location: MLABCELL_X65_Y7_N27
\L2|Ltemp|F[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|Ltemp|F[4]~4_combout\ = ( \L2|L6|Mux1~1_combout\ & ( (!\L2|L6|Mux0~0_combout\ & ((!\L2|L8|saida[5]~6_combout\) # (\L2|L8|saida[4]~4_combout\))) ) ) # ( !\L2|L6|Mux1~1_combout\ & ( (\L2|L8|saida[4]~4_combout\ & ((!\L2|L8|saida[5]~6_combout\) # 
-- (!\L2|L6|Mux0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111010000000001111101010100000111100001010000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L8|ALT_INV_saida[5]~6_combout\,
	datac => \L2|L6|ALT_INV_Mux0~0_combout\,
	datad => \L2|L8|ALT_INV_saida[4]~4_combout\,
	dataf => \L2|L6|ALT_INV_Mux1~1_combout\,
	combout => \L2|Ltemp|F[4]~4_combout\);

-- Location: LABCELL_X66_Y7_N30
\L2|Ltemp|F[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|Ltemp|F[5]~5_combout\ = ( \L2|L3|aux_saida\(3) & ( (!\L2|L6|Mux0~0_combout\ & ((\L2|L8|saida[5]~6_combout\) # (\L2|L8|saida[4]~4_combout\))) ) ) # ( !\L2|L3|aux_saida\(3) & ( (!\L2|L6|Mux1~0_combout\ & (\L2|L8|saida[4]~4_combout\ & 
-- (!\L2|L6|Mux0~0_combout\ $ (!\L2|L8|saida[5]~6_combout\)))) # (\L2|L6|Mux1~0_combout\ & (!\L2|L6|Mux0~0_combout\ & ((\L2|L8|saida[5]~6_combout\) # (\L2|L8|saida[4]~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001001110000000100100111000000110000111100000011000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L6|ALT_INV_Mux1~0_combout\,
	datab => \L2|L8|ALT_INV_saida[4]~4_combout\,
	datac => \L2|L6|ALT_INV_Mux0~0_combout\,
	datad => \L2|L8|ALT_INV_saida[5]~6_combout\,
	dataf => \L2|L3|ALT_INV_aux_saida\(3),
	combout => \L2|Ltemp|F[5]~5_combout\);

-- Location: MLABCELL_X65_Y7_N30
\L2|Ltemp|F[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|Ltemp|F[6]~6_combout\ = ( \L2|L6|Mux0~0_combout\ & ( \L2|L8|saida[4]~4_combout\ ) ) # ( !\L2|L6|Mux0~0_combout\ & ( \L2|L8|saida[4]~4_combout\ & ( !\L2|L8|saida[5]~6_combout\ $ (!\L2|L6|Mux1~1_combout\) ) ) ) # ( \L2|L6|Mux0~0_combout\ & ( 
-- !\L2|L8|saida[4]~4_combout\ & ( (!\L2|L6|Mux1~1_combout\) # (\L2|L8|saida[5]~6_combout\) ) ) ) # ( !\L2|L6|Mux0~0_combout\ & ( !\L2|L8|saida[4]~4_combout\ & ( (\L2|L6|Mux1~1_combout\) # (\L2|L8|saida[5]~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111111111110101010101010101101010101111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L8|ALT_INV_saida[5]~6_combout\,
	datad => \L2|L6|ALT_INV_Mux1~1_combout\,
	datae => \L2|L6|ALT_INV_Mux0~0_combout\,
	dataf => \L2|L8|ALT_INV_saida[4]~4_combout\,
	combout => \L2|Ltemp|F[6]~6_combout\);

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

-- Location: FF_X65_Y6_N40
\L2|L12|saida[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[6]~input_o\,
	clrn => \L1|estadoAtual.Init~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L12|saida\(6));

-- Location: MLABCELL_X65_Y6_N51
\L2|L8|saida[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L8|saida[6]~5_combout\ = ( \L2|L9|aux_saida\(0) & ( \L2|L9|aux_saida\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L9|ALT_INV_aux_saida\(1),
	dataf => \L2|L9|ALT_INV_aux_saida\(0),
	combout => \L2|L8|saida[6]~5_combout\);

-- Location: MLABCELL_X65_Y6_N54
\L2|L13|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L13|Equal0~1_combout\ = ( \L2|L12|saida\(6) & ( \L2|L8|saida[6]~5_combout\ & ( (!\L2|L3|aux_saida\(1) $ (((!\L2|L3|aux_saida\(0) & !\L2|L3|aux_saida\(2))))) # (\L2|L3|aux_saida\(3)) ) ) ) # ( !\L2|L12|saida\(6) & ( \L2|L8|saida[6]~5_combout\ & ( 
-- (!\L2|L3|aux_saida\(3) & (!\L2|L3|aux_saida\(1) $ (((\L2|L3|aux_saida\(2)) # (\L2|L3|aux_saida\(0)))))) ) ) ) # ( \L2|L12|saida\(6) & ( !\L2|L8|saida[6]~5_combout\ & ( ((!\L2|L3|aux_saida\(1) & ((!\L2|L3|aux_saida\(0)) # (\L2|L3|aux_saida\(2))))) # 
-- (\L2|L3|aux_saida\(3)) ) ) ) # ( !\L2|L12|saida\(6) & ( !\L2|L8|saida[6]~5_combout\ & ( (!\L2|L3|aux_saida\(3) & (((\L2|L3|aux_saida\(0) & !\L2|L3|aux_saida\(2))) # (\L2|L3|aux_saida\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110001000100101100111011101110000100010001000111101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L3|ALT_INV_aux_saida\(1),
	datab => \L2|L3|ALT_INV_aux_saida\(3),
	datac => \L2|L3|ALT_INV_aux_saida\(0),
	datad => \L2|L3|ALT_INV_aux_saida\(2),
	datae => \L2|L12|ALT_INV_saida\(6),
	dataf => \L2|L8|ALT_INV_saida[6]~5_combout\,
	combout => \L2|L13|Equal0~1_combout\);

-- Location: LABCELL_X64_Y6_N6
\L2|L14|aux_saida[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L14|aux_saida[0]~3_combout\ = !\L2|L14|aux_saida\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L2|L14|ALT_INV_aux_saida\(0),
	combout => \L2|L14|aux_saida[0]~3_combout\);

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

-- Location: FF_X66_Y6_N2
\L2|L12|saida[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[2]~input_o\,
	clrn => \L1|estadoAtual.Init~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L12|saida\(2));

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

-- Location: FF_X64_Y6_N11
\L2|L12|saida[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[4]~input_o\,
	clrn => \L1|estadoAtual.Init~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L12|saida\(4));

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

-- Location: FF_X66_Y6_N50
\L2|L12|saida[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[5]~input_o\,
	clrn => \L1|estadoAtual.Init~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L12|saida\(5));

-- Location: LABCELL_X66_Y6_N48
\L2|L13|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L13|Equal0~2_combout\ = ( \L2|L12|saida\(5) & ( \L2|L8|saida[5]~6_combout\ & ( (!\L2|L12|saida\(2) & (!\L2|L8|saida[2]~0_combout\ & (!\L2|L12|saida\(4) $ (\L2|L8|saida[4]~4_combout\)))) # (\L2|L12|saida\(2) & (\L2|L8|saida[2]~0_combout\ & 
-- (!\L2|L12|saida\(4) $ (\L2|L8|saida[4]~4_combout\)))) ) ) ) # ( !\L2|L12|saida\(5) & ( !\L2|L8|saida[5]~6_combout\ & ( (!\L2|L12|saida\(2) & (!\L2|L8|saida[2]~0_combout\ & (!\L2|L12|saida\(4) $ (\L2|L8|saida[4]~4_combout\)))) # (\L2|L12|saida\(2) & 
-- (\L2|L8|saida[2]~0_combout\ & (!\L2|L12|saida\(4) $ (\L2|L8|saida[4]~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000100001000000000000000000000000000000001000010000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L12|ALT_INV_saida\(2),
	datab => \L2|L12|ALT_INV_saida\(4),
	datac => \L2|L8|ALT_INV_saida[2]~0_combout\,
	datad => \L2|L8|ALT_INV_saida[4]~4_combout\,
	datae => \L2|L12|ALT_INV_saida\(5),
	dataf => \L2|L8|ALT_INV_saida[5]~6_combout\,
	combout => \L2|L13|Equal0~2_combout\);

-- Location: LABCELL_X66_Y6_N30
\L2|L13|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L13|Equal0~6_combout\ = ( \L2|L3|aux_saida\(2) & ( (!\L2|L3|aux_saida\(3) & ((!\L2|L3|aux_saida\(1)) # ((\L2|L9|aux_saida\(1) & \L2|L9|aux_saida\(0))))) ) ) # ( !\L2|L3|aux_saida\(2) & ( (!\L2|L3|aux_saida\(1) & ((!\L2|L9|aux_saida\(1) & 
-- (\L2|L9|aux_saida\(0) & !\L2|L3|aux_saida\(3))) # (\L2|L9|aux_saida\(1) & ((!\L2|L3|aux_saida\(3)) # (\L2|L9|aux_saida\(0)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000000010001010100000001010101011000000001010101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L3|ALT_INV_aux_saida\(1),
	datab => \L2|L9|ALT_INV_aux_saida\(1),
	datac => \L2|L9|ALT_INV_aux_saida\(0),
	datad => \L2|L3|ALT_INV_aux_saida\(3),
	dataf => \L2|L3|ALT_INV_aux_saida\(2),
	combout => \L2|L13|Equal0~6_combout\);

-- Location: FF_X66_Y6_N52
\L2|L12|saida[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[0]~input_o\,
	clrn => \L1|estadoAtual.Init~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L12|saida\(0));

-- Location: LABCELL_X66_Y6_N18
\L2|L13|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L13|Equal0~0_combout\ = ( \L2|L3|aux_saida\(0) & ( \L2|L12|saida\(0) & ( (!\L2|L3|aux_saida\(1) & (!\L2|L13|Equal0~6_combout\ & (\L2|L3|aux_saida\(2)))) # (\L2|L3|aux_saida\(1) & (((!\L2|L3|aux_saida\(2)) # (\L2|L3|aux_saida\(3))))) ) ) ) # ( 
-- !\L2|L3|aux_saida\(0) & ( \L2|L12|saida\(0) & ( !\L2|L13|Equal0~6_combout\ ) ) ) # ( \L2|L3|aux_saida\(0) & ( !\L2|L12|saida\(0) & ( (!\L2|L3|aux_saida\(1) & (((!\L2|L3|aux_saida\(2))) # (\L2|L13|Equal0~6_combout\))) # (\L2|L3|aux_saida\(1) & 
-- (((\L2|L3|aux_saida\(2) & !\L2|L3|aux_saida\(3))))) ) ) ) # ( !\L2|L3|aux_saida\(0) & ( !\L2|L12|saida\(0) & ( \L2|L13|Equal0~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011101001111010001011001100110011000101100001011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L3|ALT_INV_aux_saida\(1),
	datab => \L2|L13|ALT_INV_Equal0~6_combout\,
	datac => \L2|L3|ALT_INV_aux_saida\(2),
	datad => \L2|L3|ALT_INV_aux_saida\(3),
	datae => \L2|L3|ALT_INV_aux_saida\(0),
	dataf => \L2|L12|ALT_INV_saida\(0),
	combout => \L2|L13|Equal0~0_combout\);

-- Location: FF_X66_Y6_N5
\L2|L12|saida[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[1]~input_o\,
	clrn => \L1|estadoAtual.Init~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L12|saida\(1));

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

-- Location: FF_X66_Y6_N37
\L2|L12|saida[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[7]~input_o\,
	clrn => \L1|estadoAtual.Init~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L12|saida\(7));

-- Location: LABCELL_X66_Y6_N39
\L2|L13|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L13|Equal0~3_combout\ = ( \L2|L6|Mux6~0_combout\ & ( \L2|L4|Mux6~0_combout\ & ( (\L2|L12|saida\(1) & (!\L2|L6|Mux0~0_combout\ $ (\L2|L12|saida\(7)))) ) ) ) # ( !\L2|L6|Mux6~0_combout\ & ( \L2|L4|Mux6~0_combout\ & ( (!\L2|L12|saida\(1) & 
-- (\L2|L8|saida[0]~1_combout\ & (!\L2|L6|Mux0~0_combout\ $ (\L2|L12|saida\(7))))) # (\L2|L12|saida\(1) & (!\L2|L8|saida[0]~1_combout\ & (!\L2|L6|Mux0~0_combout\ $ (\L2|L12|saida\(7))))) ) ) ) # ( \L2|L6|Mux6~0_combout\ & ( !\L2|L4|Mux6~0_combout\ & ( 
-- (!\L2|L12|saida\(1) & (!\L2|L8|saida[0]~1_combout\ & (!\L2|L6|Mux0~0_combout\ $ (\L2|L12|saida\(7))))) # (\L2|L12|saida\(1) & (\L2|L8|saida[0]~1_combout\ & (!\L2|L6|Mux0~0_combout\ $ (\L2|L12|saida\(7))))) ) ) ) # ( !\L2|L6|Mux6~0_combout\ & ( 
-- !\L2|L4|Mux6~0_combout\ & ( (!\L2|L12|saida\(1) & (!\L2|L6|Mux0~0_combout\ $ (\L2|L12|saida\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001010100100000000100101100000000001100101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L12|ALT_INV_saida\(1),
	datab => \L2|L8|ALT_INV_saida[0]~1_combout\,
	datac => \L2|L6|ALT_INV_Mux0~0_combout\,
	datad => \L2|L12|ALT_INV_saida\(7),
	datae => \L2|L6|ALT_INV_Mux6~0_combout\,
	dataf => \L2|L4|ALT_INV_Mux6~0_combout\,
	combout => \L2|L13|Equal0~3_combout\);

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

-- Location: FF_X66_Y6_N8
\L2|L12|saida[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[3]~input_o\,
	clrn => \L1|estadoAtual.Init~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L12|saida\(3));

-- Location: LABCELL_X66_Y6_N6
\L2|L13|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L13|Equal0~4_combout\ = ( \L2|L12|saida\(3) & ( !\L2|L13|Equal0~1_combout\ & ( (\L2|L13|Equal0~2_combout\ & (\L2|L8|saida[3]~3_combout\ & (!\L2|L13|Equal0~0_combout\ & \L2|L13|Equal0~3_combout\))) ) ) ) # ( !\L2|L12|saida\(3) & ( 
-- !\L2|L13|Equal0~1_combout\ & ( (\L2|L13|Equal0~2_combout\ & (!\L2|L8|saida[3]~3_combout\ & (!\L2|L13|Equal0~0_combout\ & \L2|L13|Equal0~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L13|ALT_INV_Equal0~2_combout\,
	datab => \L2|L8|ALT_INV_saida[3]~3_combout\,
	datac => \L2|L13|ALT_INV_Equal0~0_combout\,
	datad => \L2|L13|ALT_INV_Equal0~3_combout\,
	datae => \L2|L12|ALT_INV_saida\(3),
	dataf => \L2|L13|ALT_INV_Equal0~1_combout\,
	combout => \L2|L13|Equal0~4_combout\);

-- Location: FF_X66_Y6_N47
\L2|L14|aux_saida[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L2|L1|C~combout\,
	asdata => \L2|L14|aux_saida[0]~3_combout\,
	clrn => \L1|estadoAtual.Init~q\,
	sload => VCC,
	ena => \L2|L13|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L14|aux_saida\(0));

-- Location: LABCELL_X67_Y6_N36
\L2|L14|aux_saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L14|aux_saida~0_combout\ = ( \L2|L14|aux_saida\(2) & ( !\L2|L14|aux_saida\(3) $ (((!\L2|L14|aux_saida\(0)) # (!\L2|L14|aux_saida\(1)))) ) ) # ( !\L2|L14|aux_saida\(2) & ( (\L2|L14|aux_saida\(3) & ((!\L2|L14|aux_saida\(0)) # (\L2|L14|aux_saida\(1)))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001100100011001000110010001100110110001101100011011000110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L14|ALT_INV_aux_saida\(0),
	datab => \L2|L14|ALT_INV_aux_saida\(3),
	datac => \L2|L14|ALT_INV_aux_saida\(1),
	dataf => \L2|L14|ALT_INV_aux_saida\(2),
	combout => \L2|L14|aux_saida~0_combout\);

-- Location: FF_X66_Y6_N14
\L2|L14|aux_saida[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L2|L1|C~combout\,
	asdata => \L2|L14|aux_saida~0_combout\,
	clrn => \L1|estadoAtual.Init~q\,
	sload => VCC,
	ena => \L2|L13|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L14|aux_saida\(3));

-- Location: LABCELL_X67_Y6_N54
\L2|L14|aux_saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L14|aux_saida~2_combout\ = ( \L2|L14|aux_saida\(2) & ( !\L2|L14|aux_saida\(1) $ (!\L2|L14|aux_saida\(0)) ) ) # ( !\L2|L14|aux_saida\(2) & ( (!\L2|L14|aux_saida\(1) & (\L2|L14|aux_saida\(0) & !\L2|L14|aux_saida\(3))) # (\L2|L14|aux_saida\(1) & 
-- (!\L2|L14|aux_saida\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000110000001111000011000000111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L2|L14|ALT_INV_aux_saida\(1),
	datac => \L2|L14|ALT_INV_aux_saida\(0),
	datad => \L2|L14|ALT_INV_aux_saida\(3),
	dataf => \L2|L14|ALT_INV_aux_saida\(2),
	combout => \L2|L14|aux_saida~2_combout\);

-- Location: FF_X66_Y6_N23
\L2|L14|aux_saida[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L2|L1|C~combout\,
	asdata => \L2|L14|aux_saida~2_combout\,
	clrn => \L1|estadoAtual.Init~q\,
	sload => VCC,
	ena => \L2|L13|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L14|aux_saida\(1));

-- Location: LABCELL_X66_Y6_N42
\L2|L13|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L13|Equal0~5_combout\ = ( \L2|L13|Equal0~2_combout\ & ( \L2|L8|saida[3]~3_combout\ & ( (\L2|L12|saida\(3) & (!\L2|L13|Equal0~0_combout\ & \L2|L13|Equal0~3_combout\)) ) ) ) # ( \L2|L13|Equal0~2_combout\ & ( !\L2|L8|saida[3]~3_combout\ & ( 
-- (!\L2|L12|saida\(3) & (!\L2|L13|Equal0~0_combout\ & \L2|L13|Equal0~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000100000000000000000000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L12|ALT_INV_saida\(3),
	datab => \L2|L13|ALT_INV_Equal0~0_combout\,
	datad => \L2|L13|ALT_INV_Equal0~3_combout\,
	datae => \L2|L13|ALT_INV_Equal0~2_combout\,
	dataf => \L2|L8|ALT_INV_saida[3]~3_combout\,
	combout => \L2|L13|Equal0~5_combout\);

-- Location: LABCELL_X67_Y6_N27
\L2|L14|aux_saida[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L14|aux_saida[2]~1_combout\ = ( \L2|L13|Equal0~5_combout\ & ( !\L2|L14|aux_saida\(2) $ ((((!\L2|L14|aux_saida\(0)) # (!\L2|L14|aux_saida\(1))) # (\L2|L13|Equal0~1_combout\))) ) ) # ( !\L2|L13|Equal0~5_combout\ & ( \L2|L14|aux_saida\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001110010011001100111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L13|ALT_INV_Equal0~1_combout\,
	datab => \L2|L14|ALT_INV_aux_saida\(2),
	datac => \L2|L14|ALT_INV_aux_saida\(0),
	datad => \L2|L14|ALT_INV_aux_saida\(1),
	dataf => \L2|L13|ALT_INV_Equal0~5_combout\,
	combout => \L2|L14|aux_saida[2]~1_combout\);

-- Location: FF_X67_Y6_N20
\L2|L14|aux_saida[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \L2|L1|C~combout\,
	asdata => \L2|L14|aux_saida[2]~1_combout\,
	clrn => \L1|estadoAtual.Init~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L14|aux_saida\(2));

-- Location: LABCELL_X45_Y4_N21
\L2|L16|C[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L16|C[3]~3_combout\ = ( \L2|L14|aux_saida\(1) & ( \SW[8]~input_o\ & ( !\SW[9]~input_o\ ) ) ) # ( \L2|L14|aux_saida\(1) & ( !\SW[8]~input_o\ & ( (!\SW[9]~input_o\ & (\L2|L14|aux_saida\(2))) # (\SW[9]~input_o\ & ((\L2|L14|aux_saida\(0)))) ) ) ) # ( 
-- !\L2|L14|aux_saida\(1) & ( !\SW[8]~input_o\ & ( (!\SW[9]~input_o\ & (\L2|L14|aux_saida\(2))) # (\SW[9]~input_o\ & ((\L2|L14|aux_saida\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datac => \L2|L14|ALT_INV_aux_saida\(2),
	datad => \L2|L14|ALT_INV_aux_saida\(0),
	datae => \L2|L14|ALT_INV_aux_saida\(1),
	dataf => \ALT_INV_SW[8]~input_o\,
	combout => \L2|L16|C[3]~3_combout\);

-- Location: FF_X45_Y4_N22
\L2|L17|saida[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L16|C[3]~3_combout\,
	clrn => \L1|estadoAtual.Init~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L17|saida\(3));

-- Location: LABCELL_X45_Y4_N36
\L2|L175|saida[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L175|saida[3]~feeder_combout\ = ( \L2|L17|saida\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \L2|L17|ALT_INV_saida\(3),
	combout => \L2|L175|saida[3]~feeder_combout\);

-- Location: FF_X45_Y4_N38
\L2|L175|saida[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L175|saida[3]~feeder_combout\,
	clrn => \L1|estadoAtual.Result~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L175|saida\(3));

-- Location: LABCELL_X45_Y4_N15
\L2|L16|C[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L16|C[1]~4_combout\ = ( !\SW[8]~input_o\ & ( (!\SW[9]~input_o\ & \L2|L14|aux_saida\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datad => \L2|L14|ALT_INV_aux_saida\(0),
	dataf => \ALT_INV_SW[8]~input_o\,
	combout => \L2|L16|C[1]~4_combout\);

-- Location: FF_X45_Y4_N16
\L2|L17|saida[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L16|C[1]~4_combout\,
	clrn => \L1|estadoAtual.Init~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L17|saida\(1));

-- Location: LABCELL_X45_Y4_N57
\L2|L175|saida[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L175|saida[1]~feeder_combout\ = ( \L2|L17|saida\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \L2|L17|ALT_INV_saida\(1),
	combout => \L2|L175|saida[1]~feeder_combout\);

-- Location: FF_X45_Y4_N59
\L2|L175|saida[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L175|saida[1]~feeder_combout\,
	clrn => \L1|estadoAtual.Result~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L175|saida\(1));

-- Location: LABCELL_X35_Y5_N27
\L2|L16|C[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L16|C[2]~2_combout\ = ( \L2|L14|aux_saida\(0) & ( \SW[8]~input_o\ & ( !\SW[9]~input_o\ ) ) ) # ( \L2|L14|aux_saida\(0) & ( !\SW[8]~input_o\ & ( (!\SW[9]~input_o\ & \L2|L14|aux_saida\(1)) ) ) ) # ( !\L2|L14|aux_saida\(0) & ( !\SW[8]~input_o\ & ( 
-- (!\SW[9]~input_o\ & \L2|L14|aux_saida\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datac => \L2|L14|ALT_INV_aux_saida\(1),
	datae => \L2|L14|ALT_INV_aux_saida\(0),
	dataf => \ALT_INV_SW[8]~input_o\,
	combout => \L2|L16|C[2]~2_combout\);

-- Location: FF_X35_Y5_N28
\L2|L17|saida[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L16|C[2]~2_combout\,
	clrn => \L1|estadoAtual.Init~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L17|saida\(2));

-- Location: LABCELL_X35_Y5_N15
\L2|L175|saida[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L175|saida[2]~feeder_combout\ = ( \L2|L17|saida\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \L2|L17|ALT_INV_saida\(2),
	combout => \L2|L175|saida[2]~feeder_combout\);

-- Location: FF_X35_Y5_N17
\L2|L175|saida[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L175|saida[2]~feeder_combout\,
	clrn => \L1|estadoAtual.Result~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L175|saida\(2));

-- Location: LABCELL_X67_Y6_N45
\L2|L19|Equal14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L19|Equal14~0_combout\ = (!\L2|L175|saida\(3) & (!\L2|L175|saida\(1) & \L2|L175|saida\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L2|L175|ALT_INV_saida\(3),
	datac => \L2|L175|ALT_INV_saida\(1),
	datad => \L2|L175|ALT_INV_saida\(2),
	combout => \L2|L19|Equal14~0_combout\);

-- Location: LABCELL_X67_Y6_N15
\L2|L19|F[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L19|F[1]~0_combout\ = (\L2|L175|saida\(2) & ((\L2|L175|saida\(1)) # (\L2|L175|saida\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100000111000001110000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L175|ALT_INV_saida\(3),
	datab => \L2|L175|ALT_INV_saida\(1),
	datac => \L2|L175|ALT_INV_saida\(2),
	combout => \L2|L19|F[1]~0_combout\);

-- Location: LABCELL_X67_Y6_N6
\L2|L19|F[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L19|F[2]~1_combout\ = ( \L2|L175|saida\(2) & ( \L2|L175|saida\(3) ) ) # ( !\L2|L175|saida\(2) & ( !\L2|L175|saida\(3) & ( \L2|L175|saida\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L2|L175|ALT_INV_saida\(1),
	datae => \L2|L175|ALT_INV_saida\(2),
	dataf => \L2|L175|ALT_INV_saida\(3),
	combout => \L2|L19|F[2]~1_combout\);

-- Location: LABCELL_X67_Y6_N18
\L2|L19|F[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L19|F[3]~2_combout\ = ( \L2|L175|saida\(3) & ( (!\L2|L175|saida\(2) & \L2|L175|saida\(1)) ) ) # ( !\L2|L175|saida\(3) & ( (\L2|L175|saida\(2) & !\L2|L175|saida\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L175|ALT_INV_saida\(2),
	datad => \L2|L175|ALT_INV_saida\(1),
	dataf => \L2|L175|ALT_INV_saida\(3),
	combout => \L2|L19|F[3]~2_combout\);

-- Location: LABCELL_X67_Y6_N12
\L2|L19|Equal14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L19|Equal14~1_combout\ = (!\L2|L175|saida\(3) & (\L2|L175|saida\(1) & !\L2|L175|saida\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000000100010000000000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L175|ALT_INV_saida\(3),
	datab => \L2|L175|ALT_INV_saida\(1),
	datad => \L2|L175|ALT_INV_saida\(2),
	combout => \L2|L19|Equal14~1_combout\);

-- Location: LABCELL_X61_Y6_N39
\L2|L19|F[6]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L19|F[6]~3_combout\ = ( \L2|L175|saida\(3) & ( (!\L2|L175|saida\(2)) # (\L2|L175|saida\(1)) ) ) # ( !\L2|L175|saida\(3) & ( (\L2|L175|saida\(1)) # (\L2|L175|saida\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L175|ALT_INV_saida\(2),
	datac => \L2|L175|ALT_INV_saida\(1),
	dataf => \L2|L175|ALT_INV_saida\(3),
	combout => \L2|L19|F[6]~3_combout\);

-- Location: LABCELL_X45_Y4_N24
\L2|L16|C[7]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L16|C[7]~5_combout\ = ( \L2|L14|aux_saida\(3) & ( \SW[8]~input_o\ & ( \SW[9]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[9]~input_o\,
	datae => \L2|L14|ALT_INV_aux_saida\(3),
	dataf => \ALT_INV_SW[8]~input_o\,
	combout => \L2|L16|C[7]~5_combout\);

-- Location: FF_X45_Y4_N25
\L2|L17|saida[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L16|C[7]~5_combout\,
	clrn => \L1|estadoAtual.Init~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L17|saida\(7));

-- Location: LABCELL_X45_Y4_N48
\L2|L175|saida[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L175|saida[7]~feeder_combout\ = ( \L2|L17|saida\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \L2|L17|ALT_INV_saida\(7),
	combout => \L2|L175|saida[7]~feeder_combout\);

-- Location: FF_X45_Y4_N50
\L2|L175|saida[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L175|saida[7]~feeder_combout\,
	clrn => \L1|estadoAtual.Result~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L175|saida\(7));

-- Location: LABCELL_X45_Y4_N30
\L2|L16|C[4]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L16|C[4]~8_combout\ = ( \L2|L14|aux_saida\(0) & ( \SW[8]~input_o\ & ( (\SW[9]~input_o\) # (\L2|L14|aux_saida\(2)) ) ) ) # ( !\L2|L14|aux_saida\(0) & ( \SW[8]~input_o\ & ( (\L2|L14|aux_saida\(2) & !\SW[9]~input_o\) ) ) ) # ( \L2|L14|aux_saida\(0) & ( 
-- !\SW[8]~input_o\ & ( (!\SW[9]~input_o\ & ((\L2|L14|aux_saida\(3)))) # (\SW[9]~input_o\ & (\L2|L14|aux_saida\(1))) ) ) ) # ( !\L2|L14|aux_saida\(0) & ( !\SW[8]~input_o\ & ( (!\SW[9]~input_o\ & ((\L2|L14|aux_saida\(3)))) # (\SW[9]~input_o\ & 
-- (\L2|L14|aux_saida\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L14|ALT_INV_aux_saida\(1),
	datab => \L2|L14|ALT_INV_aux_saida\(2),
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \L2|L14|ALT_INV_aux_saida\(3),
	datae => \L2|L14|ALT_INV_aux_saida\(0),
	dataf => \ALT_INV_SW[8]~input_o\,
	combout => \L2|L16|C[4]~8_combout\);

-- Location: FF_X45_Y4_N31
\L2|L17|saida[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L16|C[4]~8_combout\,
	clrn => \L1|estadoAtual.Init~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L17|saida\(4));

-- Location: LABCELL_X45_Y4_N9
\L2|L175|saida[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L175|saida[4]~feeder_combout\ = ( \L2|L17|saida\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \L2|L17|ALT_INV_saida\(4),
	combout => \L2|L175|saida[4]~feeder_combout\);

-- Location: FF_X45_Y4_N11
\L2|L175|saida[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L175|saida[4]~feeder_combout\,
	clrn => \L1|estadoAtual.Result~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L175|saida\(4));

-- Location: LABCELL_X29_Y6_N57
\L2|L16|C[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L16|C[6]~7_combout\ = ( \L2|L14|aux_saida\(2) & ( \SW[8]~input_o\ & ( \SW[9]~input_o\ ) ) ) # ( \L2|L14|aux_saida\(2) & ( !\SW[8]~input_o\ & ( (\SW[9]~input_o\ & \L2|L14|aux_saida\(3)) ) ) ) # ( !\L2|L14|aux_saida\(2) & ( !\SW[8]~input_o\ & ( 
-- (\SW[9]~input_o\ & \L2|L14|aux_saida\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[9]~input_o\,
	datad => \L2|L14|ALT_INV_aux_saida\(3),
	datae => \L2|L14|ALT_INV_aux_saida\(2),
	dataf => \ALT_INV_SW[8]~input_o\,
	combout => \L2|L16|C[6]~7_combout\);

-- Location: FF_X29_Y6_N58
\L2|L17|saida[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L16|C[6]~7_combout\,
	clrn => \L1|estadoAtual.Init~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L17|saida\(6));

-- Location: LABCELL_X29_Y6_N48
\L2|L175|saida[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L175|saida[6]~feeder_combout\ = ( \L2|L17|saida\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \L2|L17|ALT_INV_saida\(6),
	combout => \L2|L175|saida[6]~feeder_combout\);

-- Location: FF_X29_Y6_N50
\L2|L175|saida[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L175|saida[6]~feeder_combout\,
	clrn => \L1|estadoAtual.Result~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L175|saida\(6));

-- Location: LABCELL_X33_Y4_N27
\L2|L16|C[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L16|C[5]~6_combout\ = ( \L2|L14|aux_saida\(3) & ( \L2|L14|aux_saida\(2) & ( (!\SW[9]~input_o\ & (\SW[8]~input_o\)) # (\SW[9]~input_o\ & ((!\SW[8]~input_o\) # (\L2|L14|aux_saida\(1)))) ) ) ) # ( !\L2|L14|aux_saida\(3) & ( \L2|L14|aux_saida\(2) & ( 
-- (\SW[9]~input_o\ & ((!\SW[8]~input_o\) # (\L2|L14|aux_saida\(1)))) ) ) ) # ( \L2|L14|aux_saida\(3) & ( !\L2|L14|aux_saida\(2) & ( (\SW[8]~input_o\ & ((!\SW[9]~input_o\) # (\L2|L14|aux_saida\(1)))) ) ) ) # ( !\L2|L14|aux_saida\(3) & ( 
-- !\L2|L14|aux_saida\(2) & ( (\SW[9]~input_o\ & (\SW[8]~input_o\ & \L2|L14|aux_saida\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000011000000111100110000001100110011110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \ALT_INV_SW[8]~input_o\,
	datad => \L2|L14|ALT_INV_aux_saida\(1),
	datae => \L2|L14|ALT_INV_aux_saida\(3),
	dataf => \L2|L14|ALT_INV_aux_saida\(2),
	combout => \L2|L16|C[5]~6_combout\);

-- Location: FF_X33_Y4_N28
\L2|L17|saida[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L16|C[5]~6_combout\,
	clrn => \L1|estadoAtual.Init~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L17|saida\(5));

-- Location: LABCELL_X33_Y4_N15
\L2|L175|saida[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L175|saida[5]~feeder_combout\ = ( \L2|L17|saida\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \L2|L17|ALT_INV_saida\(5),
	combout => \L2|L175|saida[5]~feeder_combout\);

-- Location: FF_X33_Y4_N17
\L2|L175|saida[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \L2|L175|saida[5]~feeder_combout\,
	clrn => \L1|estadoAtual.Result~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \L2|L175|saida\(5));

-- Location: LABCELL_X67_Y6_N21
\L2|L18|F[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L18|F[0]~0_combout\ = (!\L2|L175|saida\(7) & (!\L2|L175|saida\(5) & (!\L2|L175|saida\(4) $ (!\L2|L175|saida\(6))))) # (\L2|L175|saida\(7) & (\L2|L175|saida\(4) & (!\L2|L175|saida\(6) $ (!\L2|L175|saida\(5)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100100010000001010010001000000101001000100000010100100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L175|ALT_INV_saida\(7),
	datab => \L2|L175|ALT_INV_saida\(4),
	datac => \L2|L175|ALT_INV_saida\(6),
	datad => \L2|L175|ALT_INV_saida\(5),
	combout => \L2|L18|F[0]~0_combout\);

-- Location: LABCELL_X67_Y6_N0
\L2|L18|F[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L18|F[1]~1_combout\ = ( \L2|L175|saida\(7) & ( (!\L2|L175|saida\(4) & ((\L2|L175|saida\(6)))) # (\L2|L175|saida\(4) & (\L2|L175|saida\(5))) ) ) # ( !\L2|L175|saida\(7) & ( (\L2|L175|saida\(6) & (!\L2|L175|saida\(4) $ (!\L2|L175|saida\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011000011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L175|ALT_INV_saida\(4),
	datab => \L2|L175|ALT_INV_saida\(5),
	datac => \L2|L175|ALT_INV_saida\(6),
	dataf => \L2|L175|ALT_INV_saida\(7),
	combout => \L2|L18|F[1]~1_combout\);

-- Location: LABCELL_X67_Y6_N3
\L2|L18|F[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L18|F[2]~2_combout\ = ( \L2|L175|saida\(7) & ( (\L2|L175|saida\(6) & ((!\L2|L175|saida\(4)) # (\L2|L175|saida\(5)))) ) ) # ( !\L2|L175|saida\(7) & ( (!\L2|L175|saida\(4) & (\L2|L175|saida\(5) & !\L2|L175|saida\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000000000000101110110000000010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L175|ALT_INV_saida\(4),
	datab => \L2|L175|ALT_INV_saida\(5),
	datad => \L2|L175|ALT_INV_saida\(6),
	dataf => \L2|L175|ALT_INV_saida\(7),
	combout => \L2|L18|F[2]~2_combout\);

-- Location: LABCELL_X67_Y4_N3
\L2|L18|F[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L18|F[3]~3_combout\ = ( \L2|L175|saida\(4) & ( \L2|L175|saida\(7) & ( (\L2|L175|saida\(5) & \L2|L175|saida\(6)) ) ) ) # ( !\L2|L175|saida\(4) & ( \L2|L175|saida\(7) & ( (\L2|L175|saida\(5) & !\L2|L175|saida\(6)) ) ) ) # ( \L2|L175|saida\(4) & ( 
-- !\L2|L175|saida\(7) & ( !\L2|L175|saida\(5) $ (\L2|L175|saida\(6)) ) ) ) # ( !\L2|L175|saida\(4) & ( !\L2|L175|saida\(7) & ( (!\L2|L175|saida\(5) & \L2|L175|saida\(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100110000111100001100110000001100000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L2|L175|ALT_INV_saida\(5),
	datac => \L2|L175|ALT_INV_saida\(6),
	datae => \L2|L175|ALT_INV_saida\(4),
	dataf => \L2|L175|ALT_INV_saida\(7),
	combout => \L2|L18|F[3]~3_combout\);

-- Location: LABCELL_X67_Y6_N42
\L2|L18|F[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L18|F[4]~4_combout\ = ( \L2|L175|saida\(5) & ( (!\L2|L175|saida\(7) & \L2|L175|saida\(4)) ) ) # ( !\L2|L175|saida\(5) & ( (!\L2|L175|saida\(6) & ((\L2|L175|saida\(4)))) # (\L2|L175|saida\(6) & (!\L2|L175|saida\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101011111010000010101111101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L175|ALT_INV_saida\(7),
	datac => \L2|L175|ALT_INV_saida\(6),
	datad => \L2|L175|ALT_INV_saida\(4),
	dataf => \L2|L175|ALT_INV_saida\(5),
	combout => \L2|L18|F[4]~4_combout\);

-- Location: LABCELL_X67_Y6_N57
\L2|L18|F[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L18|F[5]~5_combout\ = ( \L2|L175|saida\(7) & ( (\L2|L175|saida\(4) & (!\L2|L175|saida\(5) & \L2|L175|saida\(6))) ) ) # ( !\L2|L175|saida\(7) & ( (!\L2|L175|saida\(4) & (\L2|L175|saida\(5) & !\L2|L175|saida\(6))) # (\L2|L175|saida\(4) & 
-- ((!\L2|L175|saida\(6)) # (\L2|L175|saida\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100000101010111110000010100000000010100000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L175|ALT_INV_saida\(4),
	datac => \L2|L175|ALT_INV_saida\(5),
	datad => \L2|L175|ALT_INV_saida\(6),
	dataf => \L2|L175|ALT_INV_saida\(7),
	combout => \L2|L18|F[5]~5_combout\);

-- Location: LABCELL_X67_Y6_N30
\L2|L18|F[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L18|F[6]~6_combout\ = ( \L2|L175|saida\(7) & ( (!\L2|L175|saida\(6)) # ((\L2|L175|saida\(4)) # (\L2|L175|saida\(5))) ) ) # ( !\L2|L175|saida\(7) & ( (!\L2|L175|saida\(6) & (\L2|L175|saida\(5))) # (\L2|L175|saida\(6) & ((!\L2|L175|saida\(5)) # 
-- (!\L2|L175|saida\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011001110110011101100111011010111111101111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L175|ALT_INV_saida\(6),
	datab => \L2|L175|ALT_INV_saida\(5),
	datac => \L2|L175|ALT_INV_saida\(4),
	dataf => \L2|L175|ALT_INV_saida\(7),
	combout => \L2|L18|F[6]~6_combout\);

-- Location: LABCELL_X45_Y4_N45
\L2|L2|F[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L2|F[0]~0_combout\ = ( \SW[9]~input_o\ & ( \SW[8]~input_o\ ) ) # ( !\SW[9]~input_o\ & ( !\SW[8]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_SW[9]~input_o\,
	dataf => \ALT_INV_SW[8]~input_o\,
	combout => \L2|L2|F[0]~0_combout\);

-- Location: LABCELL_X45_Y4_N12
\L2|L16|C[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L16|C[7]~0_combout\ = (\SW[9]~input_o\ & \SW[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \ALT_INV_SW[8]~input_o\,
	combout => \L2|L16|C[7]~0_combout\);

-- Location: LABCELL_X64_Y3_N36
\L2|L15|Equal10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L15|Equal10~0_combout\ = ( !\L2|L14|aux_saida\(0) & ( (!\L2|L14|aux_saida\(1) & (!\L2|L14|aux_saida\(2) & !\L2|L14|aux_saida\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L2|L14|ALT_INV_aux_saida\(1),
	datac => \L2|L14|ALT_INV_aux_saida\(2),
	datad => \L2|L14|ALT_INV_aux_saida\(3),
	dataf => \L2|L14|ALT_INV_aux_saida\(0),
	combout => \L2|L15|Equal10~0_combout\);

-- Location: LABCELL_X64_Y3_N45
\L2|L15|F[9]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L15|F[9]~0_combout\ = ( \L2|L14|aux_saida\(2) & ( !\L2|L14|aux_saida\(3) ) ) # ( !\L2|L14|aux_saida\(2) & ( (!\L2|L14|aux_saida\(0) & ((\L2|L14|aux_saida\(3)) # (\L2|L14|aux_saida\(1)))) # (\L2|L14|aux_saida\(0) & ((!\L2|L14|aux_saida\(1)) # 
-- (!\L2|L14|aux_saida\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111111100001111111111110011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L2|L14|ALT_INV_aux_saida\(0),
	datac => \L2|L14|ALT_INV_aux_saida\(1),
	datad => \L2|L14|ALT_INV_aux_saida\(3),
	dataf => \L2|L14|ALT_INV_aux_saida\(2),
	combout => \L2|L15|F[9]~0_combout\);

-- Location: LABCELL_X64_Y3_N15
\L2|L15|F[0]\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L15|F\(0) = ( \L2|L15|F\(0) & ( !\L2|L15|Equal10~0_combout\ ) ) # ( !\L2|L15|F\(0) & ( (!\L2|L15|Equal10~0_combout\ & \L2|L15|F[9]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L15|ALT_INV_Equal10~0_combout\,
	datab => \L2|L15|ALT_INV_F[9]~0_combout\,
	dataf => \L2|L15|ALT_INV_F\(0),
	combout => \L2|L15|F\(0));

-- Location: LABCELL_X64_Y3_N51
\L2|L15|comb~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L15|comb~0_combout\ = ( \L2|L14|aux_saida\(1) & ( \L2|L15|F[9]~0_combout\ ) ) # ( !\L2|L14|aux_saida\(1) & ( (\L2|L15|F[9]~0_combout\ & ((\L2|L14|aux_saida\(2)) # (\L2|L14|aux_saida\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010011000100110001001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L14|ALT_INV_aux_saida\(3),
	datab => \L2|L15|ALT_INV_F[9]~0_combout\,
	datac => \L2|L14|ALT_INV_aux_saida\(2),
	dataf => \L2|L14|ALT_INV_aux_saida\(1),
	combout => \L2|L15|comb~0_combout\);

-- Location: LABCELL_X64_Y3_N6
\L2|L15|comb~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L15|comb~17_combout\ = ( !\L2|L14|aux_saida\(1) & ( (!\L2|L14|aux_saida\(3) & !\L2|L14|aux_saida\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L14|ALT_INV_aux_saida\(3),
	datac => \L2|L14|ALT_INV_aux_saida\(2),
	dataf => \L2|L14|ALT_INV_aux_saida\(1),
	combout => \L2|L15|comb~17_combout\);

-- Location: LABCELL_X63_Y3_N24
\L2|L15|F[1]\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L15|F\(1) = ( \L2|L15|F\(1) & ( !\L2|L15|comb~17_combout\ ) ) # ( !\L2|L15|F\(1) & ( (\L2|L15|comb~0_combout\ & !\L2|L15|comb~17_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L15|ALT_INV_comb~0_combout\,
	datac => \L2|L15|ALT_INV_comb~17_combout\,
	dataf => \L2|L15|ALT_INV_F\(1),
	combout => \L2|L15|F\(1));

-- Location: MLABCELL_X65_Y7_N57
\L2|L15|F[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L15|F[2]~1_combout\ = ( !\L2|L14|aux_saida\(2) & ( !\L2|L14|aux_saida\(3) & ( !\L2|L14|aux_saida\(1) $ (!\L2|L14|aux_saida\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L14|ALT_INV_aux_saida\(1),
	datad => \L2|L14|ALT_INV_aux_saida\(0),
	datae => \L2|L14|ALT_INV_aux_saida\(2),
	dataf => \L2|L14|ALT_INV_aux_saida\(3),
	combout => \L2|L15|F[2]~1_combout\);

-- Location: LABCELL_X64_Y3_N33
\L2|L15|comb~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L15|comb~2_combout\ = (!\L2|L15|Equal10~0_combout\ & (!\L2|L15|F[2]~1_combout\ & \L2|L15|F[9]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L15|ALT_INV_Equal10~0_combout\,
	datac => \L2|L15|ALT_INV_F[2]~1_combout\,
	datad => \L2|L15|ALT_INV_F[9]~0_combout\,
	combout => \L2|L15|comb~2_combout\);

-- Location: LABCELL_X64_Y3_N30
\L2|L15|comb~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L15|comb~1_combout\ = (!\L2|L15|Equal10~0_combout\ & ((!\L2|L15|F[2]~1_combout\) # (!\L2|L15|F[9]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010001000101010101000100010101010100010001010101010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L15|ALT_INV_Equal10~0_combout\,
	datab => \L2|L15|ALT_INV_F[2]~1_combout\,
	datad => \L2|L15|ALT_INV_F[9]~0_combout\,
	combout => \L2|L15|comb~1_combout\);

-- Location: LABCELL_X64_Y3_N39
\L2|L15|F[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L15|F\(2) = ( \L2|L15|F\(2) & ( \L2|L15|comb~1_combout\ ) ) # ( !\L2|L15|F\(2) & ( (\L2|L15|comb~2_combout\ & \L2|L15|comb~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L15|ALT_INV_comb~2_combout\,
	datac => \L2|L15|ALT_INV_comb~1_combout\,
	dataf => \L2|L15|ALT_INV_F\(2),
	combout => \L2|L15|F\(2));

-- Location: LABCELL_X68_Y3_N24
\L2|L15|comb~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L15|comb~3_combout\ = ( \L2|L14|aux_saida\(2) & ( \L2|L15|F[9]~0_combout\ ) ) # ( !\L2|L14|aux_saida\(2) & ( (\L2|L15|F[9]~0_combout\ & \L2|L14|aux_saida\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L2|L15|ALT_INV_F[9]~0_combout\,
	datac => \L2|L14|ALT_INV_aux_saida\(3),
	dataf => \L2|L14|ALT_INV_aux_saida\(2),
	combout => \L2|L15|comb~3_combout\);

-- Location: LABCELL_X68_Y3_N33
\L2|L15|comb~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L15|comb~16_combout\ = ( \L2|L14|aux_saida\(2) ) # ( !\L2|L14|aux_saida\(2) & ( \L2|L14|aux_saida\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L14|ALT_INV_aux_saida\(3),
	dataf => \L2|L14|ALT_INV_aux_saida\(2),
	combout => \L2|L15|comb~16_combout\);

-- Location: LABCELL_X68_Y3_N12
\L2|L15|F[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L15|F\(3) = ( \L2|L15|F\(3) & ( \L2|L15|comb~16_combout\ ) ) # ( !\L2|L15|F\(3) & ( (\L2|L15|comb~3_combout\ & \L2|L15|comb~16_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L15|ALT_INV_comb~3_combout\,
	datac => \L2|L15|ALT_INV_comb~16_combout\,
	dataf => \L2|L15|ALT_INV_F\(3),
	combout => \L2|L15|F\(3));

-- Location: LABCELL_X64_Y3_N54
\L2|L15|comb~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L15|comb~4_combout\ = ( \L2|L14|aux_saida\(0) & ( (!\L2|L14|aux_saida\(1) & (!\L2|L14|aux_saida\(2) & !\L2|L14|aux_saida\(3))) ) ) # ( !\L2|L14|aux_saida\(0) & ( (\L2|L14|aux_saida\(1) & (!\L2|L14|aux_saida\(2) & !\L2|L14|aux_saida\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L2|L14|ALT_INV_aux_saida\(1),
	datac => \L2|L14|ALT_INV_aux_saida\(2),
	datad => \L2|L14|ALT_INV_aux_saida\(3),
	dataf => \L2|L14|ALT_INV_aux_saida\(0),
	combout => \L2|L15|comb~4_combout\);

-- Location: LABCELL_X64_Y3_N27
\L2|L15|F[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L15|F[4]~2_combout\ = ( \L2|L14|aux_saida\(2) & ( (!\L2|L14|aux_saida\(1) & (!\L2|L14|aux_saida\(0) & !\L2|L14|aux_saida\(3))) ) ) # ( !\L2|L14|aux_saida\(2) & ( (\L2|L14|aux_saida\(1) & (\L2|L14|aux_saida\(0) & !\L2|L14|aux_saida\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L2|L14|ALT_INV_aux_saida\(1),
	datac => \L2|L14|ALT_INV_aux_saida\(0),
	datad => \L2|L14|ALT_INV_aux_saida\(3),
	dataf => \L2|L14|ALT_INV_aux_saida\(2),
	combout => \L2|L15|F[4]~2_combout\);

-- Location: LABCELL_X64_Y3_N12
\L2|L15|comb~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L15|comb~6_combout\ = (!\L2|L15|Equal10~0_combout\ & (\L2|L15|F[9]~0_combout\ & (!\L2|L15|comb~4_combout\ & !\L2|L15|F[4]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L15|ALT_INV_Equal10~0_combout\,
	datab => \L2|L15|ALT_INV_F[9]~0_combout\,
	datac => \L2|L15|ALT_INV_comb~4_combout\,
	datad => \L2|L15|ALT_INV_F[4]~2_combout\,
	combout => \L2|L15|comb~6_combout\);

-- Location: LABCELL_X64_Y3_N57
\L2|L15|comb~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L15|comb~5_combout\ = ( \L2|L15|F[4]~2_combout\ & ( (!\L2|L15|Equal10~0_combout\ & !\L2|L15|F[9]~0_combout\) ) ) # ( !\L2|L15|F[4]~2_combout\ & ( (!\L2|L15|Equal10~0_combout\ & ((!\L2|L15|F[9]~0_combout\) # (!\L2|L15|comb~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010100000101010101010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L15|ALT_INV_Equal10~0_combout\,
	datac => \L2|L15|ALT_INV_F[9]~0_combout\,
	datad => \L2|L15|ALT_INV_comb~4_combout\,
	dataf => \L2|L15|ALT_INV_F[4]~2_combout\,
	combout => \L2|L15|comb~5_combout\);

-- Location: LABCELL_X64_Y3_N9
\L2|L15|F[4]\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L15|F\(4) = ( \L2|L15|F\(4) & ( \L2|L15|comb~5_combout\ ) ) # ( !\L2|L15|F\(4) & ( (\L2|L15|comb~6_combout\ & \L2|L15|comb~5_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L2|L15|ALT_INV_comb~6_combout\,
	datac => \L2|L15|ALT_INV_comb~5_combout\,
	dataf => \L2|L15|ALT_INV_F\(4),
	combout => \L2|L15|F\(4));

-- Location: LABCELL_X64_Y3_N18
\L2|L15|comb~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L15|comb~7_combout\ = ( \L2|L14|aux_saida\(1) & ( (\L2|L15|F[9]~0_combout\ & ((\L2|L14|aux_saida\(3)) # (\L2|L14|aux_saida\(2)))) ) ) # ( !\L2|L14|aux_saida\(1) & ( (\L2|L14|aux_saida\(3) & \L2|L15|F[9]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000001111110000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L2|L14|ALT_INV_aux_saida\(2),
	datac => \L2|L14|ALT_INV_aux_saida\(3),
	datad => \L2|L15|ALT_INV_F[9]~0_combout\,
	dataf => \L2|L14|ALT_INV_aux_saida\(1),
	combout => \L2|L15|comb~7_combout\);

-- Location: LABCELL_X64_Y3_N21
\L2|L15|comb~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L15|comb~15_combout\ = ( \L2|L14|aux_saida\(1) & ( (\L2|L14|aux_saida\(2)) # (\L2|L14|aux_saida\(3)) ) ) # ( !\L2|L14|aux_saida\(1) & ( \L2|L14|aux_saida\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L14|ALT_INV_aux_saida\(3),
	datab => \L2|L14|ALT_INV_aux_saida\(2),
	dataf => \L2|L14|ALT_INV_aux_saida\(1),
	combout => \L2|L15|comb~15_combout\);

-- Location: LABCELL_X64_Y3_N42
\L2|L15|F[5]\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L15|F\(5) = ( \L2|L15|F\(5) & ( \L2|L15|comb~15_combout\ ) ) # ( !\L2|L15|F\(5) & ( (\L2|L15|comb~7_combout\ & \L2|L15|comb~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L15|ALT_INV_comb~7_combout\,
	datad => \L2|L15|ALT_INV_comb~15_combout\,
	dataf => \L2|L15|ALT_INV_F\(5),
	combout => \L2|L15|F\(5));

-- Location: LABCELL_X64_Y3_N3
\L2|L15|comb~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L15|comb~14_combout\ = ( \L2|L14|aux_saida\(0) & ( ((\L2|L14|aux_saida\(1) & \L2|L14|aux_saida\(2))) # (\L2|L14|aux_saida\(3)) ) ) # ( !\L2|L14|aux_saida\(0) & ( \L2|L14|aux_saida\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010111110101010101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L14|ALT_INV_aux_saida\(3),
	datac => \L2|L14|ALT_INV_aux_saida\(1),
	datad => \L2|L14|ALT_INV_aux_saida\(2),
	dataf => \L2|L14|ALT_INV_aux_saida\(0),
	combout => \L2|L15|comb~14_combout\);

-- Location: LABCELL_X64_Y3_N0
\L2|L15|comb~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L15|comb~13_combout\ = ( \L2|L14|aux_saida\(0) & ( (!\L2|L14|aux_saida\(3) & ((!\L2|L14|aux_saida\(1)) # (!\L2|L14|aux_saida\(2)))) # (\L2|L14|aux_saida\(3) & ((\L2|L14|aux_saida\(2)) # (\L2|L14|aux_saida\(1)))) ) ) # ( !\L2|L14|aux_saida\(0) & ( 
-- (!\L2|L14|aux_saida\(3)) # (\L2|L14|aux_saida\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101011111111101010101111111110111011110111011011101111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L14|ALT_INV_aux_saida\(3),
	datab => \L2|L14|ALT_INV_aux_saida\(1),
	datad => \L2|L14|ALT_INV_aux_saida\(2),
	dataf => \L2|L14|ALT_INV_aux_saida\(0),
	combout => \L2|L15|comb~13_combout\);

-- Location: LABCELL_X64_Y3_N24
\L2|L15|F[6]\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L15|F\(6) = ( \L2|L15|F\(6) & ( \L2|L15|comb~14_combout\ ) ) # ( !\L2|L15|F\(6) & ( (\L2|L15|comb~14_combout\ & !\L2|L15|comb~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \L2|L15|ALT_INV_comb~14_combout\,
	datad => \L2|L15|ALT_INV_comb~13_combout\,
	dataf => \L2|L15|ALT_INV_F\(6),
	combout => \L2|L15|F\(6));

-- Location: LABCELL_X64_Y3_N48
\L2|L15|comb~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L15|comb~8_combout\ = (\L2|L14|aux_saida\(3) & \L2|L15|F[9]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L14|ALT_INV_aux_saida\(3),
	datab => \L2|L15|ALT_INV_F[9]~0_combout\,
	combout => \L2|L15|comb~8_combout\);

-- Location: LABCELL_X67_Y6_N51
\L2|L15|F[7]\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L15|F\(7) = ( \L2|L15|F\(7) & ( \L2|L14|aux_saida\(3) ) ) # ( !\L2|L15|F\(7) & ( (\L2|L15|comb~8_combout\ & \L2|L14|aux_saida\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L15|ALT_INV_comb~8_combout\,
	datac => \L2|L14|ALT_INV_aux_saida\(3),
	dataf => \L2|L15|ALT_INV_F\(7),
	combout => \L2|L15|F\(7));

-- Location: MLABCELL_X65_Y7_N18
\L2|L15|comb~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L15|comb~12_combout\ = ( \L2|L14|aux_saida\(2) & ( \L2|L14|aux_saida\(3) ) ) # ( !\L2|L14|aux_saida\(2) & ( \L2|L14|aux_saida\(3) & ( (\L2|L14|aux_saida\(1)) # (\L2|L14|aux_saida\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011111010111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L14|ALT_INV_aux_saida\(0),
	datac => \L2|L14|ALT_INV_aux_saida\(1),
	datae => \L2|L14|ALT_INV_aux_saida\(2),
	dataf => \L2|L14|ALT_INV_aux_saida\(3),
	combout => \L2|L15|comb~12_combout\);

-- Location: MLABCELL_X65_Y7_N3
\L2|L15|comb~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L15|comb~11_combout\ = ( \L2|L14|aux_saida\(2) & ( \L2|L14|aux_saida\(3) ) ) # ( !\L2|L14|aux_saida\(2) & ( \L2|L14|aux_saida\(3) & ( !\L2|L14|aux_saida\(1) $ (\L2|L14|aux_saida\(0)) ) ) ) # ( \L2|L14|aux_saida\(2) & ( !\L2|L14|aux_saida\(3) ) ) # ( 
-- !\L2|L14|aux_saida\(2) & ( !\L2|L14|aux_saida\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110101010010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L14|ALT_INV_aux_saida\(1),
	datad => \L2|L14|ALT_INV_aux_saida\(0),
	datae => \L2|L14|ALT_INV_aux_saida\(2),
	dataf => \L2|L14|ALT_INV_aux_saida\(3),
	combout => \L2|L15|comb~11_combout\);

-- Location: LABCELL_X64_Y7_N24
\L2|L15|F[8]\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L15|F\(8) = ( \L2|L15|comb~11_combout\ & ( \L2|L15|F\(8) & ( \L2|L15|comb~12_combout\ ) ) ) # ( !\L2|L15|comb~11_combout\ & ( \L2|L15|F\(8) & ( \L2|L15|comb~12_combout\ ) ) ) # ( !\L2|L15|comb~11_combout\ & ( !\L2|L15|F\(8) & ( 
-- \L2|L15|comb~12_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L2|L15|ALT_INV_comb~12_combout\,
	datae => \L2|L15|ALT_INV_comb~11_combout\,
	dataf => \L2|L15|ALT_INV_F\(8),
	combout => \L2|L15|F\(8));

-- Location: LABCELL_X68_Y3_N6
\L2|L15|comb~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L15|comb~9_combout\ = ( \L2|L14|aux_saida\(2) & ( (\L2|L14|aux_saida\(3) & \L2|L15|F[9]~0_combout\) ) ) # ( !\L2|L14|aux_saida\(2) & ( (\L2|L14|aux_saida\(3) & (\L2|L15|F[9]~0_combout\ & \L2|L14|aux_saida\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L14|ALT_INV_aux_saida\(3),
	datab => \L2|L15|ALT_INV_F[9]~0_combout\,
	datac => \L2|L14|ALT_INV_aux_saida\(1),
	dataf => \L2|L14|ALT_INV_aux_saida\(2),
	combout => \L2|L15|comb~9_combout\);

-- Location: LABCELL_X68_Y3_N51
\L2|L15|comb~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L15|comb~10_combout\ = ( \L2|L14|aux_saida\(1) & ( !\L2|L14|aux_saida\(3) ) ) # ( !\L2|L14|aux_saida\(1) & ( (!\L2|L14|aux_saida\(3)) # (!\L2|L14|aux_saida\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101010111111111010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \L2|L14|ALT_INV_aux_saida\(3),
	datad => \L2|L14|ALT_INV_aux_saida\(2),
	dataf => \L2|L14|ALT_INV_aux_saida\(1),
	combout => \L2|L15|comb~10_combout\);

-- Location: LABCELL_X68_Y3_N18
\L2|L15|F[9]\ : cyclonev_lcell_comb
-- Equation(s):
-- \L2|L15|F\(9) = ( \L2|L15|F\(9) & ( !\L2|L15|comb~10_combout\ ) ) # ( !\L2|L15|F\(9) & ( (\L2|L15|comb~9_combout\ & !\L2|L15|comb~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \L2|L15|ALT_INV_comb~9_combout\,
	datac => \L2|L15|ALT_INV_comb~10_combout\,
	dataf => \L2|L15|ALT_INV_F\(9),
	combout => \L2|L15|F\(9));

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

-- Location: LABCELL_X70_Y35_N3
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


