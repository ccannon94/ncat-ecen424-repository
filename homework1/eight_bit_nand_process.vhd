library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity eight_bit_nand_process is
	port(input : in std_logic_vector(7 downto 0); output : out std_logic);
end;

architecture behavioral of eight_bit_nand_process is

begin	
	process(input)
	begin
		case input is
			when "11111111" => output <= '0';
			when others => output <= '1';
		end case;
	end process;
end;