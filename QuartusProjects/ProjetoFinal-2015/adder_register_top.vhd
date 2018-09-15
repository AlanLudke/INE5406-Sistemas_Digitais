library ieee;
use ieee.std_logic_1164.all;

entity adder_register_top is
 port ( 
    KEY: in std_logic;    
    from_rom : in std_logic_vector(10 downto 0);
    current_value : out std_logic_vector(10 downto 0);
	 below_equal_zero: out std_logic;
	 rst_tos0 : in std_logic;
    clock: in std_logic  
    );
end adder_register_top;

architecture topo_stru of adder_register_top is  

signal sum : std_logic_vector(10 downto 0);
signal reg_to_adder: std_logic_vector(10 downto 0);

    
component signed_adder
    port (
        a       : in std_logic_vector(10 downto 0);
        b       : in std_logic_vector(10 downto 0);
        result : out std_logic_vector(10 downto 0)
    );
 end component; 
 
component D_11FF 
    port (
        CLK, RST, reset_to_s0: in std_logic;        
        D: in std_logic_vector(10 downto 0);
        Q: out std_logic_vector(10 downto 0)
     );
 end component; 


begin
L0: signed_adder port map (from_rom, reg_to_adder, sum);
L1: D_11FF port map (clock, KEY, rst_tos0, sum, reg_to_adder);
current_value <= reg_to_adder;
below_equal_zero <= not(reg_to_adder(10) or not(reg_to_adder(9) or reg_to_adder(8) or reg_to_adder(7) or reg_to_adder(6) or reg_to_adder(5) or reg_to_adder(4) or reg_to_adder(3) or reg_to_adder(2) or reg_to_adder(1) or reg_to_adder(0)));
-- below_equal_zero  resets when credit below equal to zero
end topo_stru;