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

entity adder_sub_n_bits is
	generic(width: integer := 8);
	port(
		a,b: in std_logic_vector(width-1 downto 0);
		op: in std_logic; --0:add, 1:sub
		outp: out std_logic_vector(width-1 downto 0)
	);
end entity;

architecture Behavioral_Signed of adder_sub_n_bits is
    signal newb: std_logic_vector(width-1 downto 0);
begin
    newb <= b when op='0' else std_logic_vector(-signed(b) + 1);
	outp <= std_logic_vector(signed(a)+signed(newb));
end architecture;
