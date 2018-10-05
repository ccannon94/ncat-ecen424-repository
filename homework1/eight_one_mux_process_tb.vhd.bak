library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity eight_one_mux_conditional_tb is
end entity eight_one_mux_conditional_tb;

architecture tb_behavioral of eight_one_mux_conditional_tb is
	component eight_one_mux_conditional is
		port(input : in std_logic_vector(7 downto 0); sel : in std_logic_vector(2 downto 0); output : out std_logic);
	end component;

	signal tb_input : std_logic_vector(7 downto 0);
	signal tb_sel : std_logic_vector(2 downto 0);
	signal tb_output : std_logic;

begin
	uut : eight_one_mux_conditional port map(tb_input, tb_sel, tb_output);

	gen_test_vectors : process
		variable test_in : unsigned(7 downto 0);
		variable test_sel_in : unsigned(2 downto 0);
	begin
		test_in := B"00000000";
		test_sel_in := B"000";
		for count in 0 to 255 loop
			tb_input <= std_logic_vector(test_in);
			for count_two in 0 to 7 loop
				tb_sel <= std_logic_vector(test_sel_in);
				wait for 10ns;
				test_sel_in := test_sel_in + 1;
			end loop;
			wait for 10 ns;
			test_in := test_in + 1;
		end loop;
		report "Done with test";
	end process;
end architecture tb_behavioral;
