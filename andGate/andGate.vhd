library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity andGate is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           x : out  STD_LOGIC);
end andGate;

architecture functional of andGate is
begin

	x <= a and b;
	
end functional;

