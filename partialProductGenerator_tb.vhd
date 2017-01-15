--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   02:19:28 01/15/2017
-- Design Name:   
-- Module Name:   C:/Users/TOLGA/Documents/Xilinx/boothMultiplier16b/partialProductGenerator_tb.vhd
-- Project Name:  boothMultiplier16b
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: partialProductGenerator
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
 
ENTITY partialProductGenerator_tb IS
END partialProductGenerator_tb;
 
ARCHITECTURE behavior OF partialProductGenerator_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT partialProductGenerator
    PORT(
         multiplicand : IN  std_logic_vector(15 downto 0);
         --multiplier : IN  std_logic_vector(15 downto 0);
         sel1 : IN  std_logic_vector(7 downto 0);
         sel2 : IN  std_logic_vector(7 downto 0);
         sign : IN  std_logic_vector(7 downto 0);
         PP0 : OUT  std_logic_vector(16 downto 0);
         PP1 : OUT  std_logic_vector(16 downto 0);
         PP2 : OUT  std_logic_vector(16 downto 0);
         PP3 : OUT  std_logic_vector(16 downto 0);
         PP4 : OUT  std_logic_vector(16 downto 0);
         PP5 : OUT  std_logic_vector(16 downto 0);
         PP6 : OUT  std_logic_vector(16 downto 0);
         PP7 : OUT  std_logic_vector(16 downto 0);
         signs : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal multiplicand : std_logic_vector(15 downto 0) := (others => '0');
   --signal multiplier : std_logic_vector(15 downto 0) := (others => '0');
   signal sel1 : std_logic_vector(7 downto 0) := (others => '0');
   signal sel2 : std_logic_vector(7 downto 0) := (others => '0');
   signal sign : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal PP0 : std_logic_vector(16 downto 0);
   signal PP1 : std_logic_vector(16 downto 0);
   signal PP2 : std_logic_vector(16 downto 0);
   signal PP3 : std_logic_vector(16 downto 0);
   signal PP4 : std_logic_vector(16 downto 0);
   signal PP5 : std_logic_vector(16 downto 0);
   signal PP6 : std_logic_vector(16 downto 0);
   signal PP7 : std_logic_vector(16 downto 0);
   signal signs : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: partialProductGenerator PORT MAP (
          multiplicand => multiplicand,
          --multiplier => multiplier,
          sel1 => sel1,
          sel2 => sel2,
          sign => sign,
          PP0 => PP0,
          PP1 => PP1,
          PP2 => PP2,
          PP3 => PP3,
          PP4 => PP4,
          PP5 => PP5,
          PP6 => PP6,
          PP7 => PP7,
          signs => signs
        );

   -- Clock process definitions


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		multiplicand <= "1010101011110000";
		--multiplier <= "0000000011110000";
		sel1 <= "00010001";
		sel2 <= "00100010";
		sign <= "11110000";


      wait;
   end process;

END;
