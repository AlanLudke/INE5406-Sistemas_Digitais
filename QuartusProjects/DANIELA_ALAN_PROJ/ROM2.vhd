library ieee;
use ieee.std_logic_1164.all;

entity ROM2 is
  port ( address : in std_logic_vector(3 downto 0);
         data : out std_logic_vector(7 downto 0) );
end entity ROM2;

architecture behavioral of ROM2 is
	type mem is array (0 to 9) of std_logic_vector(7 downto 0);

	constant my_Rom2 : mem := (
	0 => "00011001", -- 19
	1 => "11000111", -- C7
   2 => "01100000", -- 60
	3 => "11011110", -- DE
	4 => "10100111", -- A7
	5 => "00100111", -- 27
	6 => "01111110", -- 7E
	7 => "11110111", -- F7
	8 => "10101100", -- AC
	9 => "00110111"); --37
	
begin
   process (address)
   begin
     case address is
	  
		 --ROM2
		 when "0000" => data <= my_Rom2(0);
       when "0001" => data <= my_Rom2(1);
       when "0010" => data <= my_Rom2(2);
       when "0011" => data <= my_Rom2(3);
       when "0100" => data <= my_Rom2(4);
       when "0101" => data <= my_Rom2(5);
       when "0110" => data <= my_Rom2(6);
       when "0111" => data <= my_Rom2(7);
       when "1000" => data <= my_Rom2(8);
       when "1001" => data <= my_Rom2(9);
		 
       when others => data <= "00000000";
		 
       end case;
  end process;
end architecture behavioral;