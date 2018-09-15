----------------------------------------------------------------------------------
-- Company:   Federal University of Santa Catarina
-- Engineer:  Prof. Dr. Eng. Rafael Luiz Cancian
-- 
-- Create Date:    
-- Design Name: 
-- Module Name:    binartyDecoder_n_bits - Behavioral 
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
use work.UtilFunctions.all;


entity binaryDecoder_n_bits is
	generic(width: integer := 8);
	port(
		inpt: in std_logic_vector(log2(width)-1 downto 0);
		outp: out std_logic_vector(width-1 downto 0)
	);
end entity;

architecture Behavioral of binaryDecoder_n_bits is
begin
	p1: process(inpt)
	begin
		outp <= (others=>'0');
		g1: for i in log2(width)-1 downto 0 loop
			if to_integer(unsigned(inpt)) = i then
				outp <= std_logic_vector(to_unsigned(2**i,width));
			end if;
		end loop;
	end process;
end architecture;
