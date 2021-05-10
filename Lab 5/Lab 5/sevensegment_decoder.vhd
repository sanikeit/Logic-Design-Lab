library ieee;
use ieee.std_logic_1164.ALL;
 
entity sevensegment_decoder is
Port ( input : in std_logic_vector (3 downto 0);
seven_segment : out std_logic_vector (6 downto 0));
end sevensegment_decoder;
 
architecture behavioral of sevensegment_decoder is
 
begin
 
process(input)
begin
case input is
when "0000" =>
seven_segment <= "1111110";
when "0001" =>
Seven_Segment <= "0110000"; 
when "0010" =>
Seven_Segment <= "1101101"; 
when "0011" =>
Seven_Segment <= "1111001"; 
when "0100" =>
Seven_Segment <= "0110011"; 
when "0101" =>
Seven_Segment <= "1011011"; 
when "0110" =>
Seven_Segment <= "1011111"; 
when "0111" =>
Seven_Segment <= "1110000"; 
when "1000" =>
Seven_Segment <= "1111111"; 
when "1001" =>
Seven_Segment <= "1111011"; 
when others =>
Seven_Segment <= "0000000"; 
end case;
 
end process;
 
end behavioral;

