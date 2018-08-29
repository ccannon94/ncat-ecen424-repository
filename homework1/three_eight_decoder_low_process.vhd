library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity three_eight_decoder_low_process is
	port(input : in std_logic_vector(2 downto 0); output : out std_logic_vector(7 downto 0));
end;

architecture behavioral of three_eight_decoder_low_process is

begin
	process(input) is
	begin
		case input is
			when "000" => output <= "11111110";
			when "001" => output <= "11111101";
			when "010" => output <= "11111011";
			when "011" => output <= "11110111";
			when "100" => output <= "11101111";
			when "101" => output <= "11011111";
			when "110" => output <= "10111111";
			when others => output <= "01111111";
		end case;
	end process;
end;
