library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX41WithEn is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           d : in  STD_LOGIC;
           en : in  STD_LOGIC;
           sel : in  STD_LOGIC_VECTOR(1 DOWNTO 0);
           y : out  STD_LOGIC);
end MUX41WithEn;


architecture Behavioral of MUX41WithEn is

signal se: STD_LOGIC_VECTOR(2 DOWNTO 0);
begin
		  se <= en & sel;
		  with se select
	y <= a when "100",
		  b when "101",
		  c when "110",
		  d when "111",
		  '0' when others;
	
end Behavioral;

