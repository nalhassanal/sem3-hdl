-- Hassanal Harriz Bin Ahmed Hakimmy Fuad
-- U2102848

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity circuit_tb is
end circuit_tb;

architecture structural of circuit_tb is 
	component circuit is 
		port (	j		: IN  	STD_LOGIC;
				k_L		: IN  	STD_LOGIC;
				clk 	: IN  	STD_LOGIC;
				clr_L 	: IN  	STD_LOGIC;
				pr_L	: IN  	STD_LOGIC;
				q		: INOUT STD_LOGIC;
				qn		: INOUT STD_LOGIC
			);
	end component;
	
	signal j		: STD_LOGIC := '0';
	signal k_L		: STD_LOGIC := '0';
	signal clk		: STD_LOGIC := '0';
	signal clr_L	: STD_LOGIC := '0';
	signal pr_L		: STD_LOGIC := '0';
	signal q		: STD_LOGIC;
	signal qn		: STD_LOGIC;

	constant clk_period : time := 10 ns;
	
begin
	
	uut : circuit port map (j, k_L, clk, clr_L, pr_L, q, qn);
	
	clk_process : process
	begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	end process;
	
	sim_proc : process
	begin
		clr_L <= '0';
		pr_L <= '0';
		
		j 	<= '0';
		k_L <= '0';
		wait for clk_period*1;
		
		j 	<= '0';
		k_L <= '1';
		wait for clk_period*1;
		
		j 	<= '1';
		k_L <= '0';
		wait for clk_period*1;
		
		j 	<= '1';
		k_L <= '1';
		wait;
	end process;
	
end structural;