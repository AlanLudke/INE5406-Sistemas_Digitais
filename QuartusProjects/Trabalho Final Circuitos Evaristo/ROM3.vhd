library ieee;
use ieee.std_logic_1164.all;

entity ROM3 is
  port ( address : in std_logic_vector(3 downto 0);
         data : out std_logic_vector(7 downto 0) );
end entity ROM3;

architecture behavioral of ROM3 is
  type mem is array (0 to 9) of std_logic_vector(7 downto 0);
  constant my_Rom : mem := (
	0 => "01010100", -- 18
	1 => "11111110", -- C1
   2 => "01011001", -- 40
	3 => "11000011", -- FE
	4 => "01010111", -- A5
	5 => "00101011", -- 07
	6 => "00000011", -- 6C
	7 => "10001111", -- d5
	8 => "10101110", -- bE
	9 => "01110111"); --33
begin
   process (address)
   begin
     case address is
       when "0000" => data <= my_rom(0);
       when "0001" => data <= my_rom(1);
       when "0010" => data <= my_rom(2);
       when "0011" => data <= my_rom(3);
       when "0100" => data <= my_rom(4);
       when "0101" => data <= my_rom(5);
       when "0110" => data <= my_rom(6);
       when "0111" => data <= my_rom(7);
       when "1000" => data <= my_rom(8);
       when "1001" => data <= my_rom(9);
       when others => data <= "00000000";
       end case;
  end process;
end architecture behavioral;