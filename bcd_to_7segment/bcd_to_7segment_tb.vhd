LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY bcd_to_7segment_tb IS
END bcd_to_7segment_tb;
 
ARCHITECTURE behavior OF bcd_to_7segment_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT bcd_to_7segment
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         C : IN  std_logic;
         D : IN  std_logic;
         LED1 : OUT  std_logic;
         LED2 : OUT  std_logic;
         LED3 : OUT  std_logic;
         LED4 : OUT  std_logic;
         LED5 : OUT  std_logic;
         LED6 : OUT  std_logic;
         LED7 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal C : std_logic := '0';
   signal D : std_logic := '0';

 	--Outputs
   signal LED1 : std_logic;
   signal LED2 : std_logic;
   signal LED3 : std_logic;
   signal LED4 : std_logic;
   signal LED5 : std_logic;
   signal LED6 : std_logic;
   signal LED7 : std_logic;
	
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: bcd_to_7segment PORT MAP (
          A => A,
          B => B,
          C => C,
          D => D,
          LED1 => LED1,
          LED2 => LED2,
          LED3 => LED3,
          LED4 => LED4,
          LED5 => LED5,
          LED6 => LED6,
          LED7 => LED7
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- insert stimulus here 
		
		 A <= '0';
		 B <= '0';
		 C <= '0';
		 D <= '1';
		 wait for 100 ns;
		 
		 A <= '0';
		 B <= '0';
		 C <= '1';
		 D <= '0';
		 wait for 100 ns;
		 
		 A <= '0';
		 B <= '0';
		 C <= '1';
		 D <= '1';
		 wait for 100 ns;
		 
		 A <= '0';
		 B <= '1';
		 C <= '0';
		 D <= '0';
		 wait for 100 ns;
		 
		 A <= '0';
		 B <= '1';
		 C <= '0';
		 D <= '1';
		 wait for 100 ns;
		 
		 A <= '0';
		 B <= '1';
		 C <= '1';
		 D <= '0';
		 wait for 100 ns;
		 
		 A <= '0';
		 B <= '1';
		 C <= '1';
		 D <= '1';
		 wait for 100 ns;
		 
		 A <= '1';
		 B <= '0';
		 C <= '0';
		 D <= '0';
		 wait for 100 ns;
		 
		 A <= '1';
		 B <= '0';
		 C <= '0';
		 D <= '1';
		 wait for 100 ns;
		 
      wait;
   end process;

END;
