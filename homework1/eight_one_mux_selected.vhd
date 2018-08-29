library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity eight_one_mux_selected is
	port(input : in std_logic_vector(7 downto 0); sel : in std_logic_vector(2 downto 0); output : out std_logic);
end;

architecture behavioral of eight_one_mux_selected is

begin
	with sel select output <=
		input(0) when "000",
		input(1) when "001",
		input(2) when "010",
		input(3) when "011",
		input(4) when "100",
		input(5) when "101",
		input(6) when "110",
		input(7) when others;
end;
