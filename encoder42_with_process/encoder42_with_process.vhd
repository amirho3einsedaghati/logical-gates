library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity encoder42_with_process is
    Port ( i : in  STD_LOGIC_VECTOR(3 downto 0);
           y : out  STD_LOGIC;
           d : out  STD_LOGIC_VECTOR(1 downto 0));
end encoder42_with_process;

architecture Behavioral of encoder42_with_process is
begin
	
	y <= '1' when i= "0000" else
	     '0';
		  
	process(i)
	begin
		if i(3)= '1' then
			d <= "11";
		elsif i(2)= '1' then
			d <= "10";
		elsif i(1)= '1' then 
			d <= "01"; 
		else
			d <= "00";
	end if;
	end process;	

end Behavioral;
