library ieee;
use ieee.std_logic_1164.all;

entity Q3 is
	port (	x , clk	: IN  STD_LOGIC;
			a, b, z	: OUT STD_LOGIC
		);
end Q3;

architecture behavioral of Q3 is 
	signal qa, qb : std_logic;
begin
	
	process (clk)
	
	begin 
		if falling_edge(clk) then 
			--ja = x’b and ka = x 
			qa <= ((not x) and qb) and ((not qa) or (not x)) and qa;
			
			-- jb = x’ and kb = a’x
			qb <= (not x) and (((not qb) or qa) or (not x)) and qb;
		end if;
	end process;
	
	a <= qa;
	b <= qb;
	z <= ((not x) and (not qa)) or (qb and x);

end behavioral;