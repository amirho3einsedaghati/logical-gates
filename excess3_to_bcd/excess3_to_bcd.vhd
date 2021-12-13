library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity excess3_to_bcd is
    Port ( e3 : in  STD_LOGIC;
           e2 : in  STD_LOGIC;
           e1 : in  STD_LOGIC;
           e0 : in  STD_LOGIC;
           b3 : out  STD_LOGIC;
           b2 : out  STD_LOGIC;
           b1 : out  STD_LOGIC;
           b0 : out  STD_LOGIC);
end excess3_to_bcd;


architecture Behavioral of excess3_to_bcd is
begin

	b3 <= ((e0 and e1) or e2) and e3;
	b2 <= (not e0 or not e1) xor e2;
	b1 <= e1 xor e0;
	b0 <= not e0;
	
end Behavioral;

