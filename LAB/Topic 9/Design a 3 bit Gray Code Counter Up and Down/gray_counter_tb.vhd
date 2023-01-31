-- Hassanal Harriz Bin Ahmed Hakimmy Fuad
-- U2102848

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Gray3bit_tb is
end Gray3bit_tb;

architecture Behavioral of Gray3bit_tb is

component Gray3bit 
       port (clk, reset, y: in std_logic;
             count: out std_logic_vector (2 downto 0) );
end component;
signal reset,clk,y: std_logic;
signal count:std_logic_vector(2 downto 0);

begin
dut: Gray3bit port map (clk => clk, reset=>reset, y => y, count => count);
   -- Clock process definitions
clock_process :process
begin
     clk <= '0';
     wait for 10 ns;
     clk <= '1';
     wait for 10 ns;
end process;


-- Stimulus process
stim_proc: process
begin        
   -- hold reset state for 100 ns.
     reset <= '1';
     y <= '0';
     wait for 20 ns;    
     reset <= '0';
     wait for 300 ns;    
     y <= '1';
     wait;
end process;
end;
