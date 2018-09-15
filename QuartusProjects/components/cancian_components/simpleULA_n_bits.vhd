----------------------------------------------------------------------------------
-- Company:   Federal University of Santa Catarina
-- Engineer:  Prof. Dr. Eng. Rafael Luiz Cancian
-- 
-- Create Date:    
-- Design Name: 
-- Module Name:    simpleULA_n_bits - Behavioral 
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


entity simpleULA_n_bits is
	generic(width: integer := 8);
	port(
		a,b: in std_logic_vector(width-1 downto 0);
		ctrl: in std_logic_vector(2 downto 0);
		zero: out std_logic;
		result: out std_logic_vector(width-1 downto 0)
	);
end entity;

-- if no configuration binding is specified, then the last architecture is the one synthesized

architecture Behavioral_1 of simpleULA_n_bits is
	signal sResult, sSum, sSub, sAnd, sOr, sXor, sNot: std_logic_vector(width-1 downto 0);
begin
	sSum <= std_logic_vector(signed(a)+signed(b));
	sSub <= std_logic_vector(signed(a)-signed(b));
	sAnd <= a and b;
	sOr  <= a or b;
	sNot <= not a;
	sXor <= a xor b;
	with ctrl select
		sResult <= 	sSum when "000",
					sSub when "001",
					sAnd when "010",
					sOr  when "011",
					sXor when "110",
					sNot when "111",
					a    when others;
	zero <= '1' when sResult = (sResult'range=>'0') else '0';
	result <= sResult;
end architecture;


architecture Behavioral_2 of simpleULA_n_bits is
	signal sResult: std_logic_vector(width-1 downto 0);
begin
	with ctrl select
		sResult <= 	std_logic_vector(signed(a)+signed(b))	when "000",
					std_logic_vector(signed(a)-signed(b))	when "001",
					a and b									when "010",
					a or b									when "011",
					a xor b									when "110",
					not a 									when "111",
					a    									when others;
	zero <= '1' when unsigned(sResult) = 0 else '0';
	result <= sResult;
end architecture;
