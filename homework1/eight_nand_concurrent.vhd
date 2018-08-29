library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity eightbitnand is
	port(input : in std_logic_vector(7 downto 0); output : out std_logic);
end entity eightbitnand;

architecture behavioral of eightbitnand is

begin
	output <= not(input(0) and input(1) and input(2) and input(3) and input(4) and input(5) and input(6) and input(7));
end architecture behavioral;
