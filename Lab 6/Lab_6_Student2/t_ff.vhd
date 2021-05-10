library ieee;
use ieee.std_logic_1164.all;

entity t_ff is
	port(T : in std_logic;
		  Clk : in std_logic;
		  Q : out std_logic);
end t_ff;

architecture behavioral of t_ff is
begin

process (T, Clk) is
variable temp : std_logic := '0';

begin

	if(falling_edge(Clk)) then
		if(T = '1') then
			temp := not(temp);
		end if;
	end if;

	Q <= temp;

end process;
end behavioral;
