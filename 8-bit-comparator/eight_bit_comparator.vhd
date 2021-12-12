-- 4 Bit comparator as component

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity eight_bit_comparator is
    Port ( a,b : in  STD_LOGIC_VECTOR (3 downto 0);
           alb,aeb,agb : out  STD_LOGIC);
end eight_bit_comparator;

architecture functional of eight_bit_comparator is

begin

process( a,b)
begin
if ( a < b) then               -----a greater than b ?
	agb<='0';
	alb<='1';
	aeb<='0';
elsif ( a > b) then             -----a less than than b ?
	agb<='1';
	alb<='0';
	aeb<='0';
else                                 --- a equal to b
	agb<='0';
	alb<='0';
	aeb<='1';
end if;
end process;
end functional;

----------------------------------------
--8 Bit comparator using two 4 bit comparator

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity eight_bit_comparator1 is
    Port ( a,b : in  STD_LOGIC_VECTOR (7 downto 0);
           aeb,alb,agb : out  STD_LOGIC);
end eight_bit_comparator1;


architecture Behavioral of eight_bit_comparator1 is

component eight_bit_comparator is
port( a,b:in std_logic_vector(3 downto 0);
 alb,aeb,agb : out  STD_LOGIC:='0');
end component;
 
signal g,l,e,g1,l1,e1:std_logic;

begin
x1:eight_bit_comparator port map(a(7 downto 4),b(7 downto 4),l,e,g);
x2:eight_bit_comparator port map(a(3 downto 0),b(3 downto 0),l1,e1,g1);

process(g1,l1,e1,g,l,e) is
begin
if(g='1') then 
	agb<='1';
	alb<='0';
	aeb<='0';
elsif(l='1') then 
	agb<='0';
	alb<='1';
	aeb<='0';
else 	--if(e='1') then
if(g1='1')then 
	agb<='1';
	alb<='0';
	aeb<='0';
elsif(l1='1') then
	agb<='0';
	alb<='1';
	aeb<='0';
else 
	aeb<='1'; 
	alb<='0';
	agb<='0';
end if;
end if;
end process;

end behavioral;
