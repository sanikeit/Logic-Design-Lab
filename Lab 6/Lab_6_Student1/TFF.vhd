library ieee;
use ieee.std_logic_1164.all;
 
entity TFF is
	Port(T, clk: in std_logic;
		  Q: out std_logic);
end TFF;
 
architecture behavorial of TFF is
signal prev: std_logic;
begin
	process(clk)
	begin
		if clk='1' then
			if T='0' then
				prev <= prev;
			elsif T='1' then
				prev <= (not prev);
			end if;
		end if;
	end process;
	Q <= prev;
end behavorial;
