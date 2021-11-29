LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use IEEE.numeric_std.all;

ENTITY adder_tb IS
END adder_tb;
 
ARCHITECTURE behavior OF adder_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT adder
    PORT(
         a : IN  unsigned(4 downto 0);
         b : IN  unsigned(3 downto 0);
         sum : OUT  unsigned(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : unsigned(4 downto 0) := (others => '0');
   signal b : unsigned(3 downto 0) := (others => '0');

 	--Outputs
   signal sum : unsigned(4 downto 0);
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: adder PORT MAP (
          a => a,
          b => b,
          sum => sum
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- insert stimulus here 
		
		a <= "10011";
		b <= "1010";
		
		wait for 50 ns;
		
		a <= "01000";
		b <= "0101";
		
      wait;
   end process;

END;