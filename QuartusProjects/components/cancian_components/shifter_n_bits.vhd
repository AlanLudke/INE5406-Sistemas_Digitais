----------------------------------------------------------------------------------
-- Company:   Federal University of Santa Catarina
-- Engineer:  Prof. Dr. Eng. Rafael Luiz Cancian
-- 
-- Create Date:    
-- Design Name: 
-- Module Name:    shifter_n_bits - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.std_logic_arith.ALL;


entity shifter_n_bits is
	generic(width: integer := 8);
	port(
		input: in std_logic_vector(width-1 downto 0);
		ctrl: in  std_logic_vector(width-1 downto 0);
		output: out std_logic_vector(width-1 downto 0)
	);
end entity;

architecture Behavioral of shifter_n_bits is
	type tpShiftMatrix is array(0 to width-1) of std_logic_vector(width-1 downto 0);
	signal sPossibleShifts: tpShiftMatrix;
begin
	g1: for i in 0 to width-1 generate
		same: for j in 0 to i-1 generate
			sPossibleShifts(i)(j) <= input(j);
		end generate;
		shftd: for j in i to width-i-2 generate
			sPossibleShifts(i)(j+1) <= input(j);
		end generate;
	end generate;
	output <= sPossibleShifts(to_integer(unsigned(ctrl)));
end architecture;

