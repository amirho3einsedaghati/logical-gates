library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fullSubtractor_with_halfSubtractor is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           bin : in  STD_LOGIC;
           b0 : inout  STD_LOGIC;
           b1 : inout  STD_LOGIC;
           d0 : inout  STD_LOGIC;
           d1 : out  STD_LOGIC;
           bout : out  STD_LOGIC);
end fullSubtractor_with_halfSubtractor;


architecture Behavioral of fullSubtractor_with_halfSubtractor is
begin

	d0 <= a xor b;
	b0 <= not a and b;
	d1 <= d0 xor bin;
	b1 <= not d0 and bin;
	bout <= b1 or b0;
 
end Behavioral;

