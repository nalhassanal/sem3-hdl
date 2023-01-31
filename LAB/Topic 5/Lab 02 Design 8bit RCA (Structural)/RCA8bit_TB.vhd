library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity RCA8bit_TB is
end;

architecture behavioural of RCA8bit_TB is
	
	component RCA8bit
		port (	A    : in STD_LOGIC_VECTOR ( 7 downto 0 );
			B    : in STD_LOGIC_VECTOR ( 7 downto 0 );
			Cin  : in STD_LOGIC;
			S    : out STD_LOGIC_VECTOR ( 7 downto 0 );
			Cout : out STD_LOGIC
		      );
	end component;		 
	
	-- inputs
	signal A    : STD_LOGIC_VECTOR ( 7 downto 0 ) := (others => '0');
	signal B    : STD_LOGIC_VECTOR ( 7 downto 0 ) := (others => '0');
	signal Cin  : STD_LOGIC := '0';
	
	-- outputs
	signal S    : STD_LOGIC_VECTOR ( 7 downto 0 );
	signal Cout : STD_LOGIC;

begin

	-- Instantiate the Unit Under Test (UUT)
	uut : RCA8bit port map ( A => A,
				 B => B,
				 Cin => Cin,
				 S => S,
				 Cout => Cout
				);
				
	-- Stimulus process
	stim_proc: process	
	begin

		Cin <= '0';
		
		A <= "10111000";
		B <= "10111111";
		wait for 10 ns;
	
		A <= "00100111";
		B <= "10101010";
		wait for 10 ns;
	
		A <= "11100111";
		B <= "11111111";
		wait for 10 ns;
	
		A <= "11101001";
		B <= "11100001";
		wait for 10 ns;

		A <= "10101001";
		B <= "11100111";
		wait for 10 ns;
	
		Cin <= '1';
	
		A <= "10001000";
		B <= "10100000";
		wait for 10 ns;

		A <= "10101000";
		B <= "10101110";
		wait for 10 ns;
	
		A <= "00110111";
		B <= "10001010";
		wait for 10 ns;
	
		A <= "01100111";
		B <= "10001111";
		wait for 10 ns;
	
		A <= "11101111";
		B <= "11110001";
		wait for 10 ns;
	
	end process;	

end behavioural;
