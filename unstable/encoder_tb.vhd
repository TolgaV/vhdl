--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:12:18 01/14/2017
-- Design Name:   
-- Module Name:   C:/Users/TOLGA/Documents/Xilinx/boothMultiplier16b/encoder_tb.vhd
-- Project Name:  boothMultiplier16b
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: encoder
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
 
ENTITY encoder_tb IS
END encoder_tb;
 
ARCHITECTURE behavior OF encoder_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT encoder
    PORT(
         multiplier : IN  std_logic_vector(15 downto 0);
         sel1 : OUT  std_logic_vector(7 downto 0);
         sel2 : OUT  std_logic_vector(7 downto 0);
         sign : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal multiplier : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal sel1 : std_logic_vector(7 downto 0);
   signal sel2 : std_logic_vector(7 downto 0);
   signal sign : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: encoder PORT MAP (
          multiplier => multiplier,
          sel1 => sel1,
          sel2 => sel2,
          sign => sign
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		multiplier <= "1110011110100011";


      -- insert stimulus here 

      wait;
   end process;

END;
