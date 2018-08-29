library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity three_eight_decoder_low_conditional is
	port(input : in std_logic_vector(2 downto 0); output : out std_logic_vector(7 downto 0));
end;

architecture behavioral of three_eight_decoder_low_conditional is

begin
	output <= "11111110" when input <= "000" else
		"11111101" when input <= "001" else
		"11111011" when input <= "010" else
		"11110111" when input <= "011" else
		"11101111" when input <= "100" else
		"11011111" when input <= "101" else
		"10111111" when input <= "110" else
		"01111111";
end;