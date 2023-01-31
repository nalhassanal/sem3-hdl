-- Hassanal Harriz Bin Ahmed Hakimmy Fuad
-- U2102848

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DFF_tb is
end DFF_tb;

architecture structural of DFF_tb is 
	component DFF is 
		port (	din		: in  std_logic;
				clk		: in  std_logic;
				rst		: in  std_logic;
				dout	: out std_logic
			);
	end component;
	
	signal din		: std_logic := '0';
	signal clk		: std_logic := '0';
	signal rst		: std_logic := '0';
	signal dout		: std_logic;
	
	constant clk_period : time := 20 ns;
	
begin
	
	uut : DFF port map (din, clk, rst, dout);
	
	clk_process : process
	begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	end process;
	
	sim_proc : process
	begin
		
		rst <= '1';
		wait for 50 ns;
		
		rst <= '0';
		din <= '0';
		wait for 50 ns;
		
		rst <= '0';
		sin <= '1';
		wait;
		
	end process;
	
end structural;