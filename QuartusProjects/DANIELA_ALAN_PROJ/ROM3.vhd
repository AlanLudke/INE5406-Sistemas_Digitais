library ieee;
use ieee.std_logic_1164.all;

entity ROM3 is
  port ( address : in std_logic_vector(3 downto 0);
         data : out std_logic_vector(7 downto 0) );
end entity ROM3;

architecture behavioral of ROM3 is
	type mem is array (0 to 9) of std_logic_vector(7 downto 0);
  
	constant my_Rom3 : mem := (
	0 => "00111001", -- 39
	1 => "11100111", -- E7
   2 => "01100100", -- 64
	3 => "11011010", -- DA
	4 => "10110111", -- B7
	5 => "00111111", -- 3F
	6 => "01100110", -- 66
	7 => "11010111", -- D7
	8 => "10001100", -- 8C
	9 => "00100011"); --23
	
begin
   process (address)
   begin
     case address is
		
		 --ROM3
		 when "0000" => data <= my_Rom3(0);
       when "0001" => data <= my_Rom3(1);
       when "0010" => data <= my_Rom3(2);
       when "0011" => data <= my_Rom3(3);
       when "0100" => data <= my_Rom3(4);
       when "0101" => data <= my_Rom3(5);
       when "0110" => data <= my_Rom3(6);
       when "0111" => data <= my_Rom3(7);
       when "1000" => data <= my_Rom3(8);
       when "1001" => data <= my_Rom3(9);
		
       when others => data <= "00000000";
		 
       end case;
  end process;
end architecture behavioral;