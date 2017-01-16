library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity adderTree is
    Port ( in0 : in  STD_LOGIC_VECTOR (31 downto 0);
           in1 : in  STD_LOGIC_VECTOR (31 downto 0);
           in2 : in  STD_LOGIC_VECTOR (31 downto 0);
           in3 : in  STD_LOGIC_VECTOR (31 downto 0);
           in4 : in  STD_LOGIC_VECTOR (31 downto 0);
           in5 : in  STD_LOGIC_VECTOR (31 downto 0);
           in6 : in  STD_LOGIC_VECTOR (31 downto 0);
           in7 : in  STD_LOGIC_VECTOR (31 downto 0);
           in8 : in  STD_LOGIC_VECTOR (31 downto 0);
           outSum : out  STD_LOGIC_VECTOR (31 downto 0);
           outCarry : out  STD_LOGIC_VECTOR (31 downto 0));
end adderTree;

architecture structural of adderTree is

component adderStage1 is
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
end component;

component adderStage2 is
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
end component;

component adderStage3 is
    Port ( infin0s : in  STD_LOGIC_VECTOR (31 downto 0);
           infin0c : in  STD_LOGIC_VECTOR (31 downto 0);
           infin1s : in  STD_LOGIC_VECTOR (31 downto 0);
           infin1c : in  STD_LOGIC_VECTOR (31 downto 0);
           outs : out  STD_LOGIC_VECTOR (31 downto 0);
           outc : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

signal stg1to2_1 : STD_LOGIC_VECTOR (31 downto 0);
signal stg1to2_2 : STD_LOGIC_VECTOR (31 downto 0);
signal stg1to2_3 : STD_LOGIC_VECTOR (31 downto 0);
signal stg1to2_4 : STD_LOGIC_VECTOR (31 downto 0);
signal stg1to2_5 : STD_LOGIC_VECTOR (31 downto 0);
signal stg1to2_6 : STD_LOGIC_VECTOR (31 downto 0);

signal stg2to3_1 : STD_LOGIC_VECTOR (31 downto 0);
signal stg2to3_2 : STD_LOGIC_VECTOR (31 downto 0);
signal stg2to3_3 : STD_LOGIC_VECTOR (31 downto 0);
signal stg2to3_4 : STD_LOGIC_VECTOR (31 downto 0);

begin

u0: adderStage1 port map(in0, in1, in2, in3, in4, in5, in6, in7, in8, stg1to2_1, stg1to2_2, stg1to2_3, stg1to2_4, stg1to2_5, stg1to2_6); 
u1: adderStage2 port map(stg1to2_1, stg1to2_2, stg1to2_3, stg1to2_4, stg1to2_5, stg1to2_6, stg2to3_1, stg2to3_2, stg2to3_3, stg2to3_4);
u2: adderStage3 port map(stg2to3_1, stg2to3_2, stg2to3_3, stg2to3_4, outSum, outCarry);

end structural;

