LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY fullAdderUsinHalfAdder_tb IS
END fullAdderUsinHalfAdder_tb;
 
ARCHITECTURE behavior OF fullAdderUsinHalfAdder_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fullAdderUsingHalfAdder
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         cin : IN  std_logic;
         s1 : INOUT  std_logic;
         co1 : INOUT  std_logic;
         co2 : INOUT  std_logic;
         s2 : OUT  std_logic;
         co3 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal cin : std_logic := '0';

	--BiDirs
   signal s1 : std_logic;
   signal co1 : std_logic;
   signal co2 : std_logic;

 	--Outputs
   signal s2 : std_logic;
   signal co3 : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fullAdderUsingHalfAdder PORT MAP (
          a => a,
          b => b,
          cin => cin,
          s1 => s1,
          co1 => co1,
          co2 => co2,
          s2 => s2,
          co3 => co3
        );
		  
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- insert stimulus here 
		
		a <= '0';
		b <= '0';
		cin <= '1';
		wait for 100 ns;
		
		a <= '0';
		b <= '1';
		cin <= '0';
		wait for 100 ns;
		
		a <= '0';
		b <= '1';
		cin <= '1';
		wait for 100 ns;
		
		a <= '1';
		b <= '0';
		cin <= '0';
		wait for 100 ns;
		
		a <= '1';
		b <= '0';
		cin <= '1';
		wait for 100 ns;
		
		a <= '1';
		b <= '1';
		cin <= '0';
		wait for 100 ns;
		
		a <= '1';
		b <= '1';
		cin <= '1';
		wait for 100 ns;
		
      wait;
   end process;

END;
