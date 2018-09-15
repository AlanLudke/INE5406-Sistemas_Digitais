----------------------------------------------------------------------------------
-- Company:   Federal University of Santa Catarina
-- Engineer:  Prof. Dr. Eng. Rafael Luiz Cancian
-- 
-- Create Date:    
-- Design Name: 
-- Module Name:    mux2x1nbits - Behavioral 
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



entity mux2x1nbits_several_impls is
	generic(width: integer := 8);
	port(
		inpt0: in std_logic_vector(width-1 downto 0);
		inpt1: in std_logic_vector(width-1 downto 0);
		sel: in std_logic;
		outp: out std_logic_vector(width-1 downto 0)
	);
end entity;

-- if no configuration binding is specified, then the last architecture is the one synthesized


architecture Behavioral_Concurrent_SimpleAssignment_ForGenerate of mux2x1nbits_several_impls is
begin
	f1: for i in width-1 downto 0 generate
		outp(i) <= (not sel and inpt0(i)) or (sel and inpt1(i));
	end generate;
end architecture;


architecture Behavioral_Concurrent_ConditionalAssignment of mux2x1nbits_several_impls is
begin
	outp <= inpt0 when sel='0' else inpt1;
end architecture;


architecture Behavioral_Concurrent_SelectedSignalAssignment of mux2x1nbits_several_impls is
begin
	with sel select
		outp <= inpt0 when '0',
				inpt1 when others;
end architecture;


architecture Behavioral_Sequential_if of mux2x1nbits_several_impls is
begin
	process(inpt0, inpt1, sel)
	begin
		if sel='0' then
			outp <= inpt0;
		else
			outp <= inpt1;
		end if;
	end process;
end architecture;


architecture Behavioral_Sequential_If_ForLoop of mux2x1nbits_several_impls is
begin
	process(inpt0, inpt1, sel)
	begin
		for i in inpt0'range loop
			if sel='0' then
				outp(i) <= inpt0(i);
			else
				outp(i) <= inpt1(i);
			end if;
		end loop;
	end process;
end architecture;


architecture Behavioral_Sequential_Case of mux2x1nbits_several_impls is
begin
	process(inpt0, inpt1, sel)
	begin
		case sel is
			when '0' =>
				outp <= inpt0;
			when others =>
				outp <= inpt1;
		end case;
	end process;
end architecture;