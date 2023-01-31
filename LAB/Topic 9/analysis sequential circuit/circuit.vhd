-- Hassanal Harriz Bin Ahmed Hakimmy Fuad
-- U2102848

library ieee;
use ieee.std_logic_1164.all;

entity circuit is
	port (	j, k_L, clk, clr_L, pr_L : IN	 STD_LOGIC;
			q, qn					 : INOUT STD_LOGIC
		);
end entity;

architecture behavioral of circuit is 
	signal k : STD_LOGIC;
begin 
	process (j, k_L, clk, clr_L, pr_L)
	begin
		k <= not k_L;
		
		if (clr_L = '0' and pr_L = '0') then 
			q <= '0'; qn <= '0';
		elsif (clr_L = '0' and pr_L = '1') then 
			q <= '0'; qn <= '1';
		elsif (clr_L = '1' and pr_L = '0') then 
			q <= '1'; qn <= '0';
		elsif (rising_edge(clk)) then 
			if (j = '0' and k = '0') then 
				q <= q; qn <= not q;
			elsif (j = '0' and k = '1')	then
				q <= '0'; qn <= '1';
			elsif (j = '1' and k = '0')	then
				q <= '1'; qn <= '0';
			elsif (j = '0' and k = '0')	then
				q <= not q; qn <= q;
			end if;
		end if;
	end process;
end architecture;