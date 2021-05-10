LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
entity johnson_counter is
Port (CLOCK: in STD_LOGIC;
		RESET: in STD_LOGIC;
		I: buffer STD_LOGIC_VECTOR (3 downto 0));
end johnson_counter;

architecture structural of johnson_counter is

SIGNAL TEMP: STD_LOGIC;

component D_FF is
Port (D, CLOCK, RESET, set: in STD_LOGIC;
		I: out STD_LOGIC);
end component;

begin
	D0: D_FF port map(I(3), CLOCK, RESET, '0', TEMP);
	I(0) <= not TEMP;
	D1: D_FF port map(I(0), CLOCK, RESET, '0', I(1));
	D2: D_FF port map(I(1), CLOCK, RESET, '0', I(2));
	D3: D_FF port map(I(2), CLOCK, RESET, '0', I(3));
end structural;