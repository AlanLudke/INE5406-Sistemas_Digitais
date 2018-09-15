----------------------------------------------------------------------------------
-- Company:   Federal University of Santa Catarina
-- Engineer:  Prof. Dr. Eng. Rafael Luiz Cancian
-- 
-- Create Date:    
-- Design Name: 
-- Module Name:    compareZero_n_bits - Behavioral 
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


entity compareZero_n_bits is
	generic(width: integer := 8);
	port( 
		inpt0, inpt1: in std_logic_vector(width-1 downto 0);
		equal: out std_logic
	);
end entity;

architecture Behavioral of compareZero_n_bits is
begin
	equal <= '1' when inpt0 = inpt1 else '0';
end architecture;

