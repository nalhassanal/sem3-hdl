-- Hassanal Harriz Bin Ahmed Hakimmy Fuad
-- U2102848
-- TFF.vhd
library ieee;
use ieee.std_logic_1164.all;

entity TFF is
	port (	T 	: IN  STD_LOGIC;
			clk	: IN  STD_LOGIC;
			Q	: OUT STD_LOGIC
		);
end TFF;

architecture selected of TFF is 
	signal temp : STD_LOGIC := 1;
begin
	process(clk)
	begin
		if (rising_edge(clk)) then 
			if (T = '1') then
				temp <= not temp;
			end if;
		end if;
		Q <= temp;
	end process;
end architecture;