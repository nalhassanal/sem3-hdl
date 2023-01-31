-- Hassanal Harriz Bin Ahmed Hakimmy Fuad
-- U2102848
-- JKFF.vhd
library ieee;
use ieee.std_logic_1164.all;

entity JKFF is
	port (	J	: IN  STD_LOGIC;
			K	: IN  STD_LOGIC;
			clk	: IN  STD_LOGIC;
			Q	: OUT STD_LOGIC;
			Qbar: OUT STD_LOGIC
		);
end JKFF;

architecture selected of JKFF is 
	signal temp : STD_LOGIC;
begin
	process(clk, J, K)
	begin
		if (rising_edge(clk)) then
			if (J = '0' and K = '0') then
				temp <= temp;
			elsif (J = '1' and K = '1') then
				temp <= not temp;
			elsif (J = '0' and K = '1') then
				temp <= '0';
			else
				temp <= '1';
			end if;
		end if;
		Q	<= temp;
		Qbar<= not temp;
	end process;
end architecture;