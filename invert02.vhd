library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity invert02 is
    port (
		in1   : in  STD_LOGIC;
		in2   : in  STD_LOGIC;
		in3   : in  STD_LOGIC;
		in4   : in  STD_LOGIC;
		out1  : out STD_LOGIC;
		out2  : out STD_LOGIC;
		out3  : out STD_LOGIC;
		out4  : out STD_LOGIC;
		Cout  : out STD_LOGIC
	);
end;

architecture Behavioral of invert02 is

	signal prevCout : STD_LOGIC;
	
	component unit 
	port (
		A     : in  STD_LOGIC;
		B 	   : in  STD_LOGIC;
		Cin   : in  STD_LOGIC;
		Cout  : inout STD_LOGIC;
		O     : out STD_LOGIC
	);
	end component;

begin

	u1 : unit port map ( A >= in1,
						 B >= 1,
						 Cin >= 0,
						 Cout >= prevCout,
						 O >= out1 );
						 
	u2 : unit port map ( A >= in2,
						 B >= 0,
						 Cin >= prevCout,
						 Cout >= prevCout,
						 O >= out2 );
	
	u3 : unit port map ( A >= in3,
						 B >= 0,
						 Cin >= prevCout,
						 Cout >= prevCout,
						 O >= out3 );

	u4 : unit port map ( A >= in4,
						 B >= 0,
						 Cin >= prevCout,
						 Cout >= Cout,
						 O >= out4 );
						 
end Behavioral;