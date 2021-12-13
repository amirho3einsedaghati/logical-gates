library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bcd_to_7segment is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           D : in  STD_LOGIC;
           LED1 : out  STD_LOGIC;
           LED2 : out  STD_LOGIC;
           LED3 : out  STD_LOGIC;
           LED4 : out  STD_LOGIC;
           LED5 : out  STD_LOGIC;
           LED6 : out  STD_LOGIC;
           LED7 : out  STD_LOGIC);
end bcd_to_7segment;


architecture Behavioral of bcd_to_7segment is
begin

	LED1 <= (not B and not D) or C or (B and D) or A;
	LED2 <= (not B) or (not C and not D) or (C and D);
	LED3 <= not C or B or D;
	LED4 <= (not B and not D) or (not B and C) or (B and not C and D) or (C and not D) or A;
	LED5 <= (not B and not D) or (C and not D);
	LED6 <= (not C and not D) or (B and not C) or (B and not D) or A;
	LED7 <= (not B and C) or (B and not C) or A or (B and not D);
	
end Behavioral;

