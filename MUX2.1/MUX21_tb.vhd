LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY MUX21_tb IS
END MUX21_tb;
 
ARCHITECTURE behavior OF MUX21_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX21
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         s : IN  std_logic;
         y : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal s : std_logic := '0';

 	--Outputs
   signal y : std_logic;

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX21 PORT MAP (
          a => a,
          b => b,
          s => s,
          y => y
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- insert stimulus here 
		
		s <= '1';
		a <= '0';
		b <= '1';
		
		wait for 100 ns;
			
		s <= '0';
		a <= '0';
		b <= '1';
		
		wait for 100 ns;
			
		s <= '0';
		a <= '1';
		b <= '1';
		
		
		wait for 100 ns;
			
		s <= '1';
		a <= '1';
		b <= '0';
		
      wait;
   end process;

END;
