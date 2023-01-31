-- Hassanal Harriz Bin Ahmed Hakimmy Fuad
-- U2102848

library ieee;
use ieee.std_logic_1164.all;

entity upcount is 
	generic ( modulus : integer := 8 );
	port (	ResetN	: IN 	 STD_LOGIC;
			Clock	: IN 	 STD_LOGIC;
			E		: IN 	 STD_LOGIC;
			L 		: IN 	 STD_LOGIC;
			R		: IN 	 integer range 0 to modulus-1;
			Q		: BUFFER integer range 0 to modulus-1 
		);
end upcount;

architecture behaviour of upcount is
begin
	process ( Clock, ResetN )
	begin
		if ResetN = '0' then
			Q <= 0;
		elsif (Clock'EVENT and Clock = '1' ) then 
			if E = '1' then 
				if L = '1' then
					Q <= R;
				else
					Q <= Q + 1;
				end if;
			end if;
		end if;
	end process;
end behaviour;