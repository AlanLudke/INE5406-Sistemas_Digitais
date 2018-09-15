library ieee;
use ieee.std_logic_1164.all;

entity ROM4 is
  port ( address : in std_logic_vector(3 downto 0);
         data : out std_logic_vector(7 downto 0) );
end entity ROM4;

architecture behavioral of ROM4 is
	type mem is array (0 to 9) of std_logic_vector(7 downto 0);
 
	constant my_Rom4 : mem := (
	0 => "01011001", -- 59
	1 => "10100111", -- A7
   2 => "00100100", -- 24
	3 => "01011010", -- 5A
	4 => "00110111", -- 37
	5 => "00111001", -- 39
	6 => "01111011", -- 7B
	7 => "11010101", -- D5
	8 => "10001111", -- 8F
	9 => "00101011"); --2B
	
begin
   process (address)
   begin
     case address is
	  
		 --ROM4
		 when "0000" => data <= my_Rom4(0);
       when "0001" => data <= my_Rom4(1);
       when "0010" => data <= my_Rom4(2);
       when "0011" => data <= my_Rom4(3);
       when "0100" => data <= my_Rom4(4);
       when "0101" => data <= my_Rom4(5);
       when "0110" => data <= my_Rom4(6);
       when "0111" => data <= my_Rom4(7);
       when "1000" => data <= my_Rom4(8);
       when "1001" => data <= my_Rom4(9);
		 
       when others => data <= "00000000";
		 
       end case;
  end process;
end architecture behavioral;