library IEEE;
USE ieee.std_logic_1164.ALL;
use IEEE.numeric_std.all;

entity adder is
    Port ( a : in  unsigned(4 downto 0);
           b : in  unsigned(3 downto 0);
           sum : out  unsigned(4 downto 0));
end adder;


architecture Behavioral of adder is
begin

	sum <= a + b;

end Behavioral;

