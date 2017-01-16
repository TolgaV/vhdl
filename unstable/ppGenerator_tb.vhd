--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   06:52:43 01/15/2017
-- Design Name:   
-- Module Name:   C:/Users/TOLGA/Documents/Xilinx/boothMultiplier16b/ppGenerator_tb.vhd
-- Project Name:  boothMultiplier16b
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ppGenerator
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
 
ENTITY ppGenerator_tb IS
END ppGenerator_tb;
 
ARCHITECTURE behavior OF ppGenerator_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ppGenerator
    PORT(
         multiplicand : IN  std_logic_vector(15 downto 0);
         multiplier : IN  std_logic_vector(15 downto 0);
         pp0 : OUT  std_logic_vector(16 downto 0);
         pp1 : OUT  std_logic_vector(16 downto 0);
         pp2 : OUT  std_logic_vector(16 downto 0);
         pp3 : OUT  std_logic_vector(16 downto 0);
         pp4 : OUT  std_logic_vector(16 downto 0);
         pp5 : OUT  std_logic_vector(16 downto 0);
         pp6 : OUT  std_logic_vector(16 downto 0);
         pp7 : OUT  std_logic_vector(16 downto 0);
         signs : OUT  std_logic_vector(7 downto 0);
         shiftFlag : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal multiplicand : std_logic_vector(15 downto 0) := (others => '0');
   signal multiplier : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal pp0 : std_logic_vector(16 downto 0);
   signal pp1 : std_logic_vector(16 downto 0);
   signal pp2 : std_logic_vector(16 downto 0);
   signal pp3 : std_logic_vector(16 downto 0);
   signal pp4 : std_logic_vector(16 downto 0);
   signal pp5 : std_logic_vector(16 downto 0);
   signal pp6 : std_logic_vector(16 downto 0);
   signal pp7 : std_logic_vector(16 downto 0);
   signal signs : std_logic_vector(7 downto 0);
   signal shiftFlag : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ppGenerator PORT MAP (
          multiplicand => multiplicand,
          multiplier => multiplier,
          pp0 => pp0,
          pp1 => pp1,
          pp2 => pp2,
          pp3 => pp3,
          pp4 => pp4,
          pp5 => pp5,
          pp6 => pp6,
          pp7 => pp7,
          signs => signs,
          shiftFlag => shiftFlag
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	


		multiplicand <= "1111011111110011";
		multiplier <="1010011001010000";
      -- insert stimulus here 

      wait;
   end process;

END;
