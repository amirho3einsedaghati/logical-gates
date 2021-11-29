LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY andGate_tb IS
END andGate_tb;
 
ARCHITECTURE behavior OF andGate_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT andGate
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         x : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';

 	--Outputs
   signal x : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: andGate PORT MAP (
          a => a,
          b => b,
          x => x
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- insert stimulus here 	
		
		a <= '0';
		b <= '1';
		
		wait for 100 ns;
		
		a <= '1';
		b <= '0';
		
		wait for 100 ns;
		
		a <= '1';
		b <= '1';

      wait;
   end process;

END;
