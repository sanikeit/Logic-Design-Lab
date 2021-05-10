library ieee;
use ieee.std_logic_1164.all;

entity ring is
	port(
	CLK: in std_logic;
	Q: out std_logic_vector(3 downto 0)
	);
end ring;

architecture structural of ring is

component DFlipFlop
	port(
	D:in std_logic;
	CLK: in std_logic;
	C: in std_logic;
	Q1: inout std_logic;
	Q2: inout std_logic
	);
end component;
component DFlipFlop1
	port(
	D:in std_logic;
	CLK: in std_logic;
	C: in std_logic;
	Q1: inout std_logic;
	Q2: inout std_logic
	);
end component;

signal Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q8: std_logic;

begin
FF1: DFlipFlop1 port map(Q5,not(CLK),'0',Q1,Q2);
Q(0)<= Q1;
FF4: DFlipFlop port map(Q1,not(CLK),'0',Q7,Q8);
Q(3)<= Q7;
FF2: DFlipFlop port map(Q7,not(CLK),'0',Q3,Q4);
Q(2)<= Q3;
FF3: DFlipFlop port map(Q3,not(CLK),'0',Q5,Q6);
Q(1)<= Q5;


end structural;

