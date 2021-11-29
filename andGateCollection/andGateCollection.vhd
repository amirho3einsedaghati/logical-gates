library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity andGateCollection is
    Port ( a : in  STD_LOGIC_VECTOR(3 downto 0);
           b : in  STD_LOGIC_VECTOR(3 downto 0);
           x : out  STD_LOGIC_VECTOR(3 downto 0));
end andGateCollection;


architecture Behavioral of andGateCollection is
begin

	x <= a and b;
	
end Behavioral;

