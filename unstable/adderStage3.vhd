library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity adderStage3 is
    Port ( infin0s : in  STD_LOGIC_VECTOR (31 downto 0);
           infin0c : in  STD_LOGIC_VECTOR (31 downto 0);
           infin1s : in  STD_LOGIC_VECTOR (31 downto 0);
           infin1c : in  STD_LOGIC_VECTOR (31 downto 0);
           outs : out  STD_LOGIC_VECTOR (31 downto 0);
           outc : out  STD_LOGIC_VECTOR (31 downto 0));
end adderStage3;

architecture Behavioral of adderStage3 is

component carrySave4to2 is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           C : in  STD_LOGIC_VECTOR (31 downto 0);
           D : in  STD_LOGIC_VECTOR (31 downto 0);
           SOUT : out  STD_LOGIC_VECTOR (31 downto 0);
           COUT : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

signal carryOVtrim0 : STD_LOGIC_VECTOR(31 downto 0) := "00000000000000000000000000000000";
signal carryOVtrim1 : STD_LOGIC_VECTOR(31 downto 0) := "00000000000000000000000000000000";

begin

carryOVtrim0(31 downto 1) <= infin0c(30 downto 0);
carryOVtrim1(31 downto 1) <= infin1c(30 downto 0);

u0 : carrySave4to2 port map (infin0s, carryOVtrim0, infin1s, carryOVtrim1, outs, outc);

end Behavioral;