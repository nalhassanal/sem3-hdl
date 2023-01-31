-- Hassanal Harriz Bin Ahmed Hakimmy Fuad
-- U2102848

library ieee; 
use ieee.std_logic_1164.all;

entity Q4_tb is
end Q4_tb;

architecture behavior of Q4_tb is

	component Q4
		port ( 	clk, resetn	: IN  STD_LOGIC;
				z			: OUT STD_LOGIC
			);
	end component;
	
	signal clk 		: STD_LOGIC := '0';
	signal resetn	: STD_LOGIC := '0';
	signal z		: STD_LOGIC;
	
	constant Clock_period : time := 20 ns;
	
begin
	uut: Q4 port map (clk, resetn, z);
	
	clk_process: process
	begin
		clk <= '0';
		wait for Clock_period/2;
		clk <= '1';
		wait for Clock_period/2;
	end process;
	
	sim_proc: process
	BEGIN
		resetn <= '1';
		wait for 10 ns;
	end process;

end behavior;
