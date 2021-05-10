library ieee;
use ieee.std_logic_1164.all;

entity d_ff is
	port(D : in std_logic;
		  Clk : in std_logic;
		  set : in std_logic;
		  clr : in std_logic;
		  Q : out std_logic);
end d_ff;

architecture behavioral of d_ff is
begin

process (D, Clk, set, clr) is

begin

	if(set='1') then
		Q<='1';
	elsif(clr='1') then
		Q<='0';
	elsif(falling_edge(Clk)) then
		Q <= D;
	end if;

end process;
end behavioral;
