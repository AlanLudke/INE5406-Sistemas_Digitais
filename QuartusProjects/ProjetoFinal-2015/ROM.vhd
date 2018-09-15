LIBRARY IEEE;
    USE IEEE.STD_LOGIC_1164.ALL;
    USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY ROM IS
  PORT(
		enable_prize : in std_logic;
		selected_sequence : in std_logic_vector(12 downto 0);
		prize : out std_logic_vector(10 downto 0) 
       );
END ENTITY;

ARCHITECTURE BEV OF ROM IS

  type mem is array ( 0 to 15) of std_logic_vector(10 downto 0);
  constant my_Rom : mem := (
    0  => "00000110010", -- 50
    1  => "00001100100", -- 100
    2  => "00000000101", -- 5
    3  => "00000001010", -- 10
	 4  => "00000000001", -- 1
    5  => "00000000010", -- 2
    6  => "11111111111", -- -1
    7  => "11111111110", -- -2
	 8  => "11111111100", -- -4
    9  => "11111111000", -- -8
    10 => "11111111011", -- -5
    11 => "11111110110", -- -10
    12 => "11111001111", -- -49
	 13 => "11110011101", -- -99
    14 => "11111001110", -- -50
    15 => "11110011100"  -- -100    
    );

BEGIN

   process (selected_sequence, enable_prize)
   begin
		if enable_prize = '1' then
			case selected_sequence is
				when "0011101110111" => prize <= my_rom(0); -- 0777
				when "1011101110111" => prize <= my_rom(1); -- 1777
				when "0101010101010" => prize <= my_rom(2); -- 0AAA
				when "1101010101010" => prize <= my_rom(3); -- 1AAA
				when "0000100100011" => prize <= my_rom(4); -- 0123
				when "1000100100011" => prize <= my_rom(5); -- 1123
				when "0000100100001" => prize <= my_rom(6); -- 0121
				when "1000100100001" => prize <= my_rom(7); -- 1121
				when "0000100100111" => prize <= my_rom(8); -- 0127
				when "1000100100111" => prize <= my_rom(9); -- 1127
				when "0101010101000" => prize <= my_rom(10);-- 0AA8
				when "1101010101000" => prize <= my_rom(11);-- 1AA8
				when "0101010100101" => prize <= my_rom(12);-- 0AA5
				when "1101010100101" => prize <= my_rom(13);-- 1AA5
				when "0011101110011" => prize <= my_rom(14);-- 0773
				when "1011101110011" => prize <= my_rom(15);-- 1773
				when "0011101111001" => prize <= my_rom(14);-- 0779
				when "1011101111001" => prize <= my_rom(15);-- 1779       
				when others => prize <= (others => '0');
			end case;
		else
			prize <= (others => '0');
		end if;
  end process;

END BEV;

