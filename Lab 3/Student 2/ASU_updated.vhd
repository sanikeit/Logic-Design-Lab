library ieee;
use ieee.std_logic_1164.all;
entity ASU_updated is
   port( CONTROL: in std_logic;
          X,Y  : in std_logic_vector(3 downto 0);
          A,B,C,D, Cout, OVERFLOW : out std_logic);
end ASU_updated;
 
architecture struct of ASU_updated is
component fullAdder is
  port( X, Y, Cin : in std_logic;
        sum, Cout : out std_logic);
end component;
component component_final is
	port( I0,I1,I2 : in std_logic;
			outA,outB,outC,outD : out std_logic);
end component;

signal C1, C2, C3, C4: std_logic;
signal R: std_logic_vector(3 downto 0);
 
begin
FA0:fullAdder port map(X(0),Y(0) xor CONTROL,CONTROL, R(0),C1); 
FA1:fullAdder port map(X(1),Y(1) xor CONTROL,C1, R(1),C2); 
FA2:fullAdder port map(X(2),Y(2) xor CONTROL,C2, R(2),C3); 
FA3:fullAdder port map(X(3),Y(3) xor CONTROL,C3, R(3),C4);
final:component_final port map(R(0),R(1),R(2),A,B,C,D);

OVERFLOW <= C3 XOR C4 ;
Cout <= C4;

end struct;
