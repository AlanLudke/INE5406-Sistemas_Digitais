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


entity mux_nxm_bits_vector is
	generic(
		width: integer := 2;
		lenght: integer := 4
	);
	port(
		inpt: in std_logic_vector(width*lenght-1 downto 0); 
		sel: in std_logic_vector(log2(lenght)-1 downto 0);
		outp: out std_logic_vector(width-1 downto 0)
	);
end entity;

architecture Behavioral of mux_nxm_bits_vector is
begin
	g1: for i in width-1 downto 0 generate
		outp(i) <= inpt(to_integer(unsigned(sel))*width+i);
	end generate;
end architecture;

