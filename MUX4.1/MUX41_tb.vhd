LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY MUX41_tb IS
END MUX41_tb;
 
ARCHITECTURE behavior OF MUX41_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX41
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         c : IN  std_logic;
         d : IN  std_logic;
         s : IN  std_logic_vector(1 downto 0);
         y : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal c : std_logic := '0';
   signal d : std_logic := '0';
   signal s : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal y : std_logic;

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX41 PORT MAP (
          a => a,
          b => b,
          c => c,
          d => d,
          s => s,
          y => y
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 75 ns
		
      wait for 25 ns;	
		
      -- insert stimulus here 
		
		s <= "00";
		a <= '1';
		b <= '0';
		c <= '0';
		d <= '0';
		
		wait for 25 ns;
		
		s <= "00";
		a <= '0';
		b <= '0';
		c <= '0';
		d <= '0';
		
		wait for 25 ns;

		s <= "01";
		a <= '0';
		b <= '0';
		c <= '0';
		d <= '0';
				
		wait for 25 ns;

		s <= "01";
		a <= '0';
		b <= '1';
		c <= '0';
		d <= '0';
				
		wait for 25 ns;

		s <= "01";
		a <= '0';
		b <= '0';
		c <= '0';
		d <= '0';
		
		wait for 25 ns;	
		
		s <= "10";
		a <= '0';
		b <= '0';
		c <= '0';
		d <= '0';
		
		wait for 25 ns;	
		
		s <= "10";
		a <= '0';
		b <= '0';
		c <= '1';
		d <= '0';
		
		wait for 25 ns;	
		
		s <= "10";
		a <= '0';
		b <= '0';
		c <= '0';
		d <= '0';
		
		wait for 25 ns;	
		
		s <= "11";
		a <= '0';
		b <= '0';
		c <= '0';
		d <= '0';
		
		wait for 25 ns;	
		
		s <= "11";
		a <= '0';
		b <= '0';
		c <= '0';
		d <= '1';
		
		wait for 25 ns;	
		
		s <= "11";
		a <= '0';
		b <= '0';
		c <= '0';
		d <= '0';
		
		wait for 25 ns;	
		
		s <= "00";
		a <= '0';
		b <= '0';
		c <= '0';
		d <= '0';
		
		wait for 25 ns;	
		
		s <= "00";
		a <= '1';
		b <= '0';
		c <= '0';
		d <= '0';
		
		wait for 25 ns;
		
		s <= "00";
		a <= '0';
		b <= '0';
		c <= '0';
		d <= '0';
		
		wait for 25 ns;

		s <= "01";
		a <= '0';
		b <= '0';
		c <= '0';
		d <= '0';
				
		wait for 25 ns;

		s <= "01";
		a <= '0';
		b <= '1';
		c <= '0';
		d <= '0';
				
		wait for 25 ns;

		s <= "01";
		a <= '0';
		b <= '0';
		c <= '0';
		d <= '0';
		
      wait;
   end process;

END;
