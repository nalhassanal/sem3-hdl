-- Hassanal Harriz Bin Ahmed Hakimmy Fuad
-- U2102848

library ieee;
use ieee.std_logic_1164.all;

entity myEntity is
	port (	a, b, c, d  : IN  STD_LOGIC;
			Q			: OUT STD_LOGIC
		);
end myEntity;

architecture behavioral of myEntity is 
	
begin

	process (a, b ,c, d) 
	begin
	
		if ( a = '0' and b = '0' and c = '0' and d = '0') then Q <= '1'; -- 0000
		elsif (a = '0' and b = '0' and c = '0' and d = '1') then Q <= '1'; -- 0001
		elsif (a = '0' and b = '0' and c = '1' and d = '0') then Q <= '1'; -- 0010
		elsif (a = '0' and b = '1' and c = '0' and d = '0') then Q <= '1'; -- 0100
		elsif (a = '1' and b = '0' and c = '0' and d = '0') then Q <= '1'; -- 1000
		else Q <= '0'; end if;
	
	end process;
	
end architecture;