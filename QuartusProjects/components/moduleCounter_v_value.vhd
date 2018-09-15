----------------------------------------------------------------------------------
-- Company:   Federal University of Santa Catarina
-- Engineer:  Prof. Dr. Eng. Rafael Luiz Cancian
-- 
-- Create Date:    
-- Design Name: 
-- Module Name:    binaryCounter_n_bits - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.UtilFunctions.all;


entity moduleCounter_v_value is
	generic(maxValue: integer := 59);
	port(
		clk, reset, enable: in std_logic;
		outp: out std_logic_vector(log2(maxValue)-1 downto 0)
	);
end entity;

architecture Behavioral of moduleCounter_v_value is
	subtype InternalState is unsigned(log2(maxValue)-1 downto 0);
	signal currentState, nextState: InternalState;
begin
    -- NSL
    nextState <=    currentState when enable = '0' else
                    (others=>'0') when to_integer(currentState) = maxValue else
                    currentState+1;
    -- ME
    p1: process(clk, reset) is
    begin
        if reset='1' then
            currentState <= (others=>'0');
        elsif rising_edge(clk) then
            currentState <= nextState;
        end if;
    end process;
	
	-- OL
	outp <= std_logic_vector(currentState);
end architecture;