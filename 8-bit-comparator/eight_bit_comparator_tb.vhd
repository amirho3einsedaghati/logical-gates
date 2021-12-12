LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY eight_bit_comparator_tb IS
END eight_bit_comparator_tb;
 
ARCHITECTURE behavior OF eight_bit_comparator_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT eight_bit_comparator1
    PORT(
         a : IN  std_logic_vector(7 downto 0);
         b : IN  std_logic_vector(7 downto 0);
         aeb : OUT  std_logic;
         alb : OUT  std_logic;
         agb : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(7 downto 0) := (others => '0');
   signal b : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal aeb : std_logic;
   signal alb : std_logic;
   signal agb : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: eight_bit_comparator1 PORT MAP (
          a => a,
          b => b,
          aeb => aeb,
          alb => alb,
          agb => agb
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		
		a <= "00001100";
		b <= "00001100";
      wait for 100 ns;	

      -- insert stimulus here 
		
		a <= "00001010";
		b <= "00010001";
      wait for 100 ns;	
		
		a <= "00001111";
		b <= "00000101";
      wait for 100 ns;

		a <= "00011000";
		b <= "00011000";
      wait for 100 ns;	
		
      wait; n
   end process;

END;
