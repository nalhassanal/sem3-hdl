-- Hassanal Harriz Bin Ahmed Hakimmy Fuad
-- U2102848

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity De2421toBCD_tb is
end De2421toBCD_tb;

architecture structural of De2421toBCD_tb is 
	component De2421toBCD is 
		port (	c2421	: in  std_logic_vector (3 downto 0);
				bcd		: out std_logic_vector (3 downto 0)
			);
	end component;
	
	signal c2421 : std_logic_vector (3 downto 0);
	signal bcd	 : std_logic_vector (3 downto 0);
	
	constant period : time := 20 ns;
	
begin
	
	uut : De2421toBCD port map (c2421, bcd);
	
	sim_proc : process
	begin
		c2421 <= "0000";
		wait for period;
		
		c2421 <= "0001";
		wait for period;
		
		c2421 <= "0010";
		wait for period;
		
		c2421 <= "0011";
		wait for period;
		
		c2421 <= "0100";
		wait for period;
		
		c2421 <= "1011";
		wait for period;
		
		c2421 <= "1100";
		wait for period;
		
		c2421 <= "1101";
		wait for period;
		
		c2421 <= "1110";
		wait for period;
		
		c2421 <= "1111";
		wait for period;
	end process;
	
end structural;