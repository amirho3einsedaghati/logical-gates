LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY fullSubtractor_with_halfSubtractor_tb IS
END fullSubtractor_with_halfSubtractor_tb;
 
ARCHITECTURE behavior OF fullSubtractor_with_halfSubtractor_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fullSubtractor_with_halfSubtractor
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         bin : IN  std_logic;
         b0 : INOUT  std_logic;
         b1 : INOUT  std_logic;
         d0 : INOUT  std_logic;
         d1 : OUT  std_logic;
         bout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal bin : std_logic := '0';

	--BiDirs
   signal b0 : std_logic;
   signal b1 : std_logic;
   signal d0 : std_logic;

 	--Outputs
   signal d1 : std_logic;
   signal bout : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fullSubtractor_with_halfSubtractor PORT MAP (
          a => a,
          b => b,
          bin => bin,
          b0 => b0,
          b1 => b1,
          d0 => d0,
          d1 => d1,
          bout => bout
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
      -- insert stimulus here 

		a <= '0';
		b <= '0';
		bin <= '1';
		wait for 100 ns;
		
		
		a <= '0';
		b <= '1';
		bin <= '0';
		wait for 100 ns;
		
		
		a <= '0';
		b <= '1';
		bin <= '1';
		wait for 100 ns;
		
		
		a <= '1';
		b <= '0';
		bin <= '0';
		wait for 100 ns;
		
		
		a <= '1';
		b <= '0';
		bin <= '1';
		wait for 100 ns;
		
		a <= '1';
		b <= '1';
		bin <= '0';
		wait for 100 ns;
		
		a <= '1';
		b <= '1';
		bin <= '1';
		wait for 100 ns;
		
      wait;
   end process;

END;
