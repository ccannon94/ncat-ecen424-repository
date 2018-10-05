----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/05/2018 10:06:17 AM
-- Design Name: 
-- Module Name: SimpleCircuit - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SimpleCircuit is
    Port ( clk : in STD_LOGIC;
           a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : out STD_LOGIC);
end SimpleCircuit;

architecture Behavioral of SimpleCircuit is

component ila_0 is
    port( clk : in STD_LOGIC; probe0 : in STD_LOGIC_VECTOR(0 downto 0); probe1 : STD_LOGIC_VECTOR(0 downto 0));
end component ila_0;
    
signal tmp : STD_LOGIC;

begin

    ila_comp : ila_0 port map(
        clk => clk,
        probe0(0) => a,
        probe1(0) => tmp);
    tmp <= (a and b) or (not a and b);
    c <= tmp;

end Behavioral;
