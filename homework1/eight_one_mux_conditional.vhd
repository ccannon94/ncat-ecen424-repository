library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity eight_one_mux_conditional is
	port(input : in std_logic_vector(7 downto 0); sel : in std_logic_vector(2 downto 0); output : out std_logic);
end;

architecture behavioral of eight_one_mux_conditional is

begin
	output <= input(0) when sel = "000" else
		input(1) when sel = "001" else
		input(2) when sel = "010" else
		input(3) when sel = "011" else
		input(4) when sel = "100" else
		input(5) when sel = "101" else
		input(6) when sel = "110" else
		input(7);
end;