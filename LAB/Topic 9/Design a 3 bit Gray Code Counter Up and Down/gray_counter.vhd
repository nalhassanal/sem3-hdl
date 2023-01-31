-- Hassanal Harriz Bin Ahmed Hakimmy Fuad
-- U2102848

library ieee;
use ieee.std_logic_1164.all;
entity Gray3bit is
       port (clk, reset, y: in std_logic;
             count: out std_logic_vector (2 downto 0) );
end;
architecture behavior of Gray3bit is
        subtype state is std_logic_vector (2 downto 0);
        signal present_state, next_state : state;
        constant state0: state := "000";
        constant state1: state := "001";
        constant state3: state := "011";
        constant state2: state := "010";
        constant state6: state := "110";
        constant state7: state := "111";
        constant state5: state := "101";
        constant state4: state := "100";
begin
        process (clk)
        begin
        if rising_edge(clk) then
                if ( reset='1' ) then
                        present_state <= state0;
                else
                        present_state <= next_state;
                end if;
        end if;
        end process;

        process (present_state)
        begin
                case present_state is
                        when state0 =>
                                if (y = '1') then
                                         next_state <= state1;
                                else
                                         next_state <= state4;
                                end if;
                        when state1 =>
                                if (y = '1') then
                                         next_state <= state3;
                                else
                                         next_state <= state1;
                                end if;
                        when state3 =>
                                if (y = '1') then
                                         next_state <= state2;
                                else 
                                         next_state <= state1;
                                end if;
                        when state2 =>
                                if (y = '1') then
                                         next_state <= state6;
                                else
                                         next_state <= state3;
                                end if;
                        when state6 =>
                                if (y = '1') then
                                         next_state <= state7;
                                else
                                         next_state <= state2;
                                end if;
                        when state7 =>
                                if (y = '1') then
                                         next_state <= state5;
                                else
                                         next_state <= state6;
                                end if;
                        when state5 =>
                                if (y = '1') then
                                         next_state <= state4;
                                else
                                         next_state <= state7;
                                end if;
                        when state4 =>
                                if (y = '1') then
                                         next_state <= state0;
                                else
                                         next_state <= state5;
                                end if;
                        when others =>
                                 next_state <= state0;
                end case;
                count <= present_state;
        end process;
end;
                 

