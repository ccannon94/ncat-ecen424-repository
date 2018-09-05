----------------------------------------------------------------------------------
-- Company: North Carolina A&T State University
-- Engineer: Christopher Cannon
-- 
-- Create Date: 09/05/2018 10:12:15 AM
-- Design Name: 
-- Module Name: AndGate - Behavioral
-- Project Name: ECEN 424
-- Target Devices: Basys3
-- Tool Versions: N/A
-- Description: 
-- A basic AND gate module used as a Vivado example.
-- Dependencies: 
-- None
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

entity AndGate is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : out STD_LOGIC);
end AndGate;

architecture Behavioral of AndGate is

begin
    c <= a and b;

end Behavioral;
