library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity eight_bit_nor_concurrent is
	port(input : in std_logic_vector(7 downto 0); output : out std_logic);
end entity eight_bit_nor_concurrent;

architecture behavioral of eight_bit_nor_concurrent is

begin
	output <= not(input(0) or input(1) or input(2) or input(3) or input(4) or input(5) or input(6) or input(7));
end architecture behavioral;
