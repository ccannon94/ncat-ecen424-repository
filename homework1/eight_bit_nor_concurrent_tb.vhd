library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity eight_bit_nor_concurrent_tb is
end entity eight_bit_nor_concurrent_tb;

architecture tb_behavioral of eight_bit_nor_concurrent_tb is
	component eight_bit_nor_concurrent is
		port(input : in std_logic_vector(7 downto 0); output : out std_logic);
	end component;

	signal tb_input : std_logic_vector(7 downto 0);
	signal tb_output : std_logic;

begin
	uut : eight_bit_nor_concurrent port map(tb_input, tb_output);

	gen_test_vectors : process
		variable test_in : unsigned(7 downto 0);
	begin
		test_in := B"00000000";
		for count in 0 to 255 loop
			tb_input <= std_logic_vector(test_in);
			wait for 10 ns;
			test_in := test_in + 1;
		end loop;
		report "Done with test";
	end process;
end architecture tb_behavioral;
