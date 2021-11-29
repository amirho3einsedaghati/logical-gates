--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:27:03 11/28/2021
-- Design Name:   
-- Module Name:   E:/Research/terme 5 - shahre qods/digital system design/Xilinx Project/fullAdder/fullAdder_tb.vhd
-- Project Name:  fullAdder
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fullAdder
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY fullAdder_tb IS
END fullAdder_tb;
 
ARCHITECTURE behavior OF fullAdder_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fullAdder
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         cin : IN  std_logic;
         sum : OUT  std_logic;
         cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal cin : std_logic := '0';

 	--Outputs
   signal sum : std_logic;
   signal cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fullAdder PORT MAP (
          a => a,
          b => b,
          cin => cin,
          sum => sum,
          cout => cout
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 50 ns;	

      -- insert stimulus here 
		
		a <= '1';
		b <= '0';
		cin <= '0';

      wait for 50 ns;	

		a <= '0';
		b <= '0';
		cin <= '0';
		
		wait for 50 ns;	

		a <= '1';
		b <= '1';
		cin <= '0';
		
		wait for 50 ns;	

		a <= '0';
		b <= '1';
		cin <= '0';
		
		
		wait for 50 ns;	

		a <= '1';
		b <= '1';
		cin <= '0';
		
		
		wait for 50 ns;	

		a <= '0';
		b <= '1';
		cin <= '1';
		
	   wait for 50 ns;	

		a <= '1';
		b <= '0';
		cin <= '1';
		
      wait;
   end process;

END;
