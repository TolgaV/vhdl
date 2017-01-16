library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fullAdder is
	Port ( a : in  STD_LOGIC;
		b : in  STD_LOGIC;
		c : in  STD_LOGIC;
		s : out  STD_LOGIC;
		co : out  STD_LOGIC);
end fullAdder;

architecture dataflow of fullAdder is

begin
		s <= a xor b xor c;
		co <= (a and b) or ((a xor b) and c);
end dataflow;