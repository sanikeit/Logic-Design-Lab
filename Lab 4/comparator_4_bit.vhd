library ieee;
use ieee.std_logic_1164.all;

entity comparator_4_bit is
 port (
    a0,a1,a2,a3,b0,b1,b2,b3 : in  std_logic;
    aisgr, bisgr, iseq : out std_logic); 
end comparator_4_bit;

architecture structural of comparator_4_bit is

component comparator_1_bit is
port(a,b:in std_logic;
aisgr,bisgr,iseq: out std_logic);
end component comparator_1_bit;

signal iseq0,iseq1,iseq2,iseq3,aisgr0,aisgr1,aisgr2,aisgr3,bisgr0,bisgr1,bisgr2,bisgr3:std_logic; 
begin
c0:comparator_1_bit port map(a0,b0,aisgr0,bisgr0,iseq0);
c1:comparator_1_bit port map(a1,b1,aisgr1,bisgr1,iseq1);
c2:comparator_1_bit port map(a2,b2,aisgr2,bisgr2,iseq2);
c3:comparator_1_bit port map(a3,b3,aisgr3,bisgr3,iseq3);
iseq<=iseq0 and iseq1 and iseq2 and iseq3;
aisgr<=aisgr3  or  (iseq3 and aisgr2) or (iseq3 and iseq2 and aisgr1) or(iseq3 and iseq2 and iseq1 and aisgr0) ;
bisgr<=bisgr3  or  (iseq3 and bisgr2) or (iseq3 and iseq2 and bisgr1) or(iseq3 and iseq2 and iseq1 and bisgr0) ;
end structural;