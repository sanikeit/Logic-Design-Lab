library ieee;
use ieee.std_logic_1164.all;

entity updown_4bit_counter is
	port(Clk : in std_logic;
		  M : in std_logic;
		  Q : out std_logic_vector(3 downto 0));
end updown_4bit_counter;

architecture struct of updown_4bit_counter is

component t_ff is
	port(T : in std_logic;
		  Clk : in std_logic;
		  Q : out std_logic);
end component;

signal next_clk : std_logic_vector(2 downto 0);
signal tempQ : std_logic_vector(3 downto 0);

begin

	t_ff0 : t_ff port map('1', Clk, tempQ(0));
	next_clk(0) <= tempQ(0) xor M;
	
	t_ff1 : t_ff port map('1', next_clk(0), tempQ(1));
	next_clk(1) <= tempQ(1) xor M;
	
	t_ff2 : t_ff port map('1', next_clk(1), tempQ(2));
	next_clk(2) <= tempQ(2) xor M;
	
	t_ff3 : t_ff port map('1', next_clk(2), tempQ(3));
	Q <= tempQ;

end struct;