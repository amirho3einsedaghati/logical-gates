library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity encoder83 is
    Port ( d : in  STD_LOGIC_VECTOR(7 DOWNTO 0);
           y : out  STD_LOGIC_VECTOR(2 DOWNTO 0));
end encoder83;

architecture Behavioral of encoder83 is
begin
	
---------------- gate level ---------------
	--y(2) <= d(4) or d(5) or d(6) or d(7);
	--y(1) <= d(2) or d(3) or d(6) or d(7);
	--y(0) <= d(1) or d(3) or d(5) or d(7);


---------------- with/select/when ---------
		  with d select
	y <= "000" when "00000001",
		  "001" when "00000010",
		  "010" when "00000100",
		  "011" when "00001000", 
		  "100" when "00010000",
		  "101" when "00100000", 
		  "110" when "01000000", 
		  "111" when others;


---------------- when/else ---------
	--y <= "111" when d(7)= '1' else
		  --"110" when d(6)= '1' else
		  --"101" when d(5)= '1' else
		  --"100" when d(4)= '1' else
		  --"011" when d(3)= '1' else
		  --"010" when d(2)= '1' else
		  --"001" when d(1)= '1' else
		  --"000";
		  
end Behavioral;

