library ieee;
use ieee.std_logic_1164.all;

entity Q3 is

	port ( 	x, clk 	: in 	std_logic;
			a,b,z 	: out std_logic
		);

end Q3;

architecture behavioral of Q3 is 
	signal qa_sig: std_logic ; -- local signal to assign and read
	signal qb_sig : std_logic;
begin 
	process (clk)

	begin

		if rising_edge(clk) then 

			--ja = x’b and ka = x 

			qa_sig <= (not x) and qb_sig) and (not qa_sig) or (not x) and qa_sig;

			-- jb = x’ and kb = a’x

			qb_sig <= (not x)and(not qb_sig) or qa_sig or(not x) and qb_sig; 

		end if; 

	end process;

	a <= qa_sig; 
	b <= qb_sig; 
	z <= ((not x) and (not qa_sig)) or (qb_sig and x);

end behavioral;