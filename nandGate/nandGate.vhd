library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity nandGate is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           x : out  STD_LOGIC);
end nandGate;


architecture Behavioral of nandGate is
begin

	x <= a and (not b);

end Behavioral;

