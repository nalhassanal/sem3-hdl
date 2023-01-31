-- Hassanal Harriz Bin Ahmed Hakimmy Fuad
-- U2102848

library ieee;
use ieee.std_logic_1164.all;

entity dec3to8 is
	port (	b	: in  std_logic_vector (2 downto 0);
			en	: in  std_logic;
			y	: out std_logic_vector (7 downto 0)
		);
end dec3to8;

architecture structural of dec3to8 is 
	component dec2to4 is
		port (	w	: in  std_logic_vector (1 downto 0);
				En	: in  std_logic;
				y	: out std_logic_vector (3 downto 0)
			);
	end component;
	
	signal b1_0		: std_logic_vector(1 downto 0);
	signal not_b2	: std_logic;
	signal u1_out	: std_logic_vector(3 downto 0);
	signal u2_out	: std_logic_vector(3 downto 0);
begin
	b1_0	<= b(1) & b(0);
	not_b2	<= not b(2);
	
	u1 :	dec2to4 port map (b1_0, not_b2, u1_out);
	u2 :	dec2to4 port map (b1_0, b(2), u2_out);
	
	y	<= (u2_out & u1_out) when en = '1' else "00000000";
end structural;