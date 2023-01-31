-- Hassanal Harriz Bin Ahmed Hakimmy Fuad
-- U2102848
-- TFF_tb.vhd
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity TFF_tb is
end TFF_tb;

architecture testbench of TFF_tb is 
	component TFF is 
		port (	T 	: IN  STD_LOGIC;
				clk	: IN  STD_LOGIC;
				Q	: OUT STD_LOGIC
			);
	end component;
	
	signal T : std_logic := '0';
	signal clk : std_logic := '0';
	signal Q : std_logic;
	
	constant clk_period : time := 20 ns;
	
begin
	
	uut : TFF port map (T, clk, Q);
	
	clk_process : process
	begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	end process;
	
	sim_proc : process
	begin
		
		T 	<= '0';
		wait for 20 ns;
		
		T 	<= '1';
		wait for 20 ns;
	end process;
	
end architecture;