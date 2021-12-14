LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY two_to_four_decoder_with_enable_tb IS
END two_to_four_decoder_with_enable_tb;
 
ARCHITECTURE behavior OF two_to_four_decoder_with_enable_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT two_to_four_decoder_with_enable
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         en : IN  std_logic;
         q : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal en : std_logic := '0';
   signal q : std_logic_vector(3 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: two_to_four_decoder_with_enable PORT MAP (
          a => a,
          b => b,
          en => en,
          q => q
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		en <= '1';
		a <= '0';
		b <= '0';
      wait for 100 ns;	

      -- insert stimulus here 

		en <= '1';
		a <= '0';
		b <= '1';
      wait for 100 ns;	

		en <= '1';
		a <= '1';
		b <= '0';
      wait for 100 ns;	

		en <= '1';
		a <= '1';
		b <= '1';
      wait for 100 ns;	

		en <= '0';
		a <= '0';
		b <= '0';
      wait for 100 ns;	

      wait;
   end process;

END;
