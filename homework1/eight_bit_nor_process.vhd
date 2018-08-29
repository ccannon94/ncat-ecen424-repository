library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity eight_bit_nor_process is
	port(input : in std_logic_vector(7 downto 0); output : out std_logic);
end entity eight_bit_nor_process;

architecture behavioral of eight_bit_nor_process is

begin
	process(input)
	begin
		case input is
			when "00000000" => output <= '1';
			when others => output <= '0';
		end case;
	end process;
end architecture behavioral;