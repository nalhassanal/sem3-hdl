-- Hassanal Harriz Bin Ahmed Hakimmy Fuad
-- U2102848

library ieee;
use ieee.std_logic_1164.all;

entity q4 is
	port (	clk, resetn : IN  STD_LOGIC;
			z 			: OUT STD_LOGIC
		);
end q4;

architecture behaviour of q4 is 
	
	-- U2102848
	-- 8 > 4 > 2 > 0 > 1
	-- 1000 > 0100 > 0010 > 0000 > 0001
    subtype state is std_logic_vector (3 downto 0);
    signal y : state;
    constant state0: state := "1000";
    constant state1: state := "0100";
    constant state2: state := "0010";
    constant state3: state := "0000";
	constant state4: state := "0001";
	
begin

	process(resetn, clk) 
	begin 
		if resetn = '0' then
			y <= state0;
		elsif (rising_edge(clk)) then 
			case y is 
				when state0 =>
					y <= state1;
				when state1 =>
					y <= state2;
				when state2 =>
					y <= state3;
				when state3 =>
					y <= state4;
				when state4 =>
					y <= state0;
				when others => y <= "----";
			end case;
		end if;
	end process;
	
	z <= '1' when y = state0 else '0';
	
end behaviour;