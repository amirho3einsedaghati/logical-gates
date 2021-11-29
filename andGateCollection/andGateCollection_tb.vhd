LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY andGateCollection_tb IS
END andGateCollection_tb;
 
ARCHITECTURE behavior OF andGateCollection_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT andGateCollection
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : IN  std_logic_vector(3 downto 0);
         x : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');
   signal b : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal x : std_logic_vector(3 downto 0);

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: andGateCollection PORT MAP (
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
		a <= "1001";
		b <= "0101";
		
		wait for 100 ns;
		
		a <= "1011";
		b <= "1101";
		
      wait;
   end process;

END;
