library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_signed.ALL; 

entity fastAdder32b is
    Port ( inSum : in  STD_LOGIC_VECTOR (31 downto 0);
           inCarry : in  STD_LOGIC_VECTOR (31 downto 0);
           outSum : out  STD_LOGIC_VECTOR (31 downto 0));
end fastAdder32b;

architecture Behavioral of fastAdder32b is

signal outputTrim: STD_LOGIC_VECTOR(32 downto 0):= "000000000000000000000000000000000";

begin

behavioralAddition: process (inSum, inCarry)
		begin
				outputTrim(32 downto 0) <= (inSum(31)&inSum) + (inCarry(31)&inCarry);
				outSum(31 downto 0) <= outputTrim(31 downto 0);
end process;

end Behavioral;




--Piece of Code from Course Slides
--architecture Behavioral of Add8bits is     
-- signal  s_t : STD_LOGIC_VECTOR(8 downto 0); 
-- begin        
-- s_t <= (a(7)&a) + (b(7)&b) + ci;       
-- s <= s_t(7 downto 0);     
-- co <= s_t(8); 
-- end Behavioral; 