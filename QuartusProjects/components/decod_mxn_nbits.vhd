library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

entity decod_mxn_nbits is
   generic( m : positive := 2;
            n : positive := 4);
   port   ( dados   : in  unsigned( m - 1 downto 0);
            enable : in  std_logic := '1';
            dec    : out std_logic_vector( n - 1 downto 0));
end decod_mxn_nbits;
 
architecture comportamento of decod_mxn_nbits is
   begin
 
		A: for i in 0 to n - 1 generate
			dec(i) <= '1' when (to_unsigned(i, dados'length ) = dados )
			else '0';
		end generate;
 end comportamento;