-- Hassanal Harriz Bin Ahmed Hakimmy Fuad
-- U2102848

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity dec5to32_tb is
end;

architecture behaviour of dec5to32_tb is

	component dec5to32 is 
		port (	f	: in std_logic_vector (4 downto 0);
				en 	: in std_logic;
				x 	: out std_logic_vector (31 downto 0)
			);
	end component;
	
	signal f : std_logic_vector (4 downto 0);
	signal x : std_logic_vector ( 31 downto 0);

begin

	uut : dec5to32 port map (f, '1', x);
	
	sim_proc: process
	begin
		for i in 0 to 2**5 loop
			f <= std_logic_vector(to_unsigned(i, 5));
			
			wait for 10 ns;
		end loop;
	end process;
	
end behaviour;