----------------------------------------------------------------------------------
-- Company:   Federal University of Santa Catarina
-- Engineer:  Prof. Dr. Eng. Rafael Luiz Cancian
-- 
-- Create Date:    
-- Design Name: 
-- Module Name:    adder_n_bits - Behavioral 
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
use ieee.numeric_std.all;

entity adder_n_bits is
	generic(width: integer := 8);
	port(
		a,b: in std_logic_vector(width-1 downto 0);
		sum: out std_logic_vector(width-1 downto 0)
	);
end entity;

architecture Behavioral_Unigned of adder_n_bits is
begin
	sum <= std_logic_vector(unsigned(a)+unsigned(b));
end architecture;

-- if no configuration binding is specified, then the last architecture is the one synthesized

architecture Behavioral_Signed of adder_n_bits is
begin
	sum <= std_logic_vector(signed(a)+signed(b));
end architecture;
