
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity adderStage1 is
    Port ( pr0 : in  STD_LOGIC_VECTOR (31 downto 0);
           pr1 : in  STD_LOGIC_VECTOR (31 downto 0);
           pr2 : in  STD_LOGIC_VECTOR (31 downto 0);
           pr3 : in  STD_LOGIC_VECTOR (31 downto 0);
           pr4 : in  STD_LOGIC_VECTOR (31 downto 0);
           pr5 : in  STD_LOGIC_VECTOR (31 downto 0);
           pr6 : in  STD_LOGIC_VECTOR (31 downto 0);
           pr7 : in  STD_LOGIC_VECTOR (31 downto 0);
           twosComp : in  STD_LOGIC_VECTOR (31 downto 0);
           mid0s : out  STD_LOGIC_VECTOR (31 downto 0);
           mid0c : out  STD_LOGIC_VECTOR (31 downto 0);
           mid1s : out  STD_LOGIC_VECTOR (31 downto 0);
           mid1c : out  STD_LOGIC_VECTOR (31 downto 0);
           mid2s : out  STD_LOGIC_VECTOR (31 downto 0);
           mid2c : out  STD_LOGIC_VECTOR (31 downto 0));
end adderStage1;

architecture structural of adderStage1 is

component carrySave3to2 is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           C : in  STD_LOGIC_VECTOR (31 downto 0);
           SOUT : out  STD_LOGIC_VECTOR (31 downto 0);
           COUT : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

begin

u0 : carrySave3to2 port map (pr0, pr1, pr2, mid0s, mid0c);
u1 : carrySave3to2 port map (pr3, pr4, pr5, mid1s, mid1c);
u2 : carrySave3to2 port map (pr6, pr7, twosComp, mid2s, mid2c);

end structural;

