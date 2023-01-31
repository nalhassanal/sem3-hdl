-- Hassanal Harriz Bin Ahmed Hakimmy Fuad
-- U2102848

library ieee;
use ieee.std_logic_1164.all;

entity twobytwo is
	port (	a	: in  std_logic_vector (1 downto 0);
			b	: in  std_logic_vector (1 downto 0);
			p	: out std_logic_vector (3 downto 0)
		);
end twobytwo;

architecture dataflow of twobytwo is 
begin
	p(0) <= a(0) and b(0);

	p(1) <= '1' when (a = "01" and b = "10") or (a = "01" and b = "11") or (a = "10" and b = "11") or (a = "10" and b = "01") or (a = "11" and b = "01") or (a = "11" and b = "10") else '0';

	p(2) <= '1' when (a = "10" and b = "10") or (a = "10" and b = "11") or (a = "11" and b = "10") else '0';
	
	p(3) <= a(0) and a(1) and b(0) and b(1);

-- 	behavioral
--	process (a, b) is 
--	begin 
--		case a is 
--			when "00" =>
--						if 	  b = "00" 	then p <= "0000";
--						elsif b = "01" 	then p <= "0000";
--						elsif b = "10" 	then p <= "0000";
--						else  p <= "0000"; 
--						end if;
--			when "01" =>
--						if 	  b = "00" 	then p <= "0000";
--						elsif b = "01" 	then p <= "0001";
--						elsif b = "10" 	then p <= "0010";
--						else  p <= "0011"; 
--						end if;
--			when "10" =>
--						if 	  b = "00" 	then p <= "0000";
--						elsif b = "01" 	then p <= "0010";
--						elsif b = "10" 	then p <= "0100";
--						else  p <= "0110"; 
--						end if;
--			when "11" =>
--						if 	  b = "00" 	then p <= "0000";
--						elsif b = "01" 	then p <= "0011";
--						elsif b = "10" 	then p <= "0110";
--						else  p <= "1001"; 
--						end if;
--		end case;
--	end process;
end architecture;