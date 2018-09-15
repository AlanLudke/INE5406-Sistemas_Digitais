library ieee;
use ieee.std_logic_1164.all;

entity D_11FF is 
port (
    CLK, RST, reset_to_s0: in std_logic;    
    D: in std_logic_vector(10 downto 0);
    Q: out std_logic_vector(10 downto 0)
 );
end D_11FF;

architecture behv of D_11FF is
begin
    process(CLK, RST, D)
    begin
        if RST = '0' or reset_to_s0 = '0' then
            Q <= "00000010111";
        elsif (CLK'event and CLK = '1') then            
            Q <= D;            
        end if;
    end process;
end behv; 