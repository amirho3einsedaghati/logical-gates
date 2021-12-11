LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY encoder83_tb IS
END encoder83_tb;
 
ARCHITECTURE behavior OF encoder83_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT encoder83
    PORT(
         d : IN  std_logic_vector(7 downto 0);
         y : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal d : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal y : std_logic_vector(2 downto 0);

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: encoder83 PORT MAP (
          d => d,
          y => y
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		d <= "00000001";
      wait for 100 ns;	

      -- insert stimulus here 
		
		d <= "00000010";
		wait for 100 ns;
		
		d <= "00000100";
		wait for 100 ns;
		
		d <= "00001000";
		wait for 100 ns;
		
		d <= "00010000";
		wait for 100 ns;
		
		d <= "00100000";
		wait for 100 ns;
		
		d <= "01000000";
		wait for 100 ns;
		
		d <= "10000000";
		wait for 100 ns;
		
      wait;
   end process;

END;
