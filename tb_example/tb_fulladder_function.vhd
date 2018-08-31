library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;



entity tb_fulladder_function is
end;

architecture tb_behavioral of tb_fulladder_function is
  component full_adder is
    port(a, b, cin: in std_logic; sum, cout: out std_logic);
  end component;

  signal my_a, my_b, my_cin : std_logic;
  signal my_sum, my_cout : std_logic;

function error_check (expected : in unsigned; sum, cout: in std_logic)
return integer is
begin
    if(expected /= (cout & sum)) then
      report "Error: My Expected (" &
      std_logic'image(expected(1)) &
      std_logic'image(expected(0)) &
      ") actual (" &
      std_logic'image(cout) &
      std_logic'image(sum);
      return 1;
    else
      return 0;
    end if;
end function error_check;
begin
  uut : full_adder port map(my_a, my_b, my_cin, my_sum, my_cout);
    
  gen_test_vectors : process
    variable test_in : unsigned(2 downto 0);
    variable expected: unsigned(1 downto 0);
    variable error_count : integer := 0;
    begin
      test_in := B"000";
      for count in 0 to 7 loop
        my_a <= test_in(2);
        my_b <= test_in(1);
        my_cin <= test_in(0);
        wait for 10 ns;
        expected := ('0' & my_a) + ('0' & my_b) + ('0' & my_cin);
        error_count := error_count + error_check(expected, my_sum, my_cout);
        test_in := test_in + 1;
      end loop;
      report("Done with test. There were " &
      integer'image(error_count) & "errors");
  end process;
end;
