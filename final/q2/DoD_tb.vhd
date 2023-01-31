-- Hassanal Harriz Bin Ahmed Hakimmy Fuad
-- U2102848

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY DoD_tb IS
END DoD_tb;
 
ARCHITECTURE behavioral OF DoD_tb IS
 
	-- Component Declaration for the Unit Under Test (UUT)
 
	COMPONENT DoD
		PORT ( 	dir : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
				leds : OUT STD_LOGIC_VECTOR(1 TO 7) 
			);
		END COMPONENT;
 
	--Inputs
	signal dir : std_logic_vector(3 DOWNTO 0) := "0000";
 
	--Outputs
	signal leds : std_logic_vector(1 TO 7);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
	uut: DoD PORT MAP (
			dir => dir,
			leds => leds
					);
 
	-- Stimulus process
	stim_proc: process
	begin
		-- hold reset state for 20 ns.
		wait for 20 ns; 
 
		-- insert stimulus here
 	
		-- testing for version A (msb = 0)
		dir <= "0000";
		wait for 10 ns;

		dir <= "0001";
		wait for 10 ns;

		dir <= "0010";
		wait for 10 ns;

		dir <= "0011";
		wait for 10 ns;

		dir <= "0100";
		wait for 10 ns;

		dir <= "0101";
		wait for 10 ns;

		dir <= "0110";
		wait for 10 ns;
	
		dir <= "0111";
		wait for 10 ns;
	
		-- testing for version B (msb = 1)
		dir <= "1000";
		wait for 10 ns;
	
		dir <= "1001";
		wait for 10 ns;
	
		dir <= "1010";
		wait for 10 ns;
	
		dir <= "1011";
		wait for 10 ns;
	
		dir <= "1100";
		wait for 10 ns;
	
		dir <= "1101";
		wait for 10 ns;
	
		dir <= "1110";
		wait for 10 ns;
	
		dir <= "1111";
		wait for 10 ns;
 	
	end process;
 
END;