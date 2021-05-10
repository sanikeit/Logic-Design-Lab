library ieee;
use ieee.std_logic_1164.ALL;
 
entity decoder_2x4 is
    Port ( E  : in std_logic; 
			  A1 : in  std_logic;
			  A0 : in std_logic;
			  Y3 : out std_logic;
			  Y2 : out std_logic;
           Y1   : out std_logic;
           Y0   : out std_logic);
			  
end decoder_2x4;

architecture dataflow of decoder_2x4 is
begin
	Y0 <= (not A0) and (not A1)and E;
  	Y1 <= (A0) and (not A1) and E;
	Y2 <= (not A0) and (A1) and E;
	Y3 <= (A0) and (A1) and E;
end dataflow;