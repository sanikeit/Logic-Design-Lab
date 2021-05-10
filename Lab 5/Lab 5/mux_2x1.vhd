library ieee;
use ieee.std_logic_1164.ALL;
 
entity mux_2x1 is
    Port ( S : in  std_logic;
           A   : in  std_logic;
           B   : in  std_logic;
           Y   : out std_logic);
end mux_2x1;

architecture dataflow of mux_2x1 is
begin
    Y <= (A and (not s)) or (B and (S));
end dataflow;