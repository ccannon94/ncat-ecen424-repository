library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity three_eight_decoder_low_selected is
	port(input : in std_logic_vector(2 downto 0); output : out std_logic_vector(7 downto 0));
end;

architecture behavioral of three_eight_decoder_low_selected is

begin
	with input select output <=
		"11111110" when "000",
		"11111101" when "001",
		"11111011" when "010",
		"11110111" when "011",
		"11101111" when "100",
		"11011111" when "101",
		"10111111" when "110",
		"01111111" when others;
end;
