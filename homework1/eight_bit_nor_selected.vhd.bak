library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity eight_bit_nand_selected is
	port(input : in std_logic_vector(7 downto 0); output : out std_logic);
end entity eight_bit_nand_selected;

architecture behavioral of eight_bit_nand_selected is

begin
	with input select output <=
		'0' when "11111111",
		'1' when others;
end architecture behavioral;
