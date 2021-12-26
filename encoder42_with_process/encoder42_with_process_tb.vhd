LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY encoder42_with_process_tb IS
END encoder42_with_process_tb;
 
ARCHITECTURE behavior OF encoder42_with_process_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT encoder42_with_process
    PORT(
         i : IN  std_logic_vector(3 downto 0);
         y : OUT  std_logic;
         d : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal i : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal y : std_logic;
   signal d : std_logic_vector(1 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: encoder42_with_process PORT MAP (
          i => i,
          y => y,
          d => d
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- insert stimulus here 
		i <= "0001";
		wait for 100 ns;
		
		i <= "0010";
		wait for 100 ns;	
		
		i <= "0100";
		wait for 100 ns;
		
		i <= "1000";
		wait for 100 ns;
		
      wait;
   end process;

END;
