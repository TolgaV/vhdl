library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity multiplierWindow is
    Port ( multiplier: in  STD_LOGIC_VECTOR (15 downto 0);
           window0, window1, window2, window3,
			  window4, window5, window6, window7 
							: out STD_LOGIC_VECTOR (2 downto 0));
			  
end multiplierWindow;

architecture dataflow of multiplierWindow is

begin
--window goes as b(1) b(0) b(-1) where b(-1) is 0
window0(0) 				<= '0';
window0(2 downto 1) 	<= multiplier(1 downto 0);
window1(2 downto 0)	<= multiplier(3 downto 1);
window2(2 downto 0)	<= multiplier(5 downto 3);
window3(2 downto 0)	<= multiplier(7 downto 5);
window4(2 downto 0)	<= multiplier(9 downto 7);
window5(2 downto 0)	<= multiplier(11 downto 9);
window6(2 downto 0)	<= multiplier(13 downto 11);
window7(2 downto 0)	<= multiplier(15 downto 13);

end dataflow;