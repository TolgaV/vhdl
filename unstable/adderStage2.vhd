library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity adderStage2 is
    Port ( m0s : in  STD_LOGIC_VECTOR (31 downto 0);
           m0c : in  STD_LOGIC_VECTOR (31 downto 0);
           m1s : in  STD_LOGIC_VECTOR (31 downto 0);
           m1c : in  STD_LOGIC_VECTOR (31 downto 0);
           m2s : in  STD_LOGIC_VECTOR (31 downto 0);
           m2c : in  STD_LOGIC_VECTOR (31 downto 0);
           mfin0s : out  STD_LOGIC_VECTOR (31 downto 0);
           mfin0c : out  STD_LOGIC_VECTOR (31 downto 0);
           mfin1s : out  STD_LOGIC_VECTOR (31 downto 0);
           mfin1c : out  STD_LOGIC_VECTOR (31 downto 0));
end adderStage2;

architecture hybrid of adderStage2 is

component carrySave3to2 is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           C : in  STD_LOGIC_VECTOR (31 downto 0);
           SOUT : out  STD_LOGIC_VECTOR (31 downto 0);
           COUT : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

signal carryOVtrim0 : STD_LOGIC_VECTOR(31 downto 0) := "00000000000000000000000000000000";
signal carryOVtrim1 : STD_LOGIC_VECTOR(31 downto 0) := "00000000000000000000000000000000";
signal carryOVtrim2 : STD_LOGIC_VECTOR(31 downto 0) := "00000000000000000000000000000000";


begin

carryOVtrim0(31 downto 1) <= m0c(30 downto 0);
carryOVtrim1(31 downto 1) <= m1c(30 downto 0);
carryOVtrim2(31 downto 1) <= m2c(30 downto 0);

u0 : carrySave3to2 port map(m0s, carryOVtrim0, m1s				, mfin0s, mfin0c);
u1 : carrySave3to2 port map(carryOVtrim1, m2s, carryOVtrim2 , mfin1s, mfin1c);

end hybrid;

