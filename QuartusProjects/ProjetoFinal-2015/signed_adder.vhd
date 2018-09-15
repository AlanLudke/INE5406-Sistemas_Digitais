library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity signed_adder is
    port 
    (
        a       : in std_logic_vector(10 downto 0);
        b       : in std_logic_vector(10 downto 0);
        result : out std_logic_vector(10 downto 0)
    );

end entity;

architecture rtl of signed_adder is
begin

    result <= a + b;

end rtl;