library ieee;
use ieee.std_logic_1164.all;
entity component_final is 
	port(	I0,I1,I2 : in std_logic;
			outA,outB,outC,outD : out std_logic
			);
end component_final;

architecture comb of component_final is
begin

outA <= (( (not I0) and I2 ) or ( (not I1) and I0 ));
outB <= ((not I2) or I1);
outC <= (( (not I0) and (not I2) ) or ( (not I2) and I1 ));
outD <= ((not I0) or I2);

end comb;