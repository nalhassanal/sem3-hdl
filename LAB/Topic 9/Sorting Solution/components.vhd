-- Hassanal Harriz Bin Ahmed Hakimmy Fuad
-- U2102848

library ieee;
use ieee.std_logic_1164.all;

package components is

-- n-bit register with enable
	component registEn
		generic ( N : integer := 8 );
			port (	D		: IN	STD_LOGIC_VECTOR (N-1 downto 0);
					ResetN	: IN 	STD_LOGIC;
					E 		: IN 	STD_LOGIC;
					Clock 	: IN 	STD_LOGIC;
					Q		: OUT 	STD_LOGIC_VECTOR (N-1 downto 0)
				);
	end component;
	
-- up-counter that counts from 0 to modulus-1
	component upcount
		generic ( modulus : integer := 8 );
			port (	ResetN	: IN 		STD_LOGIC;
					Clock	: IN 		STD_LOGIC;
					E		: IN		STD_LOGIC;
					L		: IN 		STD_LOGIC;
					R		: IN 		integer range 0 to modulus-1;
					Q		: buffer	integer range 0 to modulus-1
				);
	end component;
	
end components;
