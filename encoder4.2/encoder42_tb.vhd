LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY encoder42_tb IS
END encoder42_tb;
 
ARCHITECTURE behavior OF encoder42_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT encoder42
    PORT(
         d : IN  std_logic_vector(3 downto 0);
         y : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal d : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal y : std_logic_vector(1 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: encoder42 PORT MAP (
          d => d,
          y => y
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		
		d(0) <= '0';
		d(1) <= '0';
		d(2) <= '0';
		d(3) <= '0';
      wait for 100 ns;	
	
      -- insert stimulus here 

		d(0) <= '1';
		d(1) <= '0';
		d(2) <= '0';
		d(3) <= '0';
		wait for 100 ns;	
		
		d(0) <= '0';
		d(1) <= '1';
		d(2) <= '0';
		d(3) <= '0';
		wait for 100 ns;	
		
		d(0) <= '1';
		d(1) <= '1';
		d(2) <= '1';
		d(3) <= '0';
		wait for 100 ns;	
		
		d(0) <= '0';
		d(1) <= '0';
		d(2) <= '1';
		d(3) <= '1';
		wait for 100 ns;
		
		d(0) <= '1';
		d(1) <= '0';
		d(2) <= '1';
		d(3) <= '1';
		wait for 100 ns;
		
		d(0) <= '0';
		d(1) <= '1';
		d(2) <= '0';
		d(3) <= '1';
		wait for 100 ns;
		
		d(0) <= '1';
		d(1) <= '1';
		d(2) <= '0';
		d(3) <= '1';
		wait for 100 ns;
		
		d(0) <= '0';
		d(1) <= '0';
		d(2) <= '0';
		d(3) <= '0';
		wait for 100 ns;
		
		d(0) <= '1';
		d(1) <= '0';
		d(2) <= '1';
		d(3) <= '0';
		wait for 100 ns;
		
		d(0) <= '0';
		d(1) <= '1';
		d(2) <= '1';
		d(3) <= '0';
		wait for 100 ns;
		
		d(0) <= '1';
		d(1) <= '1';
		d(2) <= '1';
		d(3) <= '0';
		wait for 100 ns;
		
		d(0) <= '0';
		d(1) <= '0';
		d(2) <= '0';
		d(3) <= '1';
		wait for 100 ns;
		
		d(0) <= '1';
		d(1) <= '0';
		d(2) <= '0';
		d(3) <= '1';
		wait for 100 ns;
		
		d(0) <= '0';
		d(1) <= '1';
		d(2) <= '0';
		d(3) <= '1';
		wait for 100 ns;
		
		d(0) <= '1';
		d(1) <= '1';
		d(2) <= '1';
		d(3) <= '1';
		wait for 100 ns;
		

      wait;
   end process;

END;
