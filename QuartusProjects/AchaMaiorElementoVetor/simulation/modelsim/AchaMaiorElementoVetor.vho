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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "09/22/2016 14:22:50"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	AchaMaiorElementoVetor IS
    PORT (
	address : IN std_logic_vector(14 DOWNTO 0);
	clock : IN std_logic;
	data : IN std_logic_vector(7 DOWNTO 0);
	wren : IN std_logic;
	q : OUT std_logic_vector(7 DOWNTO 0)
	);
END AchaMaiorElementoVetor;

-- Design Ports Information
-- q[0]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[1]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[2]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[3]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[4]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[5]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[6]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[7]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- address[14]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- address[13]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- wren	=>  Location: PIN_AE10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- address[12]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[0]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- address[0]	=>  Location: PIN_AE7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- address[1]	=>  Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- address[2]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- address[3]	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- address[4]	=>  Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- address[5]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- address[6]	=>  Location: PIN_W17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- address[7]	=>  Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- address[8]	=>  Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- address[9]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- address[10]	=>  Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- address[11]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[1]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[2]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[3]	=>  Location: PIN_AE8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[4]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[5]	=>  Location: PIN_AC10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[6]	=>  Location: PIN_AD16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data[7]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF AchaMaiorElementoVetor IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_address : std_logic_vector(14 DOWNTO 0);
SIGNAL ww_clock : std_logic;
SIGNAL ww_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_wren : std_logic;
SIGNAL ww_q : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a48_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a48_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a48_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a40_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a40_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a40_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a32_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a32_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a56_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a56_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a56_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a24_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a24_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a49_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a49_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a49_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a41_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a41_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a41_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a33_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a33_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a33_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a57_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a57_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a57_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a17_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a25_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a25_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a50_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a50_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a50_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a42_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a42_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a42_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a34_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a34_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a34_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a58_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a58_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a58_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a26_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a51_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a51_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a51_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a43_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a43_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a43_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a35_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a35_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a35_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a59_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a59_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a59_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a19_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a19_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a27_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a52_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a52_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a52_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a44_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a44_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a44_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a36_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a36_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a60_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a60_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a60_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a28_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a28_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a53_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a53_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a53_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a45_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a45_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a45_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a37_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a37_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a37_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a61_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a61_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a61_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a21_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a21_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a29_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a29_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a54_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a54_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a54_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a46_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a46_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a46_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a38_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a38_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a38_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a62_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a62_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a62_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a22_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a30_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a55_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a55_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a55_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a47_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a47_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a47_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a39_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a39_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a39_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a63_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a63_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a63_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a23_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a23_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a31_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a31_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a40~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a32~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a16~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a25~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a42~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a34~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a43~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a35~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a52~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a44~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a53~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a21~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a29~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a46~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a38~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a22~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a30~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a47~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a39~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~0_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~2_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~10_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~15_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~30_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~35_combout\ : std_logic;
SIGNAL \wren~combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode506w[3]~0_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a56~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode496w[3]~0_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a48~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~1_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode446w[3]~0_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a8~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode466w[3]~0_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a24~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~3_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~4_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode429w[3]~0_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a1~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode456w[3]~0_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a17~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~7_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a9~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~8_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a49~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a57~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode476w[3]~0_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a33~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode486w[3]~0_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a41~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~5_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~6_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~9_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a18~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a2~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~12_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a10~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a26~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~13_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a58~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a50~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~11_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~14_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a11~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a19~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a3~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~17_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a27~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~18_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a51~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a59~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~16_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~19_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a60~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a36~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~20_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~21_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a20~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a4~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~22_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a12~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a28~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~23_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~24_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a5~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~27_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a13~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~28_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a45~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a37~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~25_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a61~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~26_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~29_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a6~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~32_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a14~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~33_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a54~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a62~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~31_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~34_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a23~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a7~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~37_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a15~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a31~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~38_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a55~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|ram_block1a63~portadataout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~36_combout\ : std_logic;
SIGNAL \RAM_inst|altsyncram_component|auto_generated|mux2|_~39_combout\ : std_logic;
SIGNAL \data~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \address~combout\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode446w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode486w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode496w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode506w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|address_reg_a\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode466w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode456w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode429w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode476w\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_address <= address;
ww_clock <= clock;
ww_data <= data;
ww_wren <= wren;
q <= ww_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RAM_inst|altsyncram_component|auto_generated|ram_block1a48_PORTADATAIN_bus\(0) <= \data~combout\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a48_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a48~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a48_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a40_PORTADATAIN_bus\(0) <= \data~combout\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a40_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a40~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a40_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a32_PORTADATAIN_bus\(0) <= \data~combout\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a32_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a32~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a56_PORTADATAIN_bus\(0) <= \data~combout\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a56_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a56~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a56_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\(0) <= \data~combout\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a8~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\(0) <= \data~combout\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a16~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \data~combout\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a0~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a24_PORTADATAIN_bus\(0) <= \data~combout\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a24~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a24_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a49_PORTADATAIN_bus\(0) <= \data~combout\(1);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a49_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a49~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a49_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a41_PORTADATAIN_bus\(0) <= \data~combout\(1);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a41_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a41~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a41_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a33_PORTADATAIN_bus\(0) <= \data~combout\(1);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a33_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a33~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a33_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a57_PORTADATAIN_bus\(0) <= \data~combout\(1);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a57_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a57~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a57_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\(0) <= \data~combout\(1);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a9~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a17_PORTADATAIN_bus\(0) <= \data~combout\(1);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a17~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\(0) <= \data~combout\(1);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a1~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a25_PORTADATAIN_bus\(0) <= \data~combout\(1);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a25~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a25_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a50_PORTADATAIN_bus\(0) <= \data~combout\(2);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a50_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a50~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a50_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a42_PORTADATAIN_bus\(0) <= \data~combout\(2);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a42_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a42~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a42_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a34_PORTADATAIN_bus\(0) <= \data~combout\(2);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a34_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a34~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a34_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a58_PORTADATAIN_bus\(0) <= \data~combout\(2);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a58_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a58~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a58_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\(0) <= \data~combout\(2);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a10~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\(0) <= \data~combout\(2);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a18~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\(0) <= \data~combout\(2);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a2~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a26_PORTADATAIN_bus\(0) <= \data~combout\(2);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a26~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a51_PORTADATAIN_bus\(0) <= \data~combout\(3);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a51_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a51~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a51_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a43_PORTADATAIN_bus\(0) <= \data~combout\(3);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a43_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a43~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a43_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a35_PORTADATAIN_bus\(0) <= \data~combout\(3);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a35_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a35~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a35_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a59_PORTADATAIN_bus\(0) <= \data~combout\(3);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a59_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a59~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a59_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\(0) <= \data~combout\(3);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a11~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a19_PORTADATAIN_bus\(0) <= \data~combout\(3);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a19~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a19_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\(0) <= \data~combout\(3);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a3~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a27_PORTADATAIN_bus\(0) <= \data~combout\(3);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a27~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a52_PORTADATAIN_bus\(0) <= \data~combout\(4);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a52_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a52~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a52_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a44_PORTADATAIN_bus\(0) <= \data~combout\(4);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a44_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a44~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a44_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a36_PORTADATAIN_bus\(0) <= \data~combout\(4);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a36_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a36~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a60_PORTADATAIN_bus\(0) <= \data~combout\(4);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a60_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a60~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a60_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\(0) <= \data~combout\(4);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a12~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\(0) <= \data~combout\(4);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a20~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\(0) <= \data~combout\(4);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a4~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a28_PORTADATAIN_bus\(0) <= \data~combout\(4);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a28~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a28_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a53_PORTADATAIN_bus\(0) <= \data~combout\(5);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a53_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a53~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a53_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a45_PORTADATAIN_bus\(0) <= \data~combout\(5);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a45_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a45~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a45_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a37_PORTADATAIN_bus\(0) <= \data~combout\(5);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a37_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a37~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a37_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a61_PORTADATAIN_bus\(0) <= \data~combout\(5);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a61_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a61~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a61_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\(0) <= \data~combout\(5);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a13~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a21_PORTADATAIN_bus\(0) <= \data~combout\(5);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a21~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a21_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\(0) <= \data~combout\(5);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a5~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a29_PORTADATAIN_bus\(0) <= \data~combout\(5);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a29~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a29_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a54_PORTADATAIN_bus\(0) <= \data~combout\(6);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a54_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a54~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a54_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a46_PORTADATAIN_bus\(0) <= \data~combout\(6);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a46_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a46~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a46_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a38_PORTADATAIN_bus\(0) <= \data~combout\(6);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a38_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a38~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a38_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a62_PORTADATAIN_bus\(0) <= \data~combout\(6);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a62_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a62~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a62_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\(0) <= \data~combout\(6);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a14~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a22_PORTADATAIN_bus\(0) <= \data~combout\(6);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a22~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\(0) <= \data~combout\(6);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a6~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a30_PORTADATAIN_bus\(0) <= \data~combout\(6);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a30~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a55_PORTADATAIN_bus\(0) <= \data~combout\(7);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a55_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a55~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a55_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a47_PORTADATAIN_bus\(0) <= \data~combout\(7);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a47_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a47~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a47_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a39_PORTADATAIN_bus\(0) <= \data~combout\(7);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a39_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a39~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a39_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a63_PORTADATAIN_bus\(0) <= \data~combout\(7);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a63_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a63~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a63_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\(0) <= \data~combout\(7);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a15~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a23_PORTADATAIN_bus\(0) <= \data~combout\(7);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a23~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a23_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\(0) <= \data~combout\(7);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a7~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a31_PORTADATAIN_bus\(0) <= \data~combout\(7);

\RAM_inst|altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\ <= (\address~combout\(11) & \address~combout\(10) & \address~combout\(9) & \address~combout\(8) & \address~combout\(7) & \address~combout\(6) & \address~combout\(5) & 
\address~combout\(4) & \address~combout\(3) & \address~combout\(2) & \address~combout\(1) & \address~combout\(0));

\RAM_inst|altsyncram_component|auto_generated|ram_block1a31~portadataout\ <= \RAM_inst|altsyncram_component|auto_generated|ram_block1a31_PORTADATAOUT_bus\(0);

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);

-- Location: M4K_X13_Y10
\RAM_inst|altsyncram_component|auto_generated|ram_block1a40\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode486w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode486w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a40_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a40_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a40_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y17
\RAM_inst|altsyncram_component|auto_generated|ram_block1a32\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode476w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode476w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a32_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a32_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a32_PORTADATAOUT_bus\);

-- Location: M4K_X13_Y19
\RAM_inst|altsyncram_component|auto_generated|ram_block1a16\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode456w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode456w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a16_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\);

-- Location: M4K_X13_Y22
\RAM_inst|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode429w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode429w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y18
\RAM_inst|altsyncram_component|auto_generated|ram_block1a25\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode466w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode466w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a25_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a25_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a25_PORTADATAOUT_bus\);

-- Location: M4K_X13_Y11
\RAM_inst|altsyncram_component|auto_generated|ram_block1a42\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode486w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode486w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a42_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a42_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a42_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y10
\RAM_inst|altsyncram_component|auto_generated|ram_block1a34\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode476w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode476w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a34_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a34_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a34_PORTADATAOUT_bus\);

-- Location: M4K_X13_Y13
\RAM_inst|altsyncram_component|auto_generated|ram_block1a43\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode486w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode486w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a43_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a43_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a43_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y11
\RAM_inst|altsyncram_component|auto_generated|ram_block1a35\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode476w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode476w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a35_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a35_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a35_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y16
\RAM_inst|altsyncram_component|auto_generated|ram_block1a52\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode496w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode496w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a52_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a52_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a52_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y15
\RAM_inst|altsyncram_component|auto_generated|ram_block1a44\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode486w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode486w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a44_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a44_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a44_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y2
\RAM_inst|altsyncram_component|auto_generated|ram_block1a53\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode496w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode496w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a53_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a53_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a53_PORTADATAOUT_bus\);

-- Location: M4K_X13_Y28
\RAM_inst|altsyncram_component|auto_generated|ram_block1a21\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode456w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode456w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a21_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a21_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y27
\RAM_inst|altsyncram_component|auto_generated|ram_block1a29\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode466w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode466w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a29_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a29_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a29_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y9
\RAM_inst|altsyncram_component|auto_generated|ram_block1a46\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode486w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode486w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a46_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a46_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a46_PORTADATAOUT_bus\);

-- Location: M4K_X52_Y17
\RAM_inst|altsyncram_component|auto_generated|ram_block1a38\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode476w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode476w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a38_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a38_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a38_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y30
\RAM_inst|altsyncram_component|auto_generated|ram_block1a22\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode456w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode456w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a22_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y24
\RAM_inst|altsyncram_component|auto_generated|ram_block1a30\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode466w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode466w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a30_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a30_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a30_PORTADATAOUT_bus\);

-- Location: M4K_X13_Y14
\RAM_inst|altsyncram_component|auto_generated|ram_block1a47\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode486w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode486w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a47_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a47_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a47_PORTADATAOUT_bus\);

-- Location: M4K_X52_Y18
\RAM_inst|altsyncram_component|auto_generated|ram_block1a39\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode476w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode476w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a39_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a39_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a39_PORTADATAOUT_bus\);

-- Location: LCCOMB_X17_Y17_N24
\RAM_inst|altsyncram_component|auto_generated|mux2|_~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~0_combout\ = (\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0) & ((\RAM_inst|altsyncram_component|auto_generated|ram_block1a40~portadataout\) # 
-- ((\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1))))) # (!\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0) & (((!\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1) & 
-- \RAM_inst|altsyncram_component|auto_generated|ram_block1a32~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0),
	datab => \RAM_inst|altsyncram_component|auto_generated|ram_block1a40~portadataout\,
	datac => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1),
	datad => \RAM_inst|altsyncram_component|auto_generated|ram_block1a32~portadataout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~0_combout\);

-- Location: LCCOMB_X17_Y17_N10
\RAM_inst|altsyncram_component|auto_generated|mux2|_~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~2_combout\ = (\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1) & (((\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0)) # 
-- (\RAM_inst|altsyncram_component|auto_generated|ram_block1a16~portadataout\)))) # (!\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1) & (\RAM_inst|altsyncram_component|auto_generated|ram_block1a0~portadataout\ & 
-- (!\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1),
	datab => \RAM_inst|altsyncram_component|auto_generated|ram_block1a0~portadataout\,
	datac => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0),
	datad => \RAM_inst|altsyncram_component|auto_generated|ram_block1a16~portadataout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~2_combout\);

-- Location: LCCOMB_X17_Y17_N12
\RAM_inst|altsyncram_component|auto_generated|mux2|_~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~10_combout\ = (\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0) & ((\RAM_inst|altsyncram_component|auto_generated|ram_block1a42~portadataout\) # 
-- ((\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1))))) # (!\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0) & (((!\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1) & 
-- \RAM_inst|altsyncram_component|auto_generated|ram_block1a34~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0),
	datab => \RAM_inst|altsyncram_component|auto_generated|ram_block1a42~portadataout\,
	datac => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1),
	datad => \RAM_inst|altsyncram_component|auto_generated|ram_block1a34~portadataout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~10_combout\);

-- Location: LCCOMB_X22_Y19_N12
\RAM_inst|altsyncram_component|auto_generated|mux2|_~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~15_combout\ = (\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0) & ((\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1)) # 
-- ((\RAM_inst|altsyncram_component|auto_generated|ram_block1a43~portadataout\)))) # (!\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0) & (!\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1) & 
-- (\RAM_inst|altsyncram_component|auto_generated|ram_block1a35~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0),
	datab => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1),
	datac => \RAM_inst|altsyncram_component|auto_generated|ram_block1a35~portadataout\,
	datad => \RAM_inst|altsyncram_component|auto_generated|ram_block1a43~portadataout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~15_combout\);

-- Location: LCCOMB_X25_Y20_N10
\RAM_inst|altsyncram_component|auto_generated|mux2|_~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~30_combout\ = (\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1) & (((\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0))))) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1) & ((\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0) & (\RAM_inst|altsyncram_component|auto_generated|ram_block1a46~portadataout\)) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0) & ((\RAM_inst|altsyncram_component|auto_generated|ram_block1a38~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|ram_block1a46~portadataout\,
	datab => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1),
	datac => \RAM_inst|altsyncram_component|auto_generated|ram_block1a38~portadataout\,
	datad => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0),
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~30_combout\);

-- Location: LCCOMB_X22_Y19_N24
\RAM_inst|altsyncram_component|auto_generated|mux2|_~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~35_combout\ = (\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0) & ((\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1)) # 
-- ((\RAM_inst|altsyncram_component|auto_generated|ram_block1a47~portadataout\)))) # (!\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0) & (!\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1) & 
-- ((\RAM_inst|altsyncram_component|auto_generated|ram_block1a39~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0),
	datab => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1),
	datac => \RAM_inst|altsyncram_component|auto_generated|ram_block1a47~portadataout\,
	datad => \RAM_inst|altsyncram_component|auto_generated|ram_block1a39~portadataout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~35_combout\);

-- Location: LCCOMB_X25_Y16_N28
\RAM_inst|altsyncram_component|auto_generated|decode3|w_anode496w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode496w\(3) = (\wren~combout\ & (\address~combout\(14) & (!\address~combout\(12) & \address~combout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wren~combout\,
	datab => \address~combout\(14),
	datac => \address~combout\(12),
	datad => \address~combout\(13),
	combout => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode496w\(3));

-- Location: LCCOMB_X25_Y16_N4
\RAM_inst|altsyncram_component|auto_generated|decode3|w_anode486w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode486w\(3) = (\wren~combout\ & (\address~combout\(14) & (\address~combout\(12) & !\address~combout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wren~combout\,
	datab => \address~combout\(14),
	datac => \address~combout\(12),
	datad => \address~combout\(13),
	combout => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode486w\(3));

-- Location: LCCOMB_X25_Y16_N20
\RAM_inst|altsyncram_component|auto_generated|decode3|w_anode476w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode476w\(3) = (\wren~combout\ & (\address~combout\(14) & (!\address~combout\(12) & !\address~combout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wren~combout\,
	datab => \address~combout\(14),
	datac => \address~combout\(12),
	datad => \address~combout\(13),
	combout => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode476w\(3));

-- Location: LCCOMB_X25_Y16_N24
\RAM_inst|altsyncram_component|auto_generated|decode3|w_anode506w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode506w\(3) = (\wren~combout\ & (\address~combout\(14) & (\address~combout\(12) & \address~combout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wren~combout\,
	datab => \address~combout\(14),
	datac => \address~combout\(12),
	datad => \address~combout\(13),
	combout => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode506w\(3));

-- Location: LCCOMB_X25_Y16_N0
\RAM_inst|altsyncram_component|auto_generated|decode3|w_anode446w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode446w\(3) = (\wren~combout\ & (!\address~combout\(14) & (\address~combout\(12) & !\address~combout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wren~combout\,
	datab => \address~combout\(14),
	datac => \address~combout\(12),
	datad => \address~combout\(13),
	combout => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode446w\(3));

-- Location: LCCOMB_X25_Y16_N12
\RAM_inst|altsyncram_component|auto_generated|decode3|w_anode456w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode456w\(3) = (\wren~combout\ & (!\address~combout\(14) & (!\address~combout\(12) & \address~combout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wren~combout\,
	datab => \address~combout\(14),
	datac => \address~combout\(12),
	datad => \address~combout\(13),
	combout => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode456w\(3));

-- Location: LCCOMB_X25_Y16_N16
\RAM_inst|altsyncram_component|auto_generated|decode3|w_anode429w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode429w\(3) = (\wren~combout\ & (!\address~combout\(14) & (!\address~combout\(12) & !\address~combout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wren~combout\,
	datab => \address~combout\(14),
	datac => \address~combout\(12),
	datad => \address~combout\(13),
	combout => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode429w\(3));

-- Location: LCCOMB_X25_Y16_N8
\RAM_inst|altsyncram_component|auto_generated|decode3|w_anode466w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode466w\(3) = (\wren~combout\ & (!\address~combout\(14) & (\address~combout\(12) & \address~combout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wren~combout\,
	datab => \address~combout\(14),
	datac => \address~combout\(12),
	datad => \address~combout\(13),
	combout => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode466w\(3));

-- Location: PIN_AE10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wren~I\ : cycloneii_io
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
	padio => ww_wren,
	combout => \wren~combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock~I\ : cycloneii_io
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
	padio => ww_clock,
	combout => \clock~combout\);

-- Location: CLKCTRL_G3
\clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~clkctrl_outclk\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\address[14]~I\ : cycloneii_io
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
	padio => ww_address(14),
	combout => \address~combout\(14));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\address[12]~I\ : cycloneii_io
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
	padio => ww_address(12),
	combout => \address~combout\(12));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\address[13]~I\ : cycloneii_io
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
	padio => ww_address(13),
	combout => \address~combout\(13));

-- Location: LCCOMB_X25_Y16_N6
\RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode506w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode506w[3]~0_combout\ = (\address~combout\(14) & (\address~combout\(12) & \address~combout\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \address~combout\(14),
	datac => \address~combout\(12),
	datad => \address~combout\(13),
	combout => \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode506w[3]~0_combout\);

-- Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[0]~I\ : cycloneii_io
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
	padio => ww_data(0),
	combout => \data~combout\(0));

-- Location: PIN_AE7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\address[0]~I\ : cycloneii_io
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
	padio => ww_address(0),
	combout => \address~combout\(0));

-- Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\address[1]~I\ : cycloneii_io
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
	padio => ww_address(1),
	combout => \address~combout\(1));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\address[2]~I\ : cycloneii_io
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
	padio => ww_address(2),
	combout => \address~combout\(2));

-- Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\address[3]~I\ : cycloneii_io
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
	padio => ww_address(3),
	combout => \address~combout\(3));

-- Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\address[4]~I\ : cycloneii_io
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
	padio => ww_address(4),
	combout => \address~combout\(4));

-- Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\address[5]~I\ : cycloneii_io
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
	padio => ww_address(5),
	combout => \address~combout\(5));

-- Location: PIN_W17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\address[6]~I\ : cycloneii_io
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
	padio => ww_address(6),
	combout => \address~combout\(6));

-- Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\address[7]~I\ : cycloneii_io
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
	padio => ww_address(7),
	combout => \address~combout\(7));

-- Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\address[8]~I\ : cycloneii_io
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
	padio => ww_address(8),
	combout => \address~combout\(8));

-- Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\address[9]~I\ : cycloneii_io
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
	padio => ww_address(9),
	combout => \address~combout\(9));

-- Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\address[10]~I\ : cycloneii_io
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
	padio => ww_address(10),
	combout => \address~combout\(10));

-- Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\address[11]~I\ : cycloneii_io
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
	padio => ww_address(11),
	combout => \address~combout\(11));

-- Location: M4K_X13_Y5
\RAM_inst|altsyncram_component|auto_generated|ram_block1a56\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode506w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode506w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a56_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a56_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a56_PORTADATAOUT_bus\);

-- Location: LCFF_X17_Y17_N25
\RAM_inst|altsyncram_component|auto_generated|address_reg_a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \address~combout\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1));

-- Location: LCCOMB_X25_Y16_N18
\RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode496w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode496w[3]~0_combout\ = (\address~combout\(14) & (!\address~combout\(12) & \address~combout\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \address~combout\(14),
	datac => \address~combout\(12),
	datad => \address~combout\(13),
	combout => \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode496w[3]~0_combout\);

-- Location: M4K_X13_Y2
\RAM_inst|altsyncram_component|auto_generated|ram_block1a48\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode496w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode496w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a48_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a48_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a48_PORTADATAOUT_bus\);

-- Location: LCCOMB_X17_Y17_N20
\RAM_inst|altsyncram_component|auto_generated|mux2|_~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~1_combout\ = (\RAM_inst|altsyncram_component|auto_generated|mux2|_~0_combout\ & ((\RAM_inst|altsyncram_component|auto_generated|ram_block1a56~portadataout\) # 
-- ((!\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1))))) # (!\RAM_inst|altsyncram_component|auto_generated|mux2|_~0_combout\ & (((\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1) & 
-- \RAM_inst|altsyncram_component|auto_generated|ram_block1a48~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|mux2|_~0_combout\,
	datab => \RAM_inst|altsyncram_component|auto_generated|ram_block1a56~portadataout\,
	datac => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1),
	datad => \RAM_inst|altsyncram_component|auto_generated|ram_block1a48~portadataout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~1_combout\);

-- Location: LCFF_X17_Y17_N17
\RAM_inst|altsyncram_component|auto_generated|address_reg_a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \address~combout\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(2));

-- Location: LCCOMB_X25_Y16_N26
\RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode446w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode446w[3]~0_combout\ = (!\address~combout\(14) & (\address~combout\(12) & !\address~combout\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \address~combout\(14),
	datac => \address~combout\(12),
	datad => \address~combout\(13),
	combout => \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode446w[3]~0_combout\);

-- Location: M4K_X13_Y21
\RAM_inst|altsyncram_component|auto_generated|ram_block1a8\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode446w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode446w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a8_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: LCFF_X17_Y17_N11
\RAM_inst|altsyncram_component|auto_generated|address_reg_a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock~clkctrl_outclk\,
	sdata => \address~combout\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0));

-- Location: LCCOMB_X25_Y16_N22
\RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode466w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode466w[3]~0_combout\ = (!\address~combout\(14) & (\address~combout\(12) & \address~combout\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \address~combout\(14),
	datac => \address~combout\(12),
	datad => \address~combout\(13),
	combout => \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode466w[3]~0_combout\);

-- Location: M4K_X26_Y22
\RAM_inst|altsyncram_component|auto_generated|ram_block1a24\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode466w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode466w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a24_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a24_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a24_PORTADATAOUT_bus\);

-- Location: LCCOMB_X17_Y17_N18
\RAM_inst|altsyncram_component|auto_generated|mux2|_~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~3_combout\ = (\RAM_inst|altsyncram_component|auto_generated|mux2|_~2_combout\ & (((\RAM_inst|altsyncram_component|auto_generated|ram_block1a24~portadataout\) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0))))) # (!\RAM_inst|altsyncram_component|auto_generated|mux2|_~2_combout\ & (\RAM_inst|altsyncram_component|auto_generated|ram_block1a8~portadataout\ & 
-- (\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|mux2|_~2_combout\,
	datab => \RAM_inst|altsyncram_component|auto_generated|ram_block1a8~portadataout\,
	datac => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0),
	datad => \RAM_inst|altsyncram_component|auto_generated|ram_block1a24~portadataout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~3_combout\);

-- Location: LCCOMB_X17_Y17_N16
\RAM_inst|altsyncram_component|auto_generated|mux2|_~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~4_combout\ = (\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(2) & (\RAM_inst|altsyncram_component|auto_generated|mux2|_~1_combout\)) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(2) & ((\RAM_inst|altsyncram_component|auto_generated|mux2|_~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|mux2|_~1_combout\,
	datac => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(2),
	datad => \RAM_inst|altsyncram_component|auto_generated|mux2|_~3_combout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~4_combout\);

-- Location: LCCOMB_X25_Y16_N14
\RAM_inst|altsyncram_component|auto_generated|decode3|w_anode429w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode429w[3]~0_combout\ = (!\address~combout\(14) & (!\address~combout\(12) & !\address~combout\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \address~combout\(14),
	datac => \address~combout\(12),
	datad => \address~combout\(13),
	combout => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode429w[3]~0_combout\);

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[1]~I\ : cycloneii_io
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
	padio => ww_data(1),
	combout => \data~combout\(1));

-- Location: M4K_X13_Y17
\RAM_inst|altsyncram_component|auto_generated|ram_block1a1\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode429w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode429w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a1_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: LCCOMB_X25_Y16_N30
\RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode456w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode456w[3]~0_combout\ = (!\address~combout\(14) & (!\address~combout\(12) & \address~combout\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \address~combout\(14),
	datac => \address~combout\(12),
	datad => \address~combout\(13),
	combout => \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode456w[3]~0_combout\);

-- Location: M4K_X13_Y18
\RAM_inst|altsyncram_component|auto_generated|ram_block1a17\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode456w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode456w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a17_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\);

-- Location: LCCOMB_X17_Y17_N30
\RAM_inst|altsyncram_component|auto_generated|mux2|_~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~7_combout\ = (\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0) & (((\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1))))) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0) & ((\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1) & ((\RAM_inst|altsyncram_component|auto_generated|ram_block1a17~portadataout\))) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1) & (\RAM_inst|altsyncram_component|auto_generated|ram_block1a1~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0),
	datab => \RAM_inst|altsyncram_component|auto_generated|ram_block1a1~portadataout\,
	datac => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1),
	datad => \RAM_inst|altsyncram_component|auto_generated|ram_block1a17~portadataout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~7_combout\);

-- Location: M4K_X13_Y15
\RAM_inst|altsyncram_component|auto_generated|ram_block1a9\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode446w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode446w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a9_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\);

-- Location: LCCOMB_X17_Y17_N4
\RAM_inst|altsyncram_component|auto_generated|mux2|_~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~8_combout\ = (\RAM_inst|altsyncram_component|auto_generated|mux2|_~7_combout\ & ((\RAM_inst|altsyncram_component|auto_generated|ram_block1a25~portadataout\) # 
-- ((!\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0))))) # (!\RAM_inst|altsyncram_component|auto_generated|mux2|_~7_combout\ & (((\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0) & 
-- \RAM_inst|altsyncram_component|auto_generated|ram_block1a9~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|ram_block1a25~portadataout\,
	datab => \RAM_inst|altsyncram_component|auto_generated|mux2|_~7_combout\,
	datac => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0),
	datad => \RAM_inst|altsyncram_component|auto_generated|ram_block1a9~portadataout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~8_combout\);

-- Location: M4K_X13_Y6
\RAM_inst|altsyncram_component|auto_generated|ram_block1a49\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode496w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode496w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a49_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a49_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a49_PORTADATAOUT_bus\);

-- Location: M4K_X13_Y4
\RAM_inst|altsyncram_component|auto_generated|ram_block1a57\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode506w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode506w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a57_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a57_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a57_PORTADATAOUT_bus\);

-- Location: LCCOMB_X25_Y16_N2
\RAM_inst|altsyncram_component|auto_generated|decode3|w_anode476w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode476w[3]~0_combout\ = (\address~combout\(14) & (!\address~combout\(12) & !\address~combout\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \address~combout\(14),
	datac => \address~combout\(12),
	datad => \address~combout\(13),
	combout => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode476w[3]~0_combout\);

-- Location: M4K_X26_Y13
\RAM_inst|altsyncram_component|auto_generated|ram_block1a33\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode476w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode476w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a33_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a33_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a33_PORTADATAOUT_bus\);

-- Location: LCCOMB_X25_Y16_N10
\RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode486w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode486w[3]~0_combout\ = (\address~combout\(14) & (\address~combout\(12) & !\address~combout\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \address~combout\(14),
	datac => \address~combout\(12),
	datad => \address~combout\(13),
	combout => \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode486w[3]~0_combout\);

-- Location: M4K_X13_Y9
\RAM_inst|altsyncram_component|auto_generated|ram_block1a41\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode486w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode486w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a41_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a41_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a41_PORTADATAOUT_bus\);

-- Location: LCCOMB_X17_Y17_N26
\RAM_inst|altsyncram_component|auto_generated|mux2|_~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~5_combout\ = (\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0) & (((\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1)) # 
-- (\RAM_inst|altsyncram_component|auto_generated|ram_block1a41~portadataout\)))) # (!\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0) & (\RAM_inst|altsyncram_component|auto_generated|ram_block1a33~portadataout\ & 
-- (!\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0),
	datab => \RAM_inst|altsyncram_component|auto_generated|ram_block1a33~portadataout\,
	datac => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1),
	datad => \RAM_inst|altsyncram_component|auto_generated|ram_block1a41~portadataout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~5_combout\);

-- Location: LCCOMB_X17_Y17_N28
\RAM_inst|altsyncram_component|auto_generated|mux2|_~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~6_combout\ = (\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1) & ((\RAM_inst|altsyncram_component|auto_generated|mux2|_~5_combout\ & 
-- ((\RAM_inst|altsyncram_component|auto_generated|ram_block1a57~portadataout\))) # (!\RAM_inst|altsyncram_component|auto_generated|mux2|_~5_combout\ & (\RAM_inst|altsyncram_component|auto_generated|ram_block1a49~portadataout\)))) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1) & (((\RAM_inst|altsyncram_component|auto_generated|mux2|_~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1),
	datab => \RAM_inst|altsyncram_component|auto_generated|ram_block1a49~portadataout\,
	datac => \RAM_inst|altsyncram_component|auto_generated|ram_block1a57~portadataout\,
	datad => \RAM_inst|altsyncram_component|auto_generated|mux2|_~5_combout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~6_combout\);

-- Location: LCCOMB_X17_Y17_N6
\RAM_inst|altsyncram_component|auto_generated|mux2|_~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~9_combout\ = (\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(2) & ((\RAM_inst|altsyncram_component|auto_generated|mux2|_~6_combout\))) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(2) & (\RAM_inst|altsyncram_component|auto_generated|mux2|_~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(2),
	datac => \RAM_inst|altsyncram_component|auto_generated|mux2|_~8_combout\,
	datad => \RAM_inst|altsyncram_component|auto_generated|mux2|_~6_combout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~9_combout\);

-- Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[2]~I\ : cycloneii_io
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
	padio => ww_data(2),
	combout => \data~combout\(2));

-- Location: M4K_X13_Y25
\RAM_inst|altsyncram_component|auto_generated|ram_block1a18\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode456w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode456w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a18_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\);

-- Location: M4K_X13_Y20
\RAM_inst|altsyncram_component|auto_generated|ram_block1a2\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode429w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode429w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: LCCOMB_X17_Y17_N8
\RAM_inst|altsyncram_component|auto_generated|mux2|_~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~12_combout\ = (\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0) & (((\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1))))) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0) & ((\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1) & (\RAM_inst|altsyncram_component|auto_generated|ram_block1a18~portadataout\)) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1) & ((\RAM_inst|altsyncram_component|auto_generated|ram_block1a2~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0),
	datab => \RAM_inst|altsyncram_component|auto_generated|ram_block1a18~portadataout\,
	datac => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1),
	datad => \RAM_inst|altsyncram_component|auto_generated|ram_block1a2~portadataout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~12_combout\);

-- Location: M4K_X13_Y24
\RAM_inst|altsyncram_component|auto_generated|ram_block1a10\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode446w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode446w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a10_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y25
\RAM_inst|altsyncram_component|auto_generated|ram_block1a26\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode466w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode466w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a26_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a26_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a26_PORTADATAOUT_bus\);

-- Location: LCCOMB_X17_Y17_N14
\RAM_inst|altsyncram_component|auto_generated|mux2|_~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~13_combout\ = (\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0) & ((\RAM_inst|altsyncram_component|auto_generated|mux2|_~12_combout\ & 
-- ((\RAM_inst|altsyncram_component|auto_generated|ram_block1a26~portadataout\))) # (!\RAM_inst|altsyncram_component|auto_generated|mux2|_~12_combout\ & (\RAM_inst|altsyncram_component|auto_generated|ram_block1a10~portadataout\)))) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0) & (\RAM_inst|altsyncram_component|auto_generated|mux2|_~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0),
	datab => \RAM_inst|altsyncram_component|auto_generated|mux2|_~12_combout\,
	datac => \RAM_inst|altsyncram_component|auto_generated|ram_block1a10~portadataout\,
	datad => \RAM_inst|altsyncram_component|auto_generated|ram_block1a26~portadataout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~13_combout\);

-- Location: M4K_X13_Y8
\RAM_inst|altsyncram_component|auto_generated|ram_block1a58\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode506w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode506w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a58_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a58_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a58_PORTADATAOUT_bus\);

-- Location: M4K_X13_Y7
\RAM_inst|altsyncram_component|auto_generated|ram_block1a50\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode496w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode496w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a50_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a50_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a50_PORTADATAOUT_bus\);

-- Location: LCCOMB_X17_Y17_N22
\RAM_inst|altsyncram_component|auto_generated|mux2|_~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~11_combout\ = (\RAM_inst|altsyncram_component|auto_generated|mux2|_~10_combout\ & ((\RAM_inst|altsyncram_component|auto_generated|ram_block1a58~portadataout\) # 
-- ((!\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1))))) # (!\RAM_inst|altsyncram_component|auto_generated|mux2|_~10_combout\ & (((\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1) & 
-- \RAM_inst|altsyncram_component|auto_generated|ram_block1a50~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|mux2|_~10_combout\,
	datab => \RAM_inst|altsyncram_component|auto_generated|ram_block1a58~portadataout\,
	datac => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1),
	datad => \RAM_inst|altsyncram_component|auto_generated|ram_block1a50~portadataout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~11_combout\);

-- Location: LCCOMB_X17_Y17_N0
\RAM_inst|altsyncram_component|auto_generated|mux2|_~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~14_combout\ = (\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(2) & ((\RAM_inst|altsyncram_component|auto_generated|mux2|_~11_combout\))) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(2) & (\RAM_inst|altsyncram_component|auto_generated|mux2|_~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(2),
	datac => \RAM_inst|altsyncram_component|auto_generated|mux2|_~13_combout\,
	datad => \RAM_inst|altsyncram_component|auto_generated|mux2|_~11_combout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~14_combout\);

-- Location: PIN_AE8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[3]~I\ : cycloneii_io
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
	padio => ww_data(3),
	combout => \data~combout\(3));

-- Location: M4K_X13_Y26
\RAM_inst|altsyncram_component|auto_generated|ram_block1a11\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode446w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode446w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a11_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\);

-- Location: M4K_X13_Y27
\RAM_inst|altsyncram_component|auto_generated|ram_block1a19\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode456w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode456w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a19_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a19_PORTADATAOUT_bus\);

-- Location: M4K_X13_Y23
\RAM_inst|altsyncram_component|auto_generated|ram_block1a3\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode429w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode429w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a3_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

-- Location: LCCOMB_X22_Y19_N16
\RAM_inst|altsyncram_component|auto_generated|mux2|_~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~17_combout\ = (\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0) & (((\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1))))) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0) & ((\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1) & (\RAM_inst|altsyncram_component|auto_generated|ram_block1a19~portadataout\)) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1) & ((\RAM_inst|altsyncram_component|auto_generated|ram_block1a3~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0),
	datab => \RAM_inst|altsyncram_component|auto_generated|ram_block1a19~portadataout\,
	datac => \RAM_inst|altsyncram_component|auto_generated|ram_block1a3~portadataout\,
	datad => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1),
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~17_combout\);

-- Location: M4K_X26_Y19
\RAM_inst|altsyncram_component|auto_generated|ram_block1a27\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode466w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode466w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a27_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a27_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a27_PORTADATAOUT_bus\);

-- Location: LCCOMB_X22_Y19_N14
\RAM_inst|altsyncram_component|auto_generated|mux2|_~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~18_combout\ = (\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0) & ((\RAM_inst|altsyncram_component|auto_generated|mux2|_~17_combout\ & 
-- ((\RAM_inst|altsyncram_component|auto_generated|ram_block1a27~portadataout\))) # (!\RAM_inst|altsyncram_component|auto_generated|mux2|_~17_combout\ & (\RAM_inst|altsyncram_component|auto_generated|ram_block1a11~portadataout\)))) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0) & (((\RAM_inst|altsyncram_component|auto_generated|mux2|_~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0),
	datab => \RAM_inst|altsyncram_component|auto_generated|ram_block1a11~portadataout\,
	datac => \RAM_inst|altsyncram_component|auto_generated|mux2|_~17_combout\,
	datad => \RAM_inst|altsyncram_component|auto_generated|ram_block1a27~portadataout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~18_combout\);

-- Location: M4K_X26_Y3
\RAM_inst|altsyncram_component|auto_generated|ram_block1a51\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode496w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode496w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a51_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a51_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a51_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y7
\RAM_inst|altsyncram_component|auto_generated|ram_block1a59\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode506w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode506w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a59_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a59_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a59_PORTADATAOUT_bus\);

-- Location: LCCOMB_X22_Y19_N6
\RAM_inst|altsyncram_component|auto_generated|mux2|_~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~16_combout\ = (\RAM_inst|altsyncram_component|auto_generated|mux2|_~15_combout\ & (((\RAM_inst|altsyncram_component|auto_generated|ram_block1a59~portadataout\)) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1)))) # (!\RAM_inst|altsyncram_component|auto_generated|mux2|_~15_combout\ & (\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1) & 
-- (\RAM_inst|altsyncram_component|auto_generated|ram_block1a51~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|mux2|_~15_combout\,
	datab => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1),
	datac => \RAM_inst|altsyncram_component|auto_generated|ram_block1a51~portadataout\,
	datad => \RAM_inst|altsyncram_component|auto_generated|ram_block1a59~portadataout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~16_combout\);

-- Location: LCCOMB_X22_Y19_N8
\RAM_inst|altsyncram_component|auto_generated|mux2|_~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~19_combout\ = (\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(2) & ((\RAM_inst|altsyncram_component|auto_generated|mux2|_~16_combout\))) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(2) & (\RAM_inst|altsyncram_component|auto_generated|mux2|_~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM_inst|altsyncram_component|auto_generated|mux2|_~18_combout\,
	datac => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(2),
	datad => \RAM_inst|altsyncram_component|auto_generated|mux2|_~16_combout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~19_combout\);

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[4]~I\ : cycloneii_io
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
	padio => ww_data(4),
	combout => \data~combout\(4));

-- Location: M4K_X13_Y16
\RAM_inst|altsyncram_component|auto_generated|ram_block1a60\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode506w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode506w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a60_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a60_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a60_PORTADATAOUT_bus\);

-- Location: M4K_X52_Y15
\RAM_inst|altsyncram_component|auto_generated|ram_block1a36\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode476w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode476w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a36_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a36_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a36_PORTADATAOUT_bus\);

-- Location: LCCOMB_X22_Y19_N18
\RAM_inst|altsyncram_component|auto_generated|mux2|_~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~20_combout\ = (\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1) & (((\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0))))) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1) & ((\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0) & (\RAM_inst|altsyncram_component|auto_generated|ram_block1a44~portadataout\)) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0) & ((\RAM_inst|altsyncram_component|auto_generated|ram_block1a36~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|ram_block1a44~portadataout\,
	datab => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1),
	datac => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0),
	datad => \RAM_inst|altsyncram_component|auto_generated|ram_block1a36~portadataout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~20_combout\);

-- Location: LCCOMB_X22_Y19_N20
\RAM_inst|altsyncram_component|auto_generated|mux2|_~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~21_combout\ = (\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1) & ((\RAM_inst|altsyncram_component|auto_generated|mux2|_~20_combout\ & 
-- ((\RAM_inst|altsyncram_component|auto_generated|ram_block1a60~portadataout\))) # (!\RAM_inst|altsyncram_component|auto_generated|mux2|_~20_combout\ & (\RAM_inst|altsyncram_component|auto_generated|ram_block1a52~portadataout\)))) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1) & (((\RAM_inst|altsyncram_component|auto_generated|mux2|_~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|ram_block1a52~portadataout\,
	datab => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1),
	datac => \RAM_inst|altsyncram_component|auto_generated|ram_block1a60~portadataout\,
	datad => \RAM_inst|altsyncram_component|auto_generated|mux2|_~20_combout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~21_combout\);

-- Location: M4K_X13_Y30
\RAM_inst|altsyncram_component|auto_generated|ram_block1a20\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode456w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode456w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a20_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y21
\RAM_inst|altsyncram_component|auto_generated|ram_block1a4\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode429w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode429w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: LCCOMB_X22_Y19_N2
\RAM_inst|altsyncram_component|auto_generated|mux2|_~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~22_combout\ = (\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0) & (\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1))) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0) & ((\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1) & (\RAM_inst|altsyncram_component|auto_generated|ram_block1a20~portadataout\)) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1) & ((\RAM_inst|altsyncram_component|auto_generated|ram_block1a4~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0),
	datab => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1),
	datac => \RAM_inst|altsyncram_component|auto_generated|ram_block1a20~portadataout\,
	datad => \RAM_inst|altsyncram_component|auto_generated|ram_block1a4~portadataout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~22_combout\);

-- Location: M4K_X13_Y31
\RAM_inst|altsyncram_component|auto_generated|ram_block1a12\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode446w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode446w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y23
\RAM_inst|altsyncram_component|auto_generated|ram_block1a28\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode466w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode466w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a28_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a28_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a28_PORTADATAOUT_bus\);

-- Location: LCCOMB_X22_Y19_N28
\RAM_inst|altsyncram_component|auto_generated|mux2|_~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~23_combout\ = (\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0) & ((\RAM_inst|altsyncram_component|auto_generated|mux2|_~22_combout\ & 
-- ((\RAM_inst|altsyncram_component|auto_generated|ram_block1a28~portadataout\))) # (!\RAM_inst|altsyncram_component|auto_generated|mux2|_~22_combout\ & (\RAM_inst|altsyncram_component|auto_generated|ram_block1a12~portadataout\)))) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0) & (\RAM_inst|altsyncram_component|auto_generated|mux2|_~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0),
	datab => \RAM_inst|altsyncram_component|auto_generated|mux2|_~22_combout\,
	datac => \RAM_inst|altsyncram_component|auto_generated|ram_block1a12~portadataout\,
	datad => \RAM_inst|altsyncram_component|auto_generated|ram_block1a28~portadataout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~23_combout\);

-- Location: LCCOMB_X22_Y19_N22
\RAM_inst|altsyncram_component|auto_generated|mux2|_~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~24_combout\ = (\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(2) & (\RAM_inst|altsyncram_component|auto_generated|mux2|_~21_combout\)) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(2) & ((\RAM_inst|altsyncram_component|auto_generated|mux2|_~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|mux2|_~21_combout\,
	datab => \RAM_inst|altsyncram_component|auto_generated|mux2|_~23_combout\,
	datac => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(2),
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~24_combout\);

-- Location: PIN_AC10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[5]~I\ : cycloneii_io
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
	padio => ww_data(5),
	combout => \data~combout\(5));

-- Location: M4K_X26_Y20
\RAM_inst|altsyncram_component|auto_generated|ram_block1a5\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode429w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode429w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a5_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

-- Location: LCCOMB_X25_Y20_N28
\RAM_inst|altsyncram_component|auto_generated|mux2|_~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~27_combout\ = (\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1) & ((\RAM_inst|altsyncram_component|auto_generated|ram_block1a21~portadataout\) # 
-- ((\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0))))) # (!\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1) & (((\RAM_inst|altsyncram_component|auto_generated|ram_block1a5~portadataout\ & 
-- !\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|ram_block1a21~portadataout\,
	datab => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1),
	datac => \RAM_inst|altsyncram_component|auto_generated|ram_block1a5~portadataout\,
	datad => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0),
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~27_combout\);

-- Location: M4K_X26_Y28
\RAM_inst|altsyncram_component|auto_generated|ram_block1a13\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode446w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode446w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a13_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\);

-- Location: LCCOMB_X25_Y20_N22
\RAM_inst|altsyncram_component|auto_generated|mux2|_~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~28_combout\ = (\RAM_inst|altsyncram_component|auto_generated|mux2|_~27_combout\ & ((\RAM_inst|altsyncram_component|auto_generated|ram_block1a29~portadataout\) # 
-- ((!\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0))))) # (!\RAM_inst|altsyncram_component|auto_generated|mux2|_~27_combout\ & (((\RAM_inst|altsyncram_component|auto_generated|ram_block1a13~portadataout\ & 
-- \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|ram_block1a29~portadataout\,
	datab => \RAM_inst|altsyncram_component|auto_generated|mux2|_~27_combout\,
	datac => \RAM_inst|altsyncram_component|auto_generated|ram_block1a13~portadataout\,
	datad => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0),
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~28_combout\);

-- Location: M4K_X26_Y8
\RAM_inst|altsyncram_component|auto_generated|ram_block1a45\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode486w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode486w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a45_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a45_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a45_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y12
\RAM_inst|altsyncram_component|auto_generated|ram_block1a37\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode476w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode476w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a37_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a37_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a37_PORTADATAOUT_bus\);

-- Location: LCCOMB_X25_Y20_N0
\RAM_inst|altsyncram_component|auto_generated|mux2|_~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~25_combout\ = (\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0) & ((\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1)) # 
-- ((\RAM_inst|altsyncram_component|auto_generated|ram_block1a45~portadataout\)))) # (!\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0) & (!\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1) & 
-- ((\RAM_inst|altsyncram_component|auto_generated|ram_block1a37~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0),
	datab => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1),
	datac => \RAM_inst|altsyncram_component|auto_generated|ram_block1a45~portadataout\,
	datad => \RAM_inst|altsyncram_component|auto_generated|ram_block1a37~portadataout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~25_combout\);

-- Location: M4K_X26_Y5
\RAM_inst|altsyncram_component|auto_generated|ram_block1a61\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode506w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode506w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a61_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a61_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a61_PORTADATAOUT_bus\);

-- Location: LCCOMB_X25_Y20_N6
\RAM_inst|altsyncram_component|auto_generated|mux2|_~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~26_combout\ = (\RAM_inst|altsyncram_component|auto_generated|mux2|_~25_combout\ & (((\RAM_inst|altsyncram_component|auto_generated|ram_block1a61~portadataout\) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1))))) # (!\RAM_inst|altsyncram_component|auto_generated|mux2|_~25_combout\ & (\RAM_inst|altsyncram_component|auto_generated|ram_block1a53~portadataout\ & 
-- (\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|ram_block1a53~portadataout\,
	datab => \RAM_inst|altsyncram_component|auto_generated|mux2|_~25_combout\,
	datac => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1),
	datad => \RAM_inst|altsyncram_component|auto_generated|ram_block1a61~portadataout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~26_combout\);

-- Location: LCCOMB_X25_Y20_N8
\RAM_inst|altsyncram_component|auto_generated|mux2|_~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~29_combout\ = (\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(2) & ((\RAM_inst|altsyncram_component|auto_generated|mux2|_~26_combout\))) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(2) & (\RAM_inst|altsyncram_component|auto_generated|mux2|_~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM_inst|altsyncram_component|auto_generated|mux2|_~28_combout\,
	datac => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(2),
	datad => \RAM_inst|altsyncram_component|auto_generated|mux2|_~26_combout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~29_combout\);

-- Location: PIN_AD16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[6]~I\ : cycloneii_io
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
	padio => ww_data(6),
	combout => \data~combout\(6));

-- Location: M4K_X52_Y20
\RAM_inst|altsyncram_component|auto_generated|ram_block1a6\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode429w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode429w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: LCCOMB_X25_Y20_N2
\RAM_inst|altsyncram_component|auto_generated|mux2|_~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~32_combout\ = (\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1) & ((\RAM_inst|altsyncram_component|auto_generated|ram_block1a22~portadataout\) # 
-- ((\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0))))) # (!\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1) & (((\RAM_inst|altsyncram_component|auto_generated|ram_block1a6~portadataout\ & 
-- !\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|ram_block1a22~portadataout\,
	datab => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1),
	datac => \RAM_inst|altsyncram_component|auto_generated|ram_block1a6~portadataout\,
	datad => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0),
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~32_combout\);

-- Location: M4K_X26_Y29
\RAM_inst|altsyncram_component|auto_generated|ram_block1a14\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode446w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode446w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

-- Location: LCCOMB_X25_Y20_N4
\RAM_inst|altsyncram_component|auto_generated|mux2|_~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~33_combout\ = (\RAM_inst|altsyncram_component|auto_generated|mux2|_~32_combout\ & ((\RAM_inst|altsyncram_component|auto_generated|ram_block1a30~portadataout\) # 
-- ((!\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0))))) # (!\RAM_inst|altsyncram_component|auto_generated|mux2|_~32_combout\ & (((\RAM_inst|altsyncram_component|auto_generated|ram_block1a14~portadataout\ & 
-- \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|ram_block1a30~portadataout\,
	datab => \RAM_inst|altsyncram_component|auto_generated|mux2|_~32_combout\,
	datac => \RAM_inst|altsyncram_component|auto_generated|ram_block1a14~portadataout\,
	datad => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0),
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~33_combout\);

-- Location: M4K_X26_Y4
\RAM_inst|altsyncram_component|auto_generated|ram_block1a54\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode496w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode496w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a54_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a54_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a54_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y6
\RAM_inst|altsyncram_component|auto_generated|ram_block1a62\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode506w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode506w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a62_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a62_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a62_PORTADATAOUT_bus\);

-- Location: LCCOMB_X25_Y20_N12
\RAM_inst|altsyncram_component|auto_generated|mux2|_~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~31_combout\ = (\RAM_inst|altsyncram_component|auto_generated|mux2|_~30_combout\ & (((\RAM_inst|altsyncram_component|auto_generated|ram_block1a62~portadataout\)) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1)))) # (!\RAM_inst|altsyncram_component|auto_generated|mux2|_~30_combout\ & (\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1) & 
-- (\RAM_inst|altsyncram_component|auto_generated|ram_block1a54~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|mux2|_~30_combout\,
	datab => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1),
	datac => \RAM_inst|altsyncram_component|auto_generated|ram_block1a54~portadataout\,
	datad => \RAM_inst|altsyncram_component|auto_generated|ram_block1a62~portadataout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~31_combout\);

-- Location: LCCOMB_X25_Y20_N18
\RAM_inst|altsyncram_component|auto_generated|mux2|_~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~34_combout\ = (\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(2) & ((\RAM_inst|altsyncram_component|auto_generated|mux2|_~31_combout\))) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(2) & (\RAM_inst|altsyncram_component|auto_generated|mux2|_~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM_inst|altsyncram_component|auto_generated|mux2|_~33_combout\,
	datac => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(2),
	datad => \RAM_inst|altsyncram_component|auto_generated|mux2|_~31_combout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~34_combout\);

-- Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data[7]~I\ : cycloneii_io
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
	padio => ww_data(7),
	combout => \data~combout\(7));

-- Location: M4K_X13_Y29
\RAM_inst|altsyncram_component|auto_generated|ram_block1a23\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode456w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode456w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a23_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a23_PORTADATAOUT_bus\);

-- Location: M4K_X52_Y19
\RAM_inst|altsyncram_component|auto_generated|ram_block1a7\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode429w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode429w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a7_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\);

-- Location: LCCOMB_X22_Y19_N4
\RAM_inst|altsyncram_component|auto_generated|mux2|_~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~37_combout\ = (\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0) & (\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1))) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0) & ((\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1) & (\RAM_inst|altsyncram_component|auto_generated|ram_block1a23~portadataout\)) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1) & ((\RAM_inst|altsyncram_component|auto_generated|ram_block1a7~portadataout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0),
	datab => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1),
	datac => \RAM_inst|altsyncram_component|auto_generated|ram_block1a23~portadataout\,
	datad => \RAM_inst|altsyncram_component|auto_generated|ram_block1a7~portadataout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~37_combout\);

-- Location: M4K_X26_Y31
\RAM_inst|altsyncram_component|auto_generated|ram_block1a15\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode446w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode446w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a15_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y26
\RAM_inst|altsyncram_component|auto_generated|ram_block1a31\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode466w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode466w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a31_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a31_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a31_PORTADATAOUT_bus\);

-- Location: LCCOMB_X22_Y19_N30
\RAM_inst|altsyncram_component|auto_generated|mux2|_~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~38_combout\ = (\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0) & ((\RAM_inst|altsyncram_component|auto_generated|mux2|_~37_combout\ & 
-- ((\RAM_inst|altsyncram_component|auto_generated|ram_block1a31~portadataout\))) # (!\RAM_inst|altsyncram_component|auto_generated|mux2|_~37_combout\ & (\RAM_inst|altsyncram_component|auto_generated|ram_block1a15~portadataout\)))) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0) & (\RAM_inst|altsyncram_component|auto_generated|mux2|_~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(0),
	datab => \RAM_inst|altsyncram_component|auto_generated|mux2|_~37_combout\,
	datac => \RAM_inst|altsyncram_component|auto_generated|ram_block1a15~portadataout\,
	datad => \RAM_inst|altsyncram_component|auto_generated|ram_block1a31~portadataout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~38_combout\);

-- Location: M4K_X13_Y12
\RAM_inst|altsyncram_component|auto_generated|ram_block1a55\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode496w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode496w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a55_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a55_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a55_PORTADATAOUT_bus\);

-- Location: M4K_X26_Y14
\RAM_inst|altsyncram_component|auto_generated|ram_block1a63\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:RAM_inst|altsyncram:altsyncram_component|altsyncram_p2e1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 12,
	port_b_data_width => 1,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \RAM_inst|altsyncram_component|auto_generated|decode3|w_anode506w\(3),
	clk0 => \clock~clkctrl_outclk\,
	ena0 => \RAM_inst|altsyncram_component|auto_generated|deep_decode|w_anode506w[3]~0_combout\,
	portadatain => \RAM_inst|altsyncram_component|auto_generated|ram_block1a63_PORTADATAIN_bus\,
	portaaddr => \RAM_inst|altsyncram_component|auto_generated|ram_block1a63_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM_inst|altsyncram_component|auto_generated|ram_block1a63_PORTADATAOUT_bus\);

-- Location: LCCOMB_X22_Y19_N10
\RAM_inst|altsyncram_component|auto_generated|mux2|_~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~36_combout\ = (\RAM_inst|altsyncram_component|auto_generated|mux2|_~35_combout\ & (((\RAM_inst|altsyncram_component|auto_generated|ram_block1a63~portadataout\)) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1)))) # (!\RAM_inst|altsyncram_component|auto_generated|mux2|_~35_combout\ & (\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1) & 
-- (\RAM_inst|altsyncram_component|auto_generated|ram_block1a55~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM_inst|altsyncram_component|auto_generated|mux2|_~35_combout\,
	datab => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(1),
	datac => \RAM_inst|altsyncram_component|auto_generated|ram_block1a55~portadataout\,
	datad => \RAM_inst|altsyncram_component|auto_generated|ram_block1a63~portadataout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~36_combout\);

-- Location: LCCOMB_X22_Y19_N0
\RAM_inst|altsyncram_component|auto_generated|mux2|_~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \RAM_inst|altsyncram_component|auto_generated|mux2|_~39_combout\ = (\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(2) & ((\RAM_inst|altsyncram_component|auto_generated|mux2|_~36_combout\))) # 
-- (!\RAM_inst|altsyncram_component|auto_generated|address_reg_a\(2) & (\RAM_inst|altsyncram_component|auto_generated|mux2|_~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RAM_inst|altsyncram_component|auto_generated|mux2|_~38_combout\,
	datac => \RAM_inst|altsyncram_component|auto_generated|address_reg_a\(2),
	datad => \RAM_inst|altsyncram_component|auto_generated|mux2|_~36_combout\,
	combout => \RAM_inst|altsyncram_component|auto_generated|mux2|_~39_combout\);

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\q[0]~I\ : cycloneii_io
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
	datain => \RAM_inst|altsyncram_component|auto_generated|mux2|_~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(0));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\q[1]~I\ : cycloneii_io
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
	datain => \RAM_inst|altsyncram_component|auto_generated|mux2|_~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(1));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\q[2]~I\ : cycloneii_io
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
	datain => \RAM_inst|altsyncram_component|auto_generated|mux2|_~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(2));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\q[3]~I\ : cycloneii_io
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
	datain => \RAM_inst|altsyncram_component|auto_generated|mux2|_~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(3));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\q[4]~I\ : cycloneii_io
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
	datain => \RAM_inst|altsyncram_component|auto_generated|mux2|_~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(4));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\q[5]~I\ : cycloneii_io
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
	datain => \RAM_inst|altsyncram_component|auto_generated|mux2|_~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(5));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\q[6]~I\ : cycloneii_io
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
	datain => \RAM_inst|altsyncram_component|auto_generated|mux2|_~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(6));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\q[7]~I\ : cycloneii_io
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
	datain => \RAM_inst|altsyncram_component|auto_generated|mux2|_~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(7));
END structure;


