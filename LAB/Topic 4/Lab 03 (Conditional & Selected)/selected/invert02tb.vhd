-- Hassanal Harriz Bin Ahmed Hakimmy Fuad U2102848

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY invert02tb IS
END invert02tb;
 
ARCHITECTURE behavior OF invert02tb IS
 
 -- Component Declaration for the Unit Under Test (UUT)
 
 COMPONENT invert02
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
 END COMPONENT;
 
 --Inputs
 signal in0 : std_logic := '0';
 signal in1 : std_logic := '0';
 signal in2 : std_logic := '0';
 signal in3 : std_logic := '0';
 
 --Outputs
 signal out0 : std_logic;
 signal out1 : std_logic;
 signal out2 : std_logic;
 signal out3 : std_logic;
 signal Cout : std_logic;
 
BEGIN
 
 -- Instantiate the Unit Under Test (UUT)
 uut: invert02 PORT MAP (
	in0  => in0 ,
	in1  => in1 ,
	in2  => in2 ,
	in3  => in3 ,
	out0 => out0,
	out1 => out1,
	out2 => out2,
	out3 => out3,
	Cout => Cout
 );
 
 -- Stimulus process
 stim_proc: process
 begin
 -- hold reset state for 20 ns.
 wait for 20 ns; 
 
 -- insert stimulus here
 -- 0000
 in0 <= '0';
 in1 <= '0';
 in2 <= '0';
 in3 <= '0';
 
 wait for 10 ns;
 
 -- 0001
 in0 <= '0';
 in1 <= '0';
 in2 <= '0';
 in3 <= '1';
 wait for 10 ns;
 
 -- 0010
 in0 <= '0';
 in1 <= '0';
 in2 <= '1';
 in3 <= '0';
 wait for 10 ns;
 
 -- 0011
 in0 <= '0';
 in1 <= '0';
 in2 <= '1';
 in3 <= '1';
 wait for 10 ns;
 
 -- 0100
 in0 <= '0';
 in1 <= '1';
 in2 <= '0';
 in3 <= '0';
 wait for 10 ns;
 
 -- 0101
 in0 <= '0';
 in1 <= '1';
 in2 <= '0';
 in3 <= '1';
 wait for 10 ns;
 
 -- 0110
 in0 <= '0';
 in1 <= '1';
 in2 <= '1';
 in3 <= '0';
 wait for 10 ns;
 
 -- 0111
 in0 <= '0';
 in1 <= '1';
 in2 <= '1';
 in3 <= '1';
 wait for 10 ns;
  
 -- 1000 
 in0 <= '1';
 in1 <= '0';
 in2 <= '0';
 in3 <= '0';
 wait for 10 ns;
 
 -- 1001
 in0 <= '1';
 in1 <= '0';
 in2 <= '0';
 in3 <= '1';
 wait for 10 ns;
 
 -- 1010
 in0 <= '1';
 in1 <= '0';
 in2 <= '1';
 in3 <= '0';
 wait for 10 ns; 
 
 -- 1011
 in0 <= '1';
 in1 <= '0';
 in2 <= '1';
 in3 <= '1';
 wait for 10 ns;
 
 -- 1100
 in0 <= '1';
 in1 <= '1';
 in2 <= '0';
 in3 <= '0';
 wait for 10 ns; 
 
 -- 1101
 in0 <= '1';
 in1 <= '1';
 in2 <= '0';
 in3 <= '1';
 wait for 10 ns;  
 
 -- 1110
 in0 <= '1';
 in1 <= '1';
 in2 <= '1';
 in3 <= '0';
 wait for 10 ns; 
 
 -- 1111
 in0 <= '1';
 in1 <= '1';
 in2 <= '1';
 in3 <= '1';
 wait for 10 ns;  
 end process;
 
END;

