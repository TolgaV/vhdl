----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:32:23 01/15/2017 
-- Design Name: 
-- Module Name:    ppGenerator - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ppGenerator is
    Port ( multiplicand : in  STD_LOGIC_VECTOR (15 downto 0);
           multiplier : in  STD_LOGIC_VECTOR (15 downto 0);
           pp0 : out  STD_LOGIC_VECTOR (16 downto 0);
           pp1 : out  STD_LOGIC_VECTOR (16 downto 0);
           pp2 : out  STD_LOGIC_VECTOR (16 downto 0);
           pp3 : out  STD_LOGIC_VECTOR (16 downto 0);
           pp4 : out  STD_LOGIC_VECTOR (16 downto 0);
           pp5 : out  STD_LOGIC_VECTOR (16 downto 0);
           pp6 : out  STD_LOGIC_VECTOR (16 downto 0);
           pp7 : out  STD_LOGIC_VECTOR (16 downto 0);
           signs : out  STD_LOGIC_VECTOR (7 downto 0);
			  shiftFlag : out STD_LOGIC_VECTOR (7 downto 0));
end ppGenerator;

architecture structural of ppGenerator is

component ppSelector is
	Port (multiplicand : in  STD_LOGIC_VECTOR (15 downto 0); 
         sel1, sel2, sign : in  STD_LOGIC_VECTOR (7 downto 0);
			PP0, PP1,PP2, PP3, PP4, PP5, PP6, PP7 : out  STD_LOGIC_VECTOR (16 downto 0);
         signs : out  STD_LOGIC_VECTOR (7 downto 0);
			shiftFlag : out STD_LOGIC_VECTOR (7 downto 0));
			--signPP--will be later mapped as addition 2's complement bit to proper locations in Carry Save Adder
end component;

component encoder is
    Port ( multiplier : in  STD_LOGIC_VECTOR (15 downto 0);
           sel1 : out  STD_LOGIC_VECTOR (7 downto 0);
           sel2 : out  STD_LOGIC_VECTOR (7 downto 0);
           sign : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

signal select1: std_logic_vector (7 downto 0);
signal select2: std_logic_vector (7 downto 0);
signal signn: std_logic_vector (7 downto 0);

begin

u0 : encoder port map(multiplier, select1, select2, signn);
u1 : ppSelector port map(multiplicand, select1, select2, signn, pp0, pp1, pp2, pp3, pp4, pp5, pp6, pp7, signs, shiftFLAG);

end structural;

