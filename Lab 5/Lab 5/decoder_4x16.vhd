library ieee;
use ieee.std_logic_1164.ALL;
 
entity decoder_4x16 is
    Port ( A3 : in std_logic;
			  A2 : in std_logic;
			  A1 : in  std_logic;
			  A0 : in std_logic;
			  Y : out std_logic_vector(15 downto 0));
end decoder_4x16;

architecture dataflow of decoder_4x16 is
component decoder_2x4 is
	 Port ( E : in std_logic;
			  A1 : in  std_logic;
			  A0 : in std_logic;
			  Y3 : out std_logic;
			  Y2 : out std_logic;
           Y1   : out std_logic;
           Y0   : out std_logic);
end component;
signal F : std_logic_vector(3 downto 0);
begin
	decoder0 : decoder_2x4 port map('1', A3, A2, F(3), F(2), F(1), F(0));
	decoder1 : decoder_2x4 port map(F(0), A1, A0, Y(3), Y(2), Y(1), Y(0));
	decoder2 : decoder_2x4 port map(F(1), A1, A0, Y(7), Y(6), Y(5), Y(4));
	decoder3 : decoder_2x4 port map(F(2), A1, A0, Y(11), Y(10), Y(9), Y(8));
	decoder4 : decoder_2x4 port map(F(3), A1, A0, Y(15), Y(14), Y(13), Y(12));
end dataflow;