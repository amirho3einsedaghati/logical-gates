library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX21 is
    Port ( a, b: in STD_LOGIC;
           s : in  STD_LOGIC;
           y : out  STD_LOGIC);
end MUX21;

architecture Behavioral of MUX21 is
begin
		  with s select
	y <= a when '0',
		  b when '1';
	
end Behavioral;

