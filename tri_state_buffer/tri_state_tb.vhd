LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tri_state_tb IS
END tri_state_tb;
 
ARCHITECTURE behavior OF tri_state_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT tri_state
    PORT(
         a : IN  std_logic_vector(7 downto 0);
         enable : IN  std_logic;
         y : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(7 downto 0) := (others => '0');
   signal enable : std_logic := '0';

 	--Outputs
   signal y : std_logic_vector(7 downto 0);

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: tri_state PORT MAP (
          a => a,
          enable => enable,
          y => y
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
		
		enable <= '1';
		a <= "00000000";
		
      wait for 150 ns;	

      -- insert stimulus here 
	
		enable <= '1';
		a <= "00000001";
		
		wait for 150 ns;
		
		enable <= '1';
		a <= "00000010";
		
		wait for 50 ns;
		
		enable <= '0';
		a <= "00000010";
		
		wait for 100 ns;
		
		enable <= '0';
		a <= "00000011";
		
		wait for 150 ns;
		
		enable <= '0';
		a <= "00000100";
		
		wait for 150 ns;
		
		enable <= '0';
		a <= "00000101";
		
		wait for 150 ns;
		
      wait;
   end process;

END;
