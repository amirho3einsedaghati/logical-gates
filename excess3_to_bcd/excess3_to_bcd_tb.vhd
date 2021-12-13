LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY excess3_to_bcd_tb IS
END excess3_to_bcd_tb;
 
ARCHITECTURE behavior OF excess3_to_bcd_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT excess3_to_bcd
    PORT(
         e3 : IN  std_logic;
         e2 : IN  std_logic;
         e1 : IN  std_logic;
         e0 : IN  std_logic;
         b3 : OUT  std_logic;
         b2 : OUT  std_logic;
         b1 : OUT  std_logic;
         b0 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal e3 : std_logic := '0';
   signal e2 : std_logic := '0';
   signal e1 : std_logic := '0';
   signal e0 : std_logic := '0';

 	--Outputs
   signal b3 : std_logic;
   signal b2 : std_logic;
   signal b1 : std_logic;
   signal b0 : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: excess3_to_bcd PORT MAP (
          e3 => e3,
          e2 => e2,
          e1 => e1,
          e0 => e0,
          b3 => b3,
          b2 => b2,
          b1 => b1,
          b0 => b0
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		e3 <= '0';
		e2 <= '0';
		e1 <= '1';
		e0 <= '1';
      wait for 100 ns;	

      -- insert stimulus here 
		
		e3 <= '0';
		e2 <= '1';
		e1 <= '0';
		e0 <= '0';
      wait for 100 ns;	
		
		e3 <= '0';
		e2 <= '1';
		e1 <= '0';
		e0 <= '1';
      wait for 100 ns;
		
		e3 <= '0';
		e2 <= '1';
		e1 <= '1';
		e0 <= '0';
      wait for 100 ns;
		
		e3 <= '0';
		e2 <= '1';
		e1 <= '1';
		e0 <= '1';
      wait for 100 ns;
		
		e3 <= '1';
		e2 <= '0';
		e1 <= '0';
		e0 <= '0';
      wait for 100 ns;
		
		e3 <= '1';
		e2 <= '0';
		e1 <= '0';
		e0 <= '1';
      wait for 100 ns;
		
		e3 <= '1';
		e2 <= '0';
		e1 <= '1';
		e0 <= '0';
      wait for 100 ns;
		
		e3 <= '1';
		e2 <= '0';
		e1 <= '1';
		e0 <= '1';
      wait for 100 ns;
		
		e3 <= '1';
		e2 <= '1';
		e1 <= '0';
		e0 <= '0';
      wait for 100 ns;
		
      wait;
   end process;

END;
