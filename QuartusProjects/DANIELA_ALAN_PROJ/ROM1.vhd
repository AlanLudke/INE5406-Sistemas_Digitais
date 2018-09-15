library ieee;
use ieee.std_logic_1164.all;

entity ROM1 is
  port ( address : in std_logic_vector(3 downto 0);
         data : out std_logic_vector(7 downto 0) );
end entity ROM1;

architecture behavioral of ROM1 is
  type mem is array (0 to 9) of std_logic_vector(7 downto 0);
  
  constant my_Rom1 : mem := (
	0 => "00011000", -- 18
	1 => "11000001", -- C1
   2 => "01000000", -- 40
	3 => "11111110", -- FE
	4 => "10100101", -- A5
	5 => "00000111", -- 07
	6 => "01101100", -- 6C
	7 => "11010101", -- d5
	8 => "10111110", -- bE
	9 => "00110011"); --33
	
begin
   process (address)
   begin
     case address is
	  
		 --ROM1
       when "0000" => data <= my_Rom1(0);
       when "0001" => data <= my_Rom1(1);
       when "0010" => data <= my_Rom1(2);
       when "0011" => data <= my_Rom1(3);
       when "0100" => data <= my_Rom1(4);
       when "0101" => data <= my_Rom1(5);
       when "0110" => data <= my_Rom1(6);
       when "0111" => data <= my_Rom1(7);
       when "1000" => data <= my_Rom1(8);
       when "1001" => data <= my_Rom1(9);
		 
       when others => data <= "00000000";
		
       end case;
  end process;
end architecture behavioral;