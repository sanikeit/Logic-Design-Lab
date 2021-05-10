library ieee;
use ieee.std_logic_1164.ALL;
 
entity mux_16x1 is
    Port ( S3 : in  std_logic;
			  S2 : in std_logic;
			  S1 : in std_logic;
			  S0 : in std_logic;
           A   : in std_logic_vector(15 downto 0);
           Y   : out std_logic);
end mux_16x1;

architecture structural of mux_16x1 is
component mux_4x1 is
	Port ( S0 : in  std_logic;
			  S1 : in std_logic;
           A0   : in  std_logic;
           A1   : in  std_logic;
			  A2   : in std_logic;
			  A3   : in std_logic;
           Y   : out std_logic);
end component;
signal Y0,Y1,Y2,Y3 : std_logic;
begin
    mux01 : mux_4x1 port map(S0, S1, A(0), A(1), A(2), A(3), Y0);
	 mux02 : mux_4x1 port map(S0, S1, A(4), A(5), A(6), A(7), Y1);
	 mux03 : mux_4x1 port map(S0, S1, A(8), A(9), A(10), A(11), Y2);
	 mux04 : mux_4x1 port map(S0, S1, A(12), A(13), A(14), A(15), Y3);
	 mux05 : mux_4x1 port map(S2, S3, Y0, Y1, Y2, Y3, Y);
end structural;