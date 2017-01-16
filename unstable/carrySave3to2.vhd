library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

 
entity carrySave3to2 is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           C : in  STD_LOGIC_VECTOR (31 downto 0);
           SOUT : out  STD_LOGIC_VECTOR (31 downto 0);
           COUT : out  STD_LOGIC_VECTOR (31 downto 0));
end carrySave3to2;

architecture structural of carrySave3to2 is

component counter3to2 is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           s : out  STD_LOGIC;
           cout : out  STD_LOGIC);
end component;

begin
u0 :  counter3to2 port map (A(0),  B(0),  C(0),  SOUT(0),  COUT(0));
u1 :  counter3to2 port map (A(1),  B(1),  C(1),  SOUT(1),  COUT(1));
u2 :  counter3to2 port map (A(2),  B(2),  C(2),  SOUT(2),  COUT(2));
u3 :  counter3to2 port map (A(3),  B(3),  C(3),  SOUT(3),  COUT(3));
u4 :  counter3to2 port map (A(4),  B(4),  C(4),  SOUT(4),  COUT(4));
u5 :  counter3to2 port map (A(5),  B(5),  C(5),  SOUT(5),  COUT(5));
u6 :  counter3to2 port map (A(6),  B(6),  C(6),  SOUT(6),  COUT(6));
u7 :  counter3to2 port map (A(7),  B(7),  C(7),  SOUT(7),  COUT(7));
u8 :  counter3to2 port map (A(8),  B(8),  C(8),  SOUT(8),  COUT(8));
u9 :  counter3to2 port map (A(9),  B(9),  C(9),  SOUT(9),  COUT(9));
u10 : counter3to2 port map (A(10), B(10), C(10), SOUT(10), COUT(10));
u11 : counter3to2 port map (A(11), B(11), C(11), SOUT(11), COUT(11));
u12 : counter3to2 port map (A(12), B(12), C(12), SOUT(12), COUT(12));
u13 : counter3to2 port map (A(13), B(13), C(13), SOUT(13), COUT(13));
u14 : counter3to2 port map (A(14), B(14), C(14), SOUT(14), COUT(14));
u15 : counter3to2 port map (A(15), B(15), C(15), SOUT(15), COUT(15));
u16 : counter3to2 port map (A(16), B(16), C(16), SOUT(16), COUT(16));
u17 : counter3to2 port map (A(17), B(17), C(17), SOUT(17), COUT(17));
u18 : counter3to2 port map (A(18), B(18), C(18), SOUT(18), COUT(18));
u19 : counter3to2 port map (A(19), B(19), C(19), SOUT(19), COUT(19));
u20 : counter3to2 port map (A(20), B(20), C(20), SOUT(20), COUT(20));
u21 : counter3to2 port map (A(21), B(21), C(21), SOUT(21), COUT(21));
u22 : counter3to2 port map (A(22), B(22), C(22), SOUT(22), COUT(22));
u23 : counter3to2 port map (A(23), B(23), C(23), SOUT(23), COUT(23));
u24 : counter3to2 port map (A(24), B(24), C(24), SOUT(24), COUT(24));
u25 : counter3to2 port map (A(25), B(25), C(25), SOUT(25), COUT(25));
u26 : counter3to2 port map (A(26), B(26), C(26), SOUT(26), COUT(26));
u27 : counter3to2 port map (A(27), B(27), C(27), SOUT(27), COUT(27));
u28 : counter3to2 port map (A(28), B(28), C(28), SOUT(28), COUT(28));
u29 : counter3to2 port map (A(29), B(29), C(29), SOUT(29), COUT(29));
u30 : counter3to2 port map (A(30), B(30), C(30), SOUT(30), COUT(30));
u31 : counter3to2 port map (A(31), B(31), C(31), SOUT(31), COUT(31));

end structural;

