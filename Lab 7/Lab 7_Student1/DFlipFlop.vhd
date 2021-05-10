library ieee;
use ieee.std_logic_1164.all;

entity DFlipFlop is
	port(
	D:in std_logic;
	CLK: in std_logic;
	C: in std_logic;
	Q1: inout std_logic;
	Q2: inout std_logic
	);
end DFlipFlop;

architecture behav of DFlipFlop is
signal tp: std_logic := '0';
begin
	
	process(CLK)
	begin	
		if(CLK='1' and CLK'event) then
			if(D='0') then
				tp<='0';
			elsif(D='1') then
				tp<='1';
			end if;
		else 
			tp<=tp;
		end if;
		if(C='1') then
			tp<='0';
		end if;
	end process;
	Q1<= tp;
	Q2<= not(tp);
end behav;