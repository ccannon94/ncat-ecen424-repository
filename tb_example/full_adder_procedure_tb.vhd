
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity full_adder_tb is
end entity full_adder_tb;

architecture tb_behavioral of full_adder_tb is
  component full_adder is
    port(a, b, cin: in std_logic; sum, cout: out std_logic);
  end component;

  signal tb_a, tb_b, tb_cin : std_logic;
  signal tb_sum, tb_cout : std_logic;
  procedure error_check(expected, sum, cout : in unsigned; error_count : inout integer) is
  begin
    expected := ('0' & tb_a) + ('0' & tb_b) + ('0' & tb_cin);
        if(expected /= (cout & sum)) then
         report "ERROR: Expected (" &
           std_logic'image(expected(1)) &
           std_logic'image(expected(0)) &
           ") actual (" &
           std_logic'image(cout) &
           std_logic'image(sum) &
           ")";
           
         error_count := error_count + 1;
        end if;
  end procedure error_check;

begin
  uut: full_adder port map (tb_a, tb_b, tb_cin, tb_sum, tb_cout);

  gen_test_vectors: process
    variable test_in: unsigned(2 downto 0);
    variable expected: unsigned(1 downto 0);
    variable error_count: integer := 0;
  begin
    test_in := B"000"; --the B tells VHDL we are entering this value in binary
    for count in 0 to 7 loop
      tb_a <= test_in(2);
      tb_b <= test_in(1);
      tb_cin <= test_in(0);
      wait for 10 ns;
      
      --check to see if result is correct
      expected := "00";
      error_check(expected, tb_sum, tb_cout, error_count);
      
      
      test_in := test_in + 1;
    end loop;
    report "Done with test. There were " & 
      integer'image(error_count) &
      " errors";
  end process;
end architecture tb_behavioral;