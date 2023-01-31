-- Hassanal Harriz Bin Ahmed Hakimmy Fuad
-- U2102848

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity twobytwo_tb is
end twobytwo_tb;

architecture structural of twobytwo_tb is 
	component twobytwo is 
		port (	a	: in  std_logic_vector (1 downto 0);
				b 	: in  std_logic_vector (1 downto 0);
				p 	: out std_logic_vector (3 downto 0)
			);
	end component;
	
	signal a : std_logic_vector (1 downto 0);
	signal b : std_logic_vector (1 downto 0);
	signal p : std_logic_vector (3 downto 0);
	
	signal input : std_logic_vector (3 downto 0);
begin
	
	uut : twobytwo port map (a, b, p);
	
	sim_proc : process
	begin
		for i in 0 to 2**4 loop
			input <= std_logic_vector(to_unsigned(i, 4));
			a <= input(3) & input(2);
			b <= input(1) & input(0);
			
			wait for 10 ns;
		end loop;
	end process;
	
end structural;