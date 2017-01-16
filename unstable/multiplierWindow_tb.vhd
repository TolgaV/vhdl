
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY multiplierWindow_tb IS
END multiplierWindow_tb;
 
ARCHITECTURE behavior OF multiplierWindow_tb IS 
 
 
    COMPONENT multiplierWindow
    PORT(
         multiplier : IN  std_logic_vector(15 downto 0);
         window0 : OUT  std_logic_vector(2 downto 0);
         window1 : OUT  std_logic_vector(2 downto 0);
         window2 : OUT  std_logic_vector(2 downto 0);
         window3 : OUT  std_logic_vector(2 downto 0);
         window4 : OUT  std_logic_vector(2 downto 0);
         window5 : OUT  std_logic_vector(2 downto 0);
         window6 : OUT  std_logic_vector(2 downto 0);
         window7 : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal multiplier : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal window0 : std_logic_vector(2 downto 0);
   signal window1 : std_logic_vector(2 downto 0);
   signal window2 : std_logic_vector(2 downto 0);
   signal window3 : std_logic_vector(2 downto 0);
   signal window4 : std_logic_vector(2 downto 0);
   signal window5 : std_logic_vector(2 downto 0);
   signal window6 : std_logic_vector(2 downto 0);
   signal window7 : std_logic_vector(2 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: multiplierWindow PORT MAP (
          multiplier => multiplier,
          window0 => window0,
          window1 => window1,
          window2 => window2,
          window3 => window3,
          window4 => window4,
          window5 => window5,
          window6 => window6,
          window7 => window7
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
