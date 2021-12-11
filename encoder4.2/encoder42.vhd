library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity encoder42 is
    Port ( d : in  STD_LOGIC_VECTOR(3 DOWNTO 0);
           y : out  STD_LOGIC_VECTOR(1 DOWNTO 0));
end encoder42;

architecture Behavioral of encoder42 is
begin
	
	y <= "11"  when d(3) = '1' else
		  "10"  when d(2) = '1' else
		  "01"  when d(1) = '1' else
		  "00";
			
end Behavioral;

