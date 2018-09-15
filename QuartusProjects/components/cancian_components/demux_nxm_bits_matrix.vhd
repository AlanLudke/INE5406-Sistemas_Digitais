----------------------------------------------------------------------------------
-- Company:   Federal University of Santa Catarina
-- Engineer:  Prof. Dr. Eng. Rafael Luiz Cancian
-- 
-- Create Date:    
-- Design Name: 
-- Module Name:    demux_nxm_bits - Behavioral 
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


entity demux_nxm_bits_matrix is
	generic(	width: integer := 1;
				lenght: integer := 4	);
	port(		inpt: in std_logic_vector(width-1 downto 0);
				sel: in std_logic_vector(log2(lenght)-1 downto 0);
				outp: out tpMatrix(lenght-1 downto 0, width-1 downto 0)	);
end entity;

architecture Behavioral of demux_nxm_bits_matrix is
begin
	g1: for j in lenght-1 downto 0 generate
		g11: for i in width-1 downto 0 generate
			outp(j,i) <= inpt(i) when (j = to_integer(unsigned(sel))) else '0';
		end generate;
	end generate;
end architecture;

