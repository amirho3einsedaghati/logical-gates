library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity MUX41 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           d : in  STD_LOGIC;
           s : in  STD_LOGIC_VECTOR(1 downto 0);
           y : out  STD_LOGIC);
end MUX41;


architecture Behavioral of MUX41 is
begin

	y <= a when s= "00" else
		  b when s= "01" else
		  c when s= "10" else
		  d;
			

end Behavioral;

