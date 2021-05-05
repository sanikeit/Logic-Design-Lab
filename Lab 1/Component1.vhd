library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity component1 is
     port ( X,Y,Z : IN STD_LOGIC;
          A,B : OUT STD_LOGIC);
end component1;
architecture dataflow of component1 is
     begin
			 A <= (X xor (Y xor Z));
			 B <= ((X and (Y xor Z)) or (Y and Z));
end dataflow; 