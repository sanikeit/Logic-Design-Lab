library ieee;
use ieee.std_logic_1164.all;

entity  comparator_1_bit is
port(a,b:in std_logic;
aisgr,bisgr,iseq: out std_logic);
end comparator_1_bit;

architecture dataflow of comparator_1_bit is
begin
aisgr<=a and (not b);
bisgr<=b and (not a);
iseq<=a xnor  b;
end dataflow;