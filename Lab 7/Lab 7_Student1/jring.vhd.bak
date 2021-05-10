library ieee;
use ieee.std_logic_1164.all;

entity jring is
	port(
	CLK: in std_logic;
	Q: out std_logic_vector(3 downto 0)
	);
end jring;

architecture structural of jring is

component DFlipFlop
	port(
	D:in std_logic;
	CLK: in std_logic;
	Q1: inout std_logic;
	Q2: inout std_logic
	);
end component;

signal Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8: std_logic;

begin
FF1: DFlipFlop port map(Q5,not(CLK),Q1,Q2);
Q(0)<= Q1;
FF4: DFlipFlop port map(Q2,not(CLK),Q7,Q8);
Q(3)<= Q7;
FF2: DFlipFlop port map(Q7,not(CLK),Q3,Q4);
Q(2)<= Q3;
FF3: DFlipFlop port map(Q3,not(CLK),Q5,Q6);
Q(1)<= Q5;


end structural;

