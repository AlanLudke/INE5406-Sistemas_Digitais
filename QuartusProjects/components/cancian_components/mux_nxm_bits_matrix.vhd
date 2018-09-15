----------------------------------------------------------------------------------
-- Company:   Federal University of Santa Catarina
-- Engineer:  Prof. Dr. Eng. Rafael Luiz Cancian
-- 
-- Create Date:    
-- Design Name: 
-- Module Name:    mux_nxm_bits - Behavioral 
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
--use IEEE.std_logic_arith.ALL;
use work.UtilFunctions.all;


entity mux_nxm_bits_matrix is
	generic(	numInputs: integer := 4;
				inputWidth: integer := 1	);
	port(		input: in tpMatrix(numInputs-1 downto 0, inputWidth-1 downto 0);
				sel: in std_logic_vector(log2(numInputs)-1 downto 0);
				output: out std_logic_vector(inputWidth-1 downto 0)	);
end entity;

architecture Behavioral of mux_nxm_bits_matrix is
begin
	g1: for i in inputWidth-1 downto 0 generate
		output(i) <= input(to_integer(unsigned(sel)),i);
	end generate;
end architecture;

