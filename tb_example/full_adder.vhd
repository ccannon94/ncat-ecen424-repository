library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder is
	port(a, b, cin : in std_logic; sum, cout : out std_logic);
end entity full_adder;
architecture behavioral of full_adder is
begin
	cout <= '1' when(
		((a = '1') and (b = '1')) or
		((a = '1') and (cin = '1')) or
		((b = '1') and (cin = '1')))
		else '0';
	sum <= a xor b xor cin;
end architecture behavioral;
		
