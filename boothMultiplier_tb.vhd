
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY boothMultiplier_tb IS
END boothMultiplier_tb;
 
ARCHITECTURE behavior OF boothMultiplier_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT boothMultiplier
    PORT(
         multiplicand : IN  std_logic_vector(15 downto 0);
         multiplier : IN  std_logic_vector(15 downto 0);
         pp0 : OUT  std_logic_vector(31 downto 0);
         pp1 : OUT  std_logic_vector(31 downto 0);
         pp2 : OUT  std_logic_vector(31 downto 0);
         pp3 : OUT  std_logic_vector(31 downto 0);
         pp4 : OUT  std_logic_vector(31 downto 0);
         pp5 : OUT  std_logic_vector(31 downto 0);
         pp6 : OUT  std_logic_vector(31 downto 0);
         pp7 : OUT  std_logic_vector(31 downto 0);
         twosCompBits : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal multiplicand : std_logic_vector(15 downto 0) := (others => '0');
   signal multiplier : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal pp0 : std_logic_vector(31 downto 0);
   signal pp1 : std_logic_vector(31 downto 0);
   signal pp2 : std_logic_vector(31 downto 0);
   signal pp3 : std_logic_vector(31 downto 0);
   signal pp4 : std_logic_vector(31 downto 0);
   signal pp5 : std_logic_vector(31 downto 0);
   signal pp6 : std_logic_vector(31 downto 0);
   signal pp7 : std_logic_vector(31 downto 0);
   signal twosCompBits : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: boothMultiplier PORT MAP (
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
          twosCompBits => twosCompBits
        );



   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		multiplicand <= "1000100111110000";
		multiplier <= "0000000011110000";
      -- insert stimulus here 

      wait;
   end process;

END;
