library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity three_eight_decoder_high_conditional_tb is
end;

architecture tb_behavioral of three_eight_decoder_high_conditional_tb is
	component three_eight_decoder_high_conditional is
		port(input : in std_logic_vector(2 downto 0); output : out std_logic_vector(7 downto 0));
	end component;

	signal tb_input : std_logic_vector(2 downto 0);
	signal tb_output : std_logic_vector(7 downto 0);

begin
	uut : three_eight_decoder_high_conditional port map(tb_input, tb_output);

	gen_test_vectors : process
		variable test_in : unsigned(2 downto 0);

	begin
		test_in := B"000";
		for count in 0 to 7 loop
			tb_input <= std_logic_vector(test_in);
			wait for 10 ns;
			test_in := test_in + 1;
		end loop;
	end process;
end architecture;
