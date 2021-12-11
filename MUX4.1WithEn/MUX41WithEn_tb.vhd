LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY MUX41WithEn_tb IS
END MUX41WithEn_tb;
 
ARCHITECTURE behavior OF MUX41WithEn_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX41WithEn
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         c : IN  std_logic;
         d : IN  std_logic;
         en : IN  std_logic;
         sel : IN  std_logic_vector(1 downto 0);
         y : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal c : std_logic := '0';
   signal d : std_logic := '0';
   signal en : std_logic := '0';
   signal sel : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal y : std_logic;

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX41WithEn PORT MAP (
          a => a,
          b => b,
          c => c,
          d => d,
          en => en,
          sel => sel,
          y => y
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		
		a <= '0';
		b <= '0';
		c <= '0';
		d <= '0';
		sel <= "00";
		en <= '1';
      wait for 100 ns;	
	
      -- insert stimulus here 

		a <= '1';
		b <= '0';
		c <= '0';
		d <= '0';
		sel <= "00";
		en <= '1';
		wait for 100 ns;	
		
		a <= '0';
		b <= '1';
		c <= '0';
		d <= '0';
		sel <= "00";
		en <= '1';
		wait for 100 ns;	
		
		a <= '1';
		b <= '1';
		c <= '1';
		d <= '0';
		sel <= "00";
		en <= '1';
		wait for 100 ns;	
		
		a <= '0';
		b <= '0';
		c <= '1';
		d <= '1';
		sel <= "01";
		en <= '1';
		wait for 100 ns;
		
		a <= '1';
		b <= '0';
		c <= '1';
		d <= '1';
		sel <= "01";
		en <= '1';
		wait for 100 ns;
		
		a <= '0';
		b <= '1';
		c <= '0';
		d <= '1';
		sel <= "01";
		en <= '1';
		wait for 100 ns;
		
		a <= '1';
		b <= '1';
		c <= '0';
		d <= '1';
		sel <= "01";
		en <= '1';
		wait for 100 ns;
		
		a <= '0';
		b <= '0';
		c <= '0';
		d <= '0';
		sel <= "10";
		en <= '1';
		wait for 100 ns;
		
		a <= '1';
		b <= '0';
		c <= '1';
		d <= '0';
		sel <= "10";
		en <= '1';
		wait for 100 ns;
		
		a <= '0';
		b <= '1';
		c <= '1';
		d <= '0';
		sel <= "10";
		en <= '1';
		wait for 100 ns;
		
		a <= '1';
		b <= '1';
		c <= '1';
		d <= '0';
		sel <= "10";
		en <= '1';
		wait for 100 ns;
		
		a <= '0';
		b <= '0';
		c <= '0';
		d <= '1';
		sel <= "11";
		en <= '1';
		wait for 100 ns;
		
		a <= '1';
		b <= '0';
		c <= '0';
		d <= '1';
		sel <= "11";
		en <= '1';
		wait for 100 ns;
		
		a <= '0';
		b <= '1';
		c <= '0';
		d <= '1';
		sel <= "11";
		en <= '1';
		wait for 100 ns;
		
		a <= '1';
		b <= '1';
		c <= '1';
		d <= '1';
		sel <= "11";
		en <= '1';
		wait for 100 ns;
		
		a <= '1';
		b <= '1';
		c <= '1';
		d <= '1';
		sel <= "11";
		en <= '0';
		wait for 100 ns;
		
      wait;
   end process;

END;
