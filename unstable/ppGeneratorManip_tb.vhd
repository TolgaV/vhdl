
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY ppGeneratorManip_tb IS
END ppGeneratorManip_tb;
 
ARCHITECTURE behavior OF ppGeneratorManip_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ppGeneratorManip
    PORT(
         pp0 : IN  std_logic_vector(16 downto 0);
         pp1 : IN  std_logic_vector(16 downto 0);
         pp2 : IN  std_logic_vector(16 downto 0);
         pp3 : IN  std_logic_vector(16 downto 0);
         pp4 : IN  std_logic_vector(16 downto 0);
         pp5 : IN  std_logic_vector(16 downto 0);
         pp6 : IN  std_logic_vector(16 downto 0);
         pp7 : IN  std_logic_vector(16 downto 0);
         signs : IN  std_logic_vector(7 downto 0);
         shiftFLAG : IN  std_logic_vector(7 downto 0);
         P0 : OUT  std_logic_vector(31 downto 0);
         P1 : OUT  std_logic_vector(31 downto 0);
         P2 : OUT  std_logic_vector(31 downto 0);
         P3 : OUT  std_logic_vector(31 downto 0);
         P4 : OUT  std_logic_vector(31 downto 0);
         P5 : OUT  std_logic_vector(31 downto 0);
         P6 : OUT  std_logic_vector(31 downto 0);
         P7 : OUT  std_logic_vector(31 downto 0);
         twosCompOnes : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal pp0 : std_logic_vector(16 downto 0) := (others => '0');
   signal pp1 : std_logic_vector(16 downto 0) := (others => '0');
   signal pp2 : std_logic_vector(16 downto 0) := (others => '0');
   signal pp3 : std_logic_vector(16 downto 0) := (others => '0');
   signal pp4 : std_logic_vector(16 downto 0) := (others => '0');
   signal pp5 : std_logic_vector(16 downto 0) := (others => '0');
   signal pp6 : std_logic_vector(16 downto 0) := (others => '0');
   signal pp7 : std_logic_vector(16 downto 0) := (others => '0');
   signal signs : std_logic_vector(7 downto 0) := (others => '0');
   signal shiftFLAG : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal P0 : std_logic_vector(31 downto 0);
   signal P1 : std_logic_vector(31 downto 0);
   signal P2 : std_logic_vector(31 downto 0);
   signal P3 : std_logic_vector(31 downto 0);
   signal P4 : std_logic_vector(31 downto 0);
   signal P5 : std_logic_vector(31 downto 0);
   signal P6 : std_logic_vector(31 downto 0);
   signal P7 : std_logic_vector(31 downto 0);
   signal twosCompOnes : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ppGeneratorManip PORT MAP (
          pp0 => pp0,
          pp1 => pp1,
          pp2 => pp2,
          pp3 => pp3,
          pp4 => pp4,
          pp5 => pp5,
          pp6 => pp6,
          pp7 => pp7,
          signs => signs,
          shiftFLAG => shiftFLAG,
          P0 => P0,
          P1 => P1,
          P2 => P2,
          P3 => P3,
          P4 => P4,
          P5 => P5,
          P6 => P6,
          P7 => P7,
          twosCompOnes => twosCompOnes
        );



   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

		pp0 <= "00000000111100000";
		pp1 <= "00000000011110000";
		pp2 <= "11111111111111111";
		pp3 <= "11111111111111111";
		pp4 <= "01111111100001111";
		pp5 <= "11111111111111111";
		pp6 <= "00000000011110000";
		pp7 <= "01111111100001111";
		signs <= "10010000";
		shiftFLAG <= "00100101";
      -- insert stimulus here 

      wait;
   end process;

END;
