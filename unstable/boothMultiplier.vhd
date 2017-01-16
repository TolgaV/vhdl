----------------------------------------------------------------------------------
--16-Bit Radix-4 Boot Multiplier
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity boothMultiplier is
    Port ( multiplicand : in  STD_LOGIC_VECTOR (15 downto 0);
           multiplier : in  STD_LOGIC_VECTOR (15 downto 0);
           pp0 : out  STD_LOGIC_VECTOR (31 downto 0);
           pp1 : out  STD_LOGIC_VECTOR (31 downto 0);
           pp2 : out  STD_LOGIC_VECTOR (31 downto 0);
           pp3 : out  STD_LOGIC_VECTOR (31 downto 0);
           pp4 : out  STD_LOGIC_VECTOR (31 downto 0);
           pp5 : out  STD_LOGIC_VECTOR (31 downto 0);
           pp6 : out  STD_LOGIC_VECTOR (31 downto 0);
           pp7 : out  STD_LOGIC_VECTOR (31 downto 0);
           twosCompBits : out  STD_LOGIC_VECTOR (31 downto 0));
end boothMultiplier;

architecture structural of boothMultiplier is

component ppGenerator is
    Port ( multiplicand : in  STD_LOGIC_VECTOR (15 downto 0);
           multiplier : in  STD_LOGIC_VECTOR (15 downto 0);
           pp0, pp1, pp2, pp3, pp4, pp5, pp6, pp7 : out  STD_LOGIC_VECTOR (16 downto 0);
           signs : out  STD_LOGIC_VECTOR (7 downto 0);
			  shiftFlag : out STD_LOGIC_VECTOR (7 downto 0));
end component;

component ppGeneratorManip is
    Port ( pp0, pp1, pp2, pp3, pp4, pp5, pp6, pp7 : in  STD_LOGIC_VECTOR (16 downto 0);
           signs : in  	STD_LOGIC_VECTOR (7 downto 0);	--SIGN(i) belongs to PP(i) and also we can use this for SE
			  shiftFLAG : in STD_LOGIC_VECTOR (7 downto 0);
			  P0, P1, P2, P3, P4, P5, P6, P7 : out 		STD_LOGIC_VECTOR (31 downto 0);
			  twosCompOnes : out	STD_LOGIC_VECTOR (31 downto 0));
end component;

signal sp0, sp1, sp2, sp3, sp4, sp5, sp6, sp7 : STD_LOGIC_VECTOR(16 downto 0);
signal ssig, sflag : STD_LOGIC_VECTOR(7 downto 0);

begin

--ssig <= "11110000";
u0 : ppGeneratorManip 	port map(sp0, sp1, sp2, sp3, sp4, sp5, sp6, sp7, ssig, sflag, pp0, pp1, pp2, pp3, pp4, pp5, pp6, pp7, twosCompBits);
--u1 : ppGenerator 			port map(multiplicand, multiplier, sp0, sp1, sp2, sp3, sp4, sp5, sp6, sp7, ssig, sflag);
u1 : ppGenerator 			port map(multiplicand, multiplier, sp0, sp1, sp2, sp3, sp4, sp5, sp6, sp7, ssig, sflag);

end structural;

