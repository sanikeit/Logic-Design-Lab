LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity D_FF is
Port (D, CLOCK, RESET, SET: in STD_LOGIC;
		I: out STD_LOGIC);
end D_FF;

architecture behavioural of D_FF is
begin
process(CLOCK,D, RESET)
	begin
		if (RESET = '1') then
			I <= SET;
		elsif(CLOCK'EVENT and CLOCK='1') then
			I <= D;
		end if;
	end process;
end behavioural;