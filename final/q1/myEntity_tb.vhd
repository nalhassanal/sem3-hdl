-- Hassanal Harriz Bin Ahmed Hakimmy Fuad
-- U2102848

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY myEntity_tb IS
END myEntity_tb;

ARCHITECTURE testbench OF myEntity_tb IS 
	component myEntity
		port ( 	a, b, c, d 	: IN  STD_LOGIC;
				Q			: OUT STD_LOGIC
			);
	end component;
	
	signal a, b, c, d : STD_LOGIC := '0';
	signal Qout : STD_LOGIC;
	
BEGIN
	uut : myEntity port map (a, b, c, d, Qout);
	
	
	sim_proc : process
	begin
		-- 0000
	a <= '0';
	b <= '0';
	c <= '0';
	d <= '0';
	wait for 10 ns;
	
	-- 0001
	a <= '0';
	b <= '0';
	c <= '0';
	d <= '1';
	wait for 10 ns;
	
	-- 0010
	a <= '0';
	b <= '0';
	c <= '1';
	d <= '0';
	wait for 10 ns;
	
	-- 0011
	a <= '0';
	b <= '0';
	c <= '1';
	d <= '1';
	wait for 10 ns;
	
	-- 0100
	a <= '0';
	b <= '1';
	c <= '0';
	d <= '0';
	wait for 10 ns;
	
	-- 0101
	a <= '0';
	b <= '1';
	c <= '0';
	d <= '1';
	wait for 10 ns;
	
	-- 0110
	a <= '0';
	b <= '1';
	c <= '1';
	d <= '0';
	wait for 10 ns;
	
	-- 0111
	a <= '0';
	b <= '1';
	c <= '1';
	d <= '1';
	wait for 10 ns;
	
	-- 1000
	a <= '1';
	b <= '0';
	c <= '0';
	d <= '0';
	wait for 10 ns;
	
	-- 1001
	a <= '1';
	b <= '0';
	c <= '0';
	d <= '1';
	wait for 10 ns;
	
	-- 1010
	a <= '1';
	b <= '0';
	c <= '1';
	d <= '0';
	wait for 10 ns;
	
	-- 1011
	a <= '1';
	b <= '0';
	c <= '1';
	d <= '1';
	wait for 10 ns;
	
	-- 1100
	a <= '1';
	b <= '1';
	c <= '0';
	d <= '0';
	wait for 10 ns;
	
	-- 1101
	a <= '1';
	b <= '1';
	c <= '0';
	d <= '1';
	wait for 10 ns;
	
	-- 1110
	a <= '1';
	b <= '1';
	c <= '1';
	d <= '0';
	wait for 10 ns;
	
	-- 1111
	a <= '1';
	b <= '1';
	c <= '1';
	d <= '1';
	wait for 10 ns;
	end process;
	
END;
