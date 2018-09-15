----------------------------------------------------------------------------------
-- Company:   Federal University of Santa Catarina
-- Engineer:  Prof. Dr. Eng. Rafael Luiz Cancian
-- 
-- Create Date:    
-- Design Name: 
-- Module Name:    mux2x1nbits - Behavioral 
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
--use work.UtilFunctions.all;


entity mux2x1nbits is
	generic(width: integer := 8);
	port(
		inpt0: in std_logic_vector(width-1 downto 0);
		inpt1: in std_logic_vector(width-1 downto 0);
		sel: in std_logic;
		outp: out std_logic_vector(width-1 downto 0)
	);
end entity;

-- if no configuration binding is specified, then the last architecture is the one synthesized

architecture Behavioral_ConditionalAssignment of mux2x1nbits is
begin
	outp <= inpt0 when sel='0' else inpt1;
end architecture;


architecture Behavioral_SelectedSignalAssignment of mux2x1nbits is
begin
	with sel select
		outp <= inpt0 when '0',
				inpt1 when others;
end architecture;
