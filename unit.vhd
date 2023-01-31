library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity unit is
	port (
		A     : in  STD_LOGIC;
		B 	  : in  STD_LOGIC;
		Cin   : in  STD_LOGIC;
		Cout  : out STD_LOGIC;
		O     : out STD_LOGIC
	);
end;

architecture unitRTL of unit is
	signal NA   : STD_LOGIC := not A;
	signal temp : STD_LOGIC := NA xor B;
	
begin
	
	O <= temp xor Cin;
	Cout <= ( B and NA  ) xor ( temp and Cin );
	
end unitRTL;