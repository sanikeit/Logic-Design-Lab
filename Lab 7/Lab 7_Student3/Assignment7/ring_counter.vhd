LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
entity ring_counter is
Port (CLOCK: in STD_LOGIC;
		RESET: in STD_LOGIC;
		I: buffer STD_LOGIC_VECTOR (3 downto 0));
end ring_counter;

architecture structural of ring_counter is

component D_FF is
Port (D, CLOCK, RESET, SET: in STD_LOGIC;
		I: out STD_LOGIC);
end component;

begin
	D0: D_FF port map(I(3), CLOCK, RESET, '1', I(0));
	D1: D_FF port map(I(0), CLOCK, RESET, '0', I(1));
	D2: D_FF port map(I(1), CLOCK, RESET, '0', I(2));
	D3: D_FF port map(I(2), CLOCK, RESET, '0', I(3));
end structural;