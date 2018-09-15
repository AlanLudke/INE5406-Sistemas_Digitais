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
use IEEE.std_logic_arith.ALL;
use work.UtilFunctions.all;



entity unsigned_multiplier_n_bits is
	generic (vec_len : natural := 32);
	port (
		reset : in std_ulogic;
		clock : in std_ulogic;
		a : in unsigned(vec_len-1 downto 0);
		b : in unsigned(vec_len-1 downto 0);
	      axb : out unsigned(2*vec_len-1 downto 0)
	);
end entity;

architecture synth of unsigned_multiplier_n_bits is
begin
	p1 : process (reset, clock) is
	variable c_v : unsigned(2*vec_len-1 downto 0);
	begin
		if reset = '1' then
			c_v := (others => '0');
		elsif rising_edge(clock) then
			c_v := a*b;
		end if;
		axb <= c_v;
	end process;
end architecture; 
