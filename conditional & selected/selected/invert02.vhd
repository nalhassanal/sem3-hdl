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

architecture select_when of invert02 is

	signal in1_in0         : STD_LOGIC_VECTOR( 1 downto 0 );
	signal in2_in1_in0     : STD_LOGIC_VECTOR( 2 downto 0 );
	signal in3_in2_in1_in0 : STD_LOGIC_VECTOR( 3 downto 0 );

begin

	in1_in0         <= in1 & in0;
	in2_in1_in0     <= in2 & in1_in0;
	in3_in2_in1_in0 <= in3 & in2_in1_in0;
	
	with in0 select
		out0 <= '1' when '1', -- when in0 is 1, output is '1', else '0'
				'0' when others;
				
	with in1_in0 select -- when in0 & in1 are either 10 or 01, output is '1', else '0'
		out1 <= '1' when "10" | "01",
				'0' when others;
				
	with in1_in0 select -- when in0 & in1 are both 00, take in2 value, else not in2 value
		out2 <= in2 when "00",
				not in2 when others;
				
	with in2_in1_in0 select -- when input are 0001, take in3 value, else not in3 value
		out3 <= in3 when "000",
				not in3 when others;
				
	with in3_in2_in1_in0 select -- when all inputs are '0'
		Cout <= '1' when "0000",
				'0' when others;

end select_when;
