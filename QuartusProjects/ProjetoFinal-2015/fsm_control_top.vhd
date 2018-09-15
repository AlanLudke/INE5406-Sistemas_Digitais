library ieee;
use ieee.std_logic_1164.all;

entity fsm_control_top is
 port ( 
	 to_HEX3, to_HEX4: out std_logic_vector (6 downto 0);
    rst_button, init_stop_button, below_zero_signal : in std_logic;   
    cnt0_sginal, cnt1_sginal, cnt2_sginal, do_sum_signal, reset_all_signal : out std_logic;  
    clock_50: in std_logic  
    );
end fsm_control_top;

architecture topo_stru of fsm_control_top is 

signal to_decod_state, to_decod_round : std_logic_vector(3 downto 0);
    
component  FSMctrl 
port ( 
	print_round, print_cstate: out std_logic_vector(3 downto 0);
	clock, reset, init_stop , credit_below_zero : in std_logic;
	enable_c0, enable_c1, enable_c2, habilit_credit, reset_reg: out std_logic
	);
end component; 
 
component decod7
	port (
		C: in std_logic_vector(3 downto 0);
		F: out std_logic_vector(6 downto 0)
		);
end component; 


begin
L0: FSMctrl port map (to_decod_round, to_decod_state, clock_50, rst_button, init_stop_button, below_zero_signal, cnt0_sginal, cnt1_sginal, cnt2_sginal, do_sum_signal, reset_all_signal);
L1: decod7 port map (to_decod_round, to_HEX3);
L2: decod7 port map (to_decod_state, to_HEX4);

end topo_stru;