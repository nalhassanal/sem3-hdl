-- Hassanal Harriz Bin Ahmed Hakimmy Fuad U2102848

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity RCA8bit is

	port ( A    : in STD_LOGIC_VECTOR ( 7 downto 0 );
	       B    : in STD_LOGIC_VECTOR ( 7 downto 0 );
	       Cin  : in STD_LOGIC;
	       S    : out STD_LOGIC_VECTOR ( 7 downto 0 );
	       Cout : out STD_LOGIC
	     );  

end;

architecture structural of RCA8bit is 

component FullAdder
	port ( A    : in STD_LOGIC;
	       B    : in STD_LOGIC;
	       Cin  : in STD_LOGIC;
	       S    : out STD_LOGIC;
	       Cout : out STD_LOGIC
	      );
end component;		 

	-- intermediary carry inputs
	signal C : STD_LOGIC_VECTOR( 6 downto 0 );

begin

	fa0 : FullAdder port map ( A => A(0), B => B(0), Cin => Cin, S => S(0), Cout => C(0));

	fa1 : FullAdder port map ( A => A(1), B => B(1), Cin => C(0), S => S(1), Cout => C(1));

	fa2 : FullAdder port map ( A => A(2), B => B(2), Cin => C(1), S => S(2), Cout => C(2));

	fa3 : FullAdder port map ( A => A(3), B => B(3), Cin => C(2), S => S(3), Cout => C(3));

	fa4 : FullAdder port map ( A => A(4), B => B(4), Cin => C(3), S => S(4), Cout => C(4));

	fa5 : FullAdder port map ( A => A(5), B => B(5), Cin => C(4), S => S(5), Cout => C(5));

	fa6 : FullAdder port map ( A => A(6), B => B(6), Cin => C(5), S => S(6), Cout => C(6));

	fa7 : FullAdder port map ( A => A(7), B => B(7), Cin => C(6), S => S(7), Cout => Cout);

end structural;