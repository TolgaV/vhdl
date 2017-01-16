library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity counter4to2 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           d : in  STD_LOGIC;
			  ti: in  STD_LOGIC;
			  t_o: out  STD_LOGIC;
           cout : out  STD_LOGIC;
           s : out  STD_LOGIC);
end counter4to2;

architecture structural of counter4to2 is

component fullAdder is
	Port ( a : in  STD_LOGIC;
		b : in  STD_LOGIC;
		c : in  STD_LOGIC;
		s : out  STD_LOGIC;
		co : out  STD_LOGIC);
end component;

signal s1: STD_LOGIC;

begin
u0: fullAdder port map(a,b,c,s1,t_o);
u1: fullAdder port map(ti,s1,d,s,cout);

end structural;