-- Hassanal Harriz Bin Ahmed Hakimmy Fuad
-- U2102848
-- JKFF_tb.vhd
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity JKFF_tb is
end JKFF_tb;

architecture testbench of JKFF_tb is 
	component JKFF is 
		port (	J	: IN  STD_LOGIC;
				K	: IN  STD_LOGIC;
				clk	: IN  STD_LOGIC;
				Q	: OUT STD_LOGIC;
				Qbar: OUT STD_LOGIC
			);
	end component;
	
	signal J	: STD_LOGIC := '0';
	signal K	: STD_LOGIC := '0';
	signal clk	: STD_LOGIC := '0';
	signal Q 	: STD_LOGIC;
	signal QB	: STD_LOGIC;
	
	constant clk_period : time := 20 ns;
	
begin
	
	uut : JKFF port map (J, K, clk, Q, QB);
	
	clk_process : process
	begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	end process;
	
	sim_proc : process
	begin
		J	<= '0';
		K	<= '0';
		wait for 20 ns;
		
		J	<= '0';
		K	<= '1';
		wait for 20 ns;
		
		J	<= '1';
		K	<= '0';
		wait for 20 ns;
		
		J	<= '1';
		K	<= '1';
		wait for 20 ns;
	end process;
	
end architecture;