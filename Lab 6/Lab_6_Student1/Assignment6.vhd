library ieee;
use ieee.std_logic_1164.all;

entity Assignment6 is
	Port(U, D, clk: in std_logic;
	     O0, O1, O2, O3: buffer std_logic);
end Assignment6;

architecture structural of Assignment6 is

component TFF is
	Port(T, clk: in std_logic;
		  Q: buffer std_logic);
end component;

signal clk1, clk2, clk3:std_logic;

begin

T0: TFF port map('1', (not clk), O0);
clk1 <= ((U nand O0) nand (D nand (not O0)));
T1: TFF port map('1', (not clk1), O1);
clk2 <= ((U nand O1) nand (D nand (not O1)));
T2: TFF port map('1', (not clk2), O2);
clk3 <= ((U nand O2) nand (D nand (not O2)));
T3: TFF port map('1', (not clk3), O3);

end structural;