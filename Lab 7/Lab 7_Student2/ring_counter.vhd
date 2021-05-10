library ieee;
use ieee.std_logic_1164.all;

entity ring_counter is
	port(Clk : in std_logic;
		  ORI : in std_logic;
		  Q : out std_logic_vector(3 downto 0));
end ring_counter;

architecture struct of ring_counter is

component d_ff is
	port(D : in std_logic;
		  Clk : in std_logic;
		  set : in std_logic;
		  clr : in std_logic;
		  Q : out std_logic);
end component;

signal tempQ : std_logic_vector(3 downto 0);
begin 
	
	d_ff3 : d_ff port map(tempQ(0), Clk, ORI, '0', tempQ(3));
	
	d_ff2 : d_ff port map(tempQ(3), Clk, '0', ORI, tempQ(2));
	
	d_ff1 : d_ff port map(tempQ(2), Clk, '0', ORI, tempQ(1));
	
	d_ff0 : d_ff port map(tempQ(1), Clk, '0', ORI, tempQ(0));
	
	Q <= tempQ;

end struct;