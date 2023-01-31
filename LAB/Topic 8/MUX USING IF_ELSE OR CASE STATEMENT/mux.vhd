-- Hassanal Harriz Bin Ahmed Hakimmy Fuad
-- U2102848

library ieee;
use ieee.std_logic_1164.all;

entity mux is
	port (	a	: IN  STD_LOGIC;
			b 	: IN  STD_LOGIC;
			s	: IN  STD_LOGIC;
			c	: OUT STD_LOGIC
		);
end mux;

architecture if_bod of mux is 
begin
	process (s)
	begin
		if s = '0' then
			c <= a;
		else
			c <= b;
		end if;
	end process;
end if_bod;

architecture case_bod of mux is 
begin 
	process (s)
	begin
		case s is
			when '0' =>
				c <= a;
			when others =>
				c <= b;
		end case;
	end process;
end case_bod;