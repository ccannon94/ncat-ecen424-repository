library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity three_eight_decoder_high_selected is
	port(input : in std_logic_vector(2 downto 0); output : out std_logic_vector(7 downto 0));
end;

architecture behavioral of three_eight_decoder_high_selected is

begin
	with input select output <=
		"00000001" when "000",
		"00000010" when "001",
		"00000100" when "010",
		"00001000" when "011",
		"00010000" when "100",
		"00100000" when "101",
		"01000000" when "110",
		"10000000" when others;
end;
