library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

---------------- gate level ------------------
--entity two_to_four_encoder is
    --Port ( --a : in  STD_LOGIC;
           --b : in  STD_LOGIC;
           --en : in  STD_LOGIC;
           --q0 : out  STD_LOGIC;
           --q1 : out  STD_LOGIC;
           --q2 : out  STD_LOGIC;
           --q3 : out  STD_LOGIC);
--end two_to_four_encoder;


--architecture Behavioral of two_to_four_encoder is
--begin
		--q0 <= (not a) and (not b) and en;
		--q1 <= (not a) and b and en;
		--q2 <= a and (not b) and en;
		--q3 <= a and b and en;
--end Behavioral;


-------------------------when/else and with/select/when entity----------------------------
entity two_to_four_encoder is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           en : in  STD_LOGIC;
           q : out  STD_LOGIC_VECTOR(3 downto 0));
end two_to_four_encoder;


architecture Behavioral of two_to_four_encoder is

signal Enab: std_logic_vector(2 downto 0);
begin

---------------- when/else ------------------
	--Enab <= en & a & b;
	--q <= "0001" when Enab= "100" else
		  --"0010" when Enab= "101" else
		  --"0100" when Enab= "110" else
		  --"1000" when Enab= "111" else
		  --"0000";

---------------- with/select/when -------------

	     Enab <= en & a & b;
		  with Enab select
	q <= "0001" when "100",
		  "0010" when "101",
		  "0100" when "110",
		  "1000" when "111",
		  "0000" when others;
			
end Behavioral;
