-- Hassanal Harriz Bin Ahmed Hakimmy Fuad
-- U2102848

library ieee;
use ieee.std_logic_1164.all;

entity dec5to32 is
	port (	f	: in  std_logic_vector (4 downto 0);
			en	: in  std_logic;
			x	: out std_logic_vector (31 downto 0)
		);
end dec5to32;

architecture structural of dec5to32 is 
	component dec3to8 is
		port (	b	: in  std_logic_vector (2 downto 0);
				en	: in  std_logic;
				y	: out std_logic_vector (7 downto 0)
			);
	end component;
	
	component dec2to4 is
		port (	w	: in  std_logic_vector (1 downto 0);
				En	: in  std_logic;
				y	: out std_logic_vector (3 downto 0)
			);
	end component;
	
	signal f2_1_0	: std_logic_vector (2 downto 0);
	signal f4_3		: std_logic_vector (1 downto 0);
	
	signal u0_out	: std_logic_vector (3 downto 0);
	
	signal u1_out	: std_logic_vector (7 downto 0);
	signal u2_out	: std_logic_vector (7 downto 0);
	signal u3_out	: std_logic_vector (7 downto 0);
	signal u4_out	: std_logic_vector (7 downto 0);
	
begin
	f4_3	<= f(4) & f(3);
	f2_1_0	<= f(2) & f(1) & f(0);
	
	u0 :	dec2to4 port map (f4_3, '1', u0_out);
	
	u1 : 	dec3to8 port map ( f2_1_0, u0_out(0), u1_out);
	u2 : 	dec3to8 port map ( f2_1_0, u0_out(1), u2_out);
	u3 : 	dec3to8 port map ( f2_1_0, u0_out(2), u3_out);
	u4 : 	dec3to8 port map ( f2_1_0, u0_out(3), u4_out);
	
	x	<= (u4_out & u3_out & u2_out & u1_out) when en = '1' else "00000000000000000000000000000000";
end structural;