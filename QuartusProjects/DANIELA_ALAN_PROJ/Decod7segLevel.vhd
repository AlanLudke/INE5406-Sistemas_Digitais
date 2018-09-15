library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity decod7segLevel is
port (C: in std_logic_vector(3 downto 0);
		F: out std_logic_vector(6 downto 0)
);
end decod7segLevel;

architecture decod_bhv of decod7segLevel is
begin

F <=  "1111001" when C = "0000" else --1
		"0100100" when C = "0001" else --2
		"0110000" when C = "0010" else --3
		"0011001";

end decod_bhv;