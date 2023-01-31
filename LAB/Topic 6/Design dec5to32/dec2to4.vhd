-- Hassanal Harriz Bin Ahmed Hakimmy Fuad
-- U2102848

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity dec2to4 is
	port (	w  : in STD_LOGIC_VECTOR(1 downto 0);
			En : in STD_LOGIC;
			y  : out STD_LOGIC_VECTOR(3 downto 0)
		);
end;

architecture dataflow of dec2to4 is

	signal Enw : STD_LOGIC_VECTOR(2 downto 0);

begin

	Enw <= En & w;
	with Enw select 
				y<= "0001" when "100",
					"0010" when "101",
					"0100" when "110",
					"1000" when "111",
					"0000" when others;
					
end dataflow;