LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY halfAdder_tb IS
END halfAdder_tb;
 
ARCHITECTURE behavior OF halfAdder_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT halfAdder
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         sum : OUT  std_logic;
         carry : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';

 	--Outputs
   signal sum : std_logic;
   signal carry : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: halfAdder PORT MAP (
          a => a,
          b => b,
          sum => sum,
          carry => carry
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
		wait for 100 ns;
		
      wait;
   end process;

END;
