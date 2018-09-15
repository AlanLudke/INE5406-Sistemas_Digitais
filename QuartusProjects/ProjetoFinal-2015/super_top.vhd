library ieee; 
use ieee.std_logic_1164.all; 
 
entity super_top is 
 port (  
    HEX0, HEX1, HEX2, HEX3, HEX4, HEX5: out std_logic_vector(6 downto 0); 
    SW: in std_logic_vector(9 downto 9); 
    LEDR: out std_logic_vector(9 downto 0); 
    KEY: in std_logic_vector(3 downto 0);	 
    clock_50: in std_logic   
    ); 
end super_top; 
 
architecture supertop_stru of super_top is  
 
signal divided_clock, below_equal_zero_signal, counter0, counter1, counter2, habilit_sum , reset_to_S0 : std_logic; 
signal stopped_sequence : std_logic_vector(11 downto 0); 
signal corresponding_prize : std_logic_vector(10 downto 0); 
signal print_prize : std_logic_vector(10 downto 0);
signal adress : std_logic_vector(12 downto 0); 
 
component sequencer_top 
 port (  
    HEX0, HEX1, HEX2: out std_logic_vector (6 downto 0); 
    full_seq: out std_logic_vector (11 downto 0); 
    C0, C1, C2: in std_logic;
    KEY: in std_logic; 
	 reset_to_initialState: in std_logic;
    clock_50: in std_logic   
    ); 
 end component; 
 
 component clock_div_FSM
 port (
	level: in std_logic; 
	new_clock: out std_logic; 
	clock, reset, S0_reset : in std_logic 
 );
 end component; 
  
component ROM 
  port( 
	  enable_prize : in std_logic; 
	  selected_sequence : in std_logic_vector(12 downto 0); 
	  prize : out std_logic_vector(10 downto 0)  
	 ); 
 end component; 
  
component adder_register_top  
 port (  
    KEY: in std_logic;     
    from_rom : in std_logic_vector(10 downto 0); 
    current_value : out std_logic_vector(10 downto 0); 
	 below_equal_zero : out std_logic;
	 rst_tos0 : in std_logic;
    clock: in std_logic   
    ); 
 end component;
 
component fsm_control_top 
 port ( 
	 to_HEX3, to_HEX4: out std_logic_vector (6 downto 0);
    rst_button, init_stop_button, below_zero_signal : in std_logic;   
    cnt0_sginal, cnt1_sginal, cnt2_sginal, do_sum_signal, reset_all_signal : out std_logic;  
    clock_50: in std_logic  
    );
end component; 
  
begin 
L0: clock_div_FSM port map (SW(9), divided_clock ,clock_50, KEY(0), reset_to_S0); 
L1: sequencer_top port map (HEX0, HEX1, HEX2, stopped_sequence, counter0, counter1, counter2, KEY(0), reset_to_S0, divided_clock);
L2: ROM port map(habilit_sum , adress, corresponding_prize); 
L3: adder_register_top port map(KEY(0), corresponding_prize, print_prize ,below_equal_zero_signal, reset_to_S0, clock_50);
L4: fsm_control_top port map(HEX3, HEX4, KEY(0), KEY(3), below_equal_zero_signal, counter0, counter1, counter2, habilit_sum, reset_to_S0, clock_50);
adress <= (SW(9)&stopped_sequence); 
LEDR <= print_prize(9 downto 0);
HEX5 <= "0000110"; -- E for "estado"
end supertop_stru;