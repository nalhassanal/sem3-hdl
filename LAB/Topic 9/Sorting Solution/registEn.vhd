-- Hassanal Harriz Bin Ahmed Hakimmy Fuad
-- U2102848

library ieee;
use ieee.std_logic_1164.all;

entity registEn is
	generic ( N : integer := 8 );
	port (	D					: IN STD_LOGIC_VECTOR (N-1 downto 0);
			ResetN, E, Clock	: IN STD_LOGIC;
			Q					: OUT STD_LOGIC_VECTOR (N-1 downto 0)
		);
end registEn;

architecture behaviour of registEn is 
begin
	process ( ResetN, Clock )
	begin
		if ResetN = '0' then
			Q <= (others => '0');
		elsif (Clock'EVENT AND Clock = '1') then
			if E = '1' then
				Q <= D;
			end if;
		end if;
	end process;
end behaviour;