-- Hassanal Harriz Bin Ahmed Hakimmy Fuad
-- U2102848

library ieee; 
use ieee.std_logic_1164.all;

entity sort_tb is
end sort_tb;

architecture behavior of sort_tb is

	component sort
		generic ( N : integer := 8 );
			port ( 	Clock, ResetN  	: IN     STD_LOGIC;
					S, WrInit, Rd 	: IN     STD_LOGIC;
					DataIn			: IN 	 STD_LOGIC_VECTOR (N-1 downto 0);
					RAdd			: IN 	 integer range 0 to N-1;
					DataOut			: BUFFER STD_LOGIC_VECTOR (N-1 downto 0);
					Done			: BUFFER STD_LOGIC
				);
	end component;
	
	signal Clock 	: STD_LOGIC;
	signal ResetN 	: STD_LOGIC := '0';
	signal S 		: STD_LOGIC := '0';
	signal WrInit 	: STD_LOGIC := '0';
	signal Rd 		: STD_LOGIC := '0';
	signal DataIn 	: STD_LOGIC_VECTOR (7 downto 0) := "00000000";
	signal RAdd 	: integer range 0 to 7;
	signal DataOut	: STD_LOGIC_VECTOR(7 downto 0);
	signal Done		: STD_LOGIC;
	
	-- this array is used for the input.
	-- it is filled with my matric number : U2102848
	-- since 'U' is not a number it is replaced with 0,
	-- so the input becomes : 02102848
	
	type inputArrayType is array (0 to 7) of STD_LOGIC_VECTOR(7 downto 0);
	signal inputArray : inputArrayType := ( "00000000" , "00000010",
											"00000001" , "00000000",
											"00000010" , "00001000",
											"00000100" , "00001000");
	
	constant Clock_period : time := 50 ns;
	
begin
	uut: sort 
		port map (	Clock 	=> Clock,
					ResetN 	=> ResetN,
					S 		=> S,
					WrInit 	=> WrInit,
					Rd 		=> Rd,
					DataIn 	=> DataIn,
					RAdd 	=> RAdd,
					DataOut	=> DataOut,
					Done 	=> Done
				);
				
	
	clk_process: process
	begin
		Clock <= '0';
		wait for Clock_period/2;
		Clock <= '1';
		wait for Clock_period/2;
	end process;
	
	sim_proc: process
	BEGIN
        wait until rising_edge(Clock);

        ResetN <= '1';

        wait until rising_edge(Clock);

        WrInit <= '1';
        RAdd <= 0;
        DataIn <= inputArray(0);

        wait until rising_edge(Clock);

        RAdd <= 1;
        DataIn <= inputArray(1);

        wait until rising_edge(Clock);

        RAdd <= 2;
        DataIn <= inputArray(2); 

        wait until rising_edge(Clock);

        RAdd <= 3;
        DataIn <= inputArray(3);

        wait until rising_edge(Clock);

        RAdd <= 4;
        DataIn <= inputArray(4);

        wait until rising_edge(Clock);

        RAdd <= 5;
        DataIn <= inputArray(5);

        wait until rising_edge(Clock);

        RAdd <= 6;
        DataIn <= inputArray(6);

        wait until rising_edge(Clock);

        RAdd <= 7;
        DataIn <= inputArray(7);

        wait until rising_edge(Clock);

        WrInit <= '0';
        DataIn <= "00000000";

        wait until rising_edge(Clock);

        S <= '1';

        wait until rising_edge(Done);

        S <= '0';

        wait until rising_edge(Clock);

        Rd <= '1';
        RAdd <= 0;

        wait until rising_edge(Clock);

        RAdd <= 1;

        wait until rising_edge(Clock);

        RAdd <= 2;

        wait until rising_edge(Clock);

        RAdd <= 3;

        wait until rising_edge(Clock);

        RAdd <= 4;

        wait until rising_edge(Clock);

        RAdd <= 5;

        wait until rising_edge(Clock);

        RAdd <= 6;

        wait until rising_edge(Clock);

        RAdd <= 7;

        wait until rising_edge(Clock);

        Rd <= '0';

        wait until rising_edge(Clock);
		
	end process;

end behavior;
