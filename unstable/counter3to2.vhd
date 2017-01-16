library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity counter3to2 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           s : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end counter3to2;

architecture structural of counter3to2 is

component fullAdder is
	Port ( a : in  STD_LOGIC;
		b : in  STD_LOGIC;
		c : in  STD_LOGIC;
		s : out  STD_LOGIC;
		co : out  STD_LOGIC);
end component;

begin
u0: fullAdder port map(a,b,c,s,cout);

end structural;