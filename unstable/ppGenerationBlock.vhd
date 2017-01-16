----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    06:33:56 01/15/2017 
-- Design Name: 
-- Module Name:    ppGenerationBlock - Behavioral 
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

entity ppGenerationBlock is
    Port ( multiplicand : in  STD_LOGIC_VECTOR (16 downto 0);
           multiplier : in  STD_LOGIC_VECTOR (16 downto 0);
           pp0 : out  STD_LOGIC_VECTOR (31 downto 0);
           pp1 : out  STD_LOGIC_VECTOR (31 downto 0);
           pp2 : out  STD_LOGIC_VECTOR (31 downto 0);
           pp3 : out  STD_LOGIC_VECTOR (31 downto 0);
           pp4 : out  STD_LOGIC_VECTOR (31 downto 0);
           pp5 : out  STD_LOGIC_VECTOR (31 downto 0);
           pp6 : out  STD_LOGIC_VECTOR (31 downto 0);
           pp7 : out  STD_LOGIC_VECTOR (31 downto 0);
           twosBit : out  STD_LOGIC_VECTOR (31 downto 0));
end ppGenerationBlock;

architecture Behavioral of ppGenerationBlock is

begin


end Behavioral;

