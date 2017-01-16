library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity boothEncoder is
    Port ( window0 : in  STD_LOGIC_VECTOR (2 downto 0);
           window1 : in  STD_LOGIC_VECTOR (2 downto 0);
           window2 : in  STD_LOGIC_VECTOR (2 downto 0);
           window3 : in  STD_LOGIC_VECTOR (2 downto 0);
           window4 : in  STD_LOGIC_VECTOR (2 downto 0);
           window5 : in  STD_LOGIC_VECTOR (2 downto 0);
           window6 : in  STD_LOGIC_VECTOR (2 downto 0);
           window7 : in  STD_LOGIC_VECTOR (2 downto 0);
           sel1 : out  STD_LOGIC_VECTOR (7 downto 0);
           sel2 : out  STD_LOGIC_VECTOR (7 downto 0);
           sign : out  STD_LOGIC_VECTOR (7 downto 0));
end boothEncoder;

architecture dataflow of boothEncoder is

begin

sel1(0) <= window0(0) xor window0(1);
sel2(0) <= ((window0(0) and window0(1)) and (not window0(2))) or (not window0(0) and not window0(1) and window0(2));
sign(0) <= window0(2);

sel1(1) <= window1(0) xor window1(1);
sel2(1) <= ((window1(0) and window1(1)) and (not window1(2))) or (not window1(0) and not window1(1) and window1(2));
sign(1) <= window1(2);

sel1(2) <= window2(0) xor window2(1);
sel2(2) <= ((window2(0) and window2(1)) and (not window2(2))) or (not window2(0) and not window2(1) and window2(2));
sign(2) <= window2(2);

sel1(3) <= window3(0) xor window3(1);
sel2(3) <= ((window3(0) and window3(1)) and (not window3(2))) or (not window3(0) and not window3(1) and window3(2));
sign(3) <= window3(2);

sel1(4) <= window4(0) xor window4(1);
sel2(4) <= ((window4(0) and window4(1)) and (not window4(2))) or (not window4(0) and not window4(1) and window4(2));
sign(4) <= window4(2);

sel1(5) <= window5(0) xor window5(1);
sel2(5) <= ((window5(0) and window5(1)) and (not window5(2))) or (not window5(0) and not window5(1) and window5(2));
sign(5) <= window5(2);

sel1(6) <= window6(0) xor window6(1);
sel2(6) <= ((window6(0) and window6(1)) and (not window6(2))) or (not window6(0) and not window6(1) and window6(2));
sign(6) <= window6(2);

sel1(7) <= window7(0) xor window7(1);
sel2(7) <= ((window7(0) and window7(1)) and (not window7(2))) or (not window7(0) and not window7(1) and window7(2));
sign(7) <= window7(2);

end dataflow;

