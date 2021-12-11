library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fullAdderUsingHalfAdder is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           s1 : inout  STD_LOGIC;
           co1 : inout  STD_LOGIC;
           co2 : inout  STD_LOGIC;
           s2 : out  STD_LOGIC;
           co3 : out  STD_LOGIC);
end fullAdderUsingHalfAdder;


architecture Behavioral of fullAdderUsingHalfAdder is
begin
	
	s1 <= a xor b;
	co1 <= a and b;
	co2 <= cin and s1;
	s2 <= cin xor s1;
	co3 <= co2 or co1;

end Behavioral;

