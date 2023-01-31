-- Hassanal Harriz Bin Ahmed Hakimmy Fuad
-- U2102848

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY DoD IS
	PORT ( dir : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	leds : OUT STD_LOGIC_VECTOR(1 TO 7) );
END DoD ;

ARCHITECTURE Behavior OF DoD IS
BEGIN
PROCESS (dir)
	BEGIN

	CASE dir is
		WHEN "0000" => leds <= "0001110" ;
		WHEN "0001" => leds <= "1110111" ;
		WHEN "0010" => leds <= "0111110" ;
		WHEN "0011" => leds <= "1111110" ;
		WHEN "0100" => leds <= "1100000" ;
		WHEN "0101" => leds <= "0001100" ;
		WHEN "0110" => leds <= "1000010" ;
		WHEN "0111" => leds <= "0011000" ;
		WHEN "1000" => leds <= "0001110" ;
		WHEN "1001" => leds <= "1000010" ;
		WHEN "1010" => leds <= "0111110" ;
		WHEN "1011" => leds <= "1100000" ;
		WHEN "1100" => leds <= "1110111" ;
		WHEN "1101" => leds <= "0011000" ;
		WHEN "1110" => leds <= "1111110" ;
		WHEN "1111" => leds <= "0001100" ;
		WHEN OTHERS => leds <= "-------" ;

	END CASE ;
END PROCESS ;
END Behavior ;