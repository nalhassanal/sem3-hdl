-- Hassanal Harriz Bin Ahmed Hakimmy Fuad U2102848

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- the main invert02 entity

entity invert02 is
    port (
		in0   : in  STD_LOGIC;
		in1   : in  STD_LOGIC;
		in2   : in  STD_LOGIC;
		in3   : in  STD_LOGIC;
		out0  : out STD_LOGIC;
		out1  : out STD_LOGIC;
		out2  : out STD_LOGIC;
		out3  : out STD_LOGIC;
		Cout  : out STD_LOGIC
	);
end;


architecture when_else of invert02 is


begin
	out0 <= '1' when in1 = '1' else '0';
	
	out1 <= '1' when (in0 xor in1) = '1' else '0';
	
	out2 <= '1' when (in0 = '1' and in2 = '0') or (in1 = '1' or in2 = '1') else '0';
	
	out3 <= '1' when (in0 = '0' and in1 = '0') or (in0 = '0' and in1 = '0' and in3 = '0') or (in0 = '1' and in1 = '0' and in3 = '0') or (in0 = '1' and in1 = '1' and in3 = '0') else '0';
	
	Cout <= '1' when in0 = '0' and in1 = '0' and in2 = '0' and in3 = '0' else '0';
	
end when_else;

