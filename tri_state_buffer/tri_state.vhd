library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity tri_state is
    Port ( a : in  STD_LOGIC_VECTOR(7 DOWNTO 0);
           enable : in  STD_LOGIC;
           y : out  STD_LOGIC_VECTOR(7 DOWNTO 0));
end tri_state;


architecture Behavioral of tri_state is
begin

	y <= a when (enable= '0') else
		(others => 'Z');
	
end Behavioral;

