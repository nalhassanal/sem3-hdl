-- Hassanal Harriz Bin Ahmed Hakimmy Fuad
-- U2102848

library ieee;
use ieee.std_logic_1164.all;

entity De2421toBCD is
	port (	c2421	: in  std_logic_vector (3 downto 0);
			bcd		: out std_logic_vector (3 downto 0)
		);
end De2421toBCD;

architecture selected of De2421toBCD is 
begin
	with c2421 select bcd <= 
					"0000" when "0000",
					"0001" when "0001",
					"0010" when "0010",
					"0011" when "0011",
					"0100" when "0100",
					"0101" when "1011",
					"0110" when "1100",
					"0111" when "1101",
					"1000" when "1110",
					"1001" when "1111",
					"----" when others;
end architecture;