library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


---------------------- gate level ---------------
--entity MUX41 is
    --Port ( a : in  STD_LOGIC;
           --b : in  STD_LOGIC;
           --c : in  STD_LOGIC;
           --d : in  STD_LOGIC;
           --s0 : in  STD_LOGIC;
			  --s1 : in  STD_LOGIC;
           --y : out  STD_LOGIC);
--end MUX41;


--architecture Behavioral of MUX41 is
--begin
	
	--y <= (a and (not s1) and (not s0)) or (b and (not s1) and (s0)) or (c and (s1) and (not s0)) or (d and (s1) and (s0));
	
--end Behavioral;


---------------------- when/else and with/select/when entity ---------------
entity MUX41 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           d : in  STD_LOGIC;
           s : in  STD_LOGIC_VECTOR(1 downto 0);
           y : out  STD_LOGIC);
end MUX41;


---------------------- when/else ---------------
--architecture Behavioral of MUX41 is
--begin

	--y <= a when s= "00" else
		  --b when s= "01" else
		  --c when s= "10" else
		  --d;
		
--end Behavioral;


---------------------- with/select/when ---------------
architecture Behavioral of MUX41 is
begin
		  with s select
	y <= a when "00",
		  b when "01",
		  c when "10",
		  d when "11";
			
end Behavioral;

