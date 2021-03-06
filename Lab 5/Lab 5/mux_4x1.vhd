library ieee;
use ieee.std_logic_1164.ALL;
 
entity mux_4x1 is
    Port ( S0 : in  std_logic;
			  S1 : in std_logic;
           A0   : in  std_logic;
           A1   : in  std_logic;
			  A2   : in std_logic;
			  A3   : in std_logic;
           Y   : out std_logic);
end mux_4x1;

architecture structural of mux_4x1 is
component mux_2x1 is
	Port ( S : in  std_logic;
           A   : in  std_logic;
           B   : in  std_logic;
           Y   : out std_logic);
end component;
signal Y0,Y1 : std_logic;
begin
    mux01 : mux_2x1 port map(S0, A0, A1, Y0);
	 mux02 : mux_2x1 port map(S0, A2, A3, Y1);
	 mux03 : mux_2x1 port map(S1, Y0, Y1, Y);
end structural;