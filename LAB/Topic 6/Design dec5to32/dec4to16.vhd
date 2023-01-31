library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity dec4to16 is
	port (	w  : in STD_LOGIC_VECTOR(1 downto 0);
			En : in STD_LOGIC;
			y  : out STD_LOGIC_VECTOR(0 to 3);		
		);
end;

architecture structure of dec4to16 is

	component dec2to4
		port (	w : in STD_LOGIC_VECTOR(1 downto 0);
				En : in STD_LOGIC;
				y : out STD_LOGIC_VECTOR(0 to 3);
			);
	end component;
	
	signal m : STD_LOGIC_VECTOR(0 to 3);

begin

	G1 : for i in 0 to 3 generate
		Dec_ri : dec2to4 port map (w(1 downto 0), m(i), y(4*i to 4*i+3) );
		G2: if i = 3 generate
			Dec_left: dec2to4 port map ( w(i downto i-1), En , m );
		end generate;
	end generate;

end structure;