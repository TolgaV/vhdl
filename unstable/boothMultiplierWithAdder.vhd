library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity boothMultiplierWithAdder is
    Port ( multiplicand : in  STD_LOGIC_VECTOR (15 downto 0);
           multiplier : in  STD_LOGIC_VECTOR (15 downto 0);
           product : out  STD_LOGIC_VECTOR (31 downto 0));
end boothMultiplierWithAdder;

architecture structural of boothMultiplierWithAdder is

component boothMultiplier is	--name should be partial product generator but too late..
    Port ( multiplicand : in  STD_LOGIC_VECTOR (15 downto 0);
           multiplier : in  STD_LOGIC_VECTOR (15 downto 0);
           pp0 : out  STD_LOGIC_VECTOR (31 downto 0);
           pp1 : out  STD_LOGIC_VECTOR (31 downto 0);
           pp2 : out  STD_LOGIC_VECTOR (31 downto 0);
           pp3 : out  STD_LOGIC_VECTOR (31 downto 0);
           pp4 : out  STD_LOGIC_VECTOR (31 downto 0);
           pp5 : out  STD_LOGIC_VECTOR (31 downto 0);
           pp6 : out  STD_LOGIC_VECTOR (31 downto 0);
           pp7 : out  STD_LOGIC_VECTOR (31 downto 0);
           twosCompBits : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component adderTree is
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
end component;

component fastAdder32b is
    Port ( inSum : in  STD_LOGIC_VECTOR (31 downto 0);
           inCarry : in  STD_LOGIC_VECTOR (31 downto 0);
           outSum : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

signal par0: STD_LOGIC_VECTOR(31 downto 0);
signal par1: STD_LOGIC_VECTOR(31 downto 0);
signal par2: STD_LOGIC_VECTOR(31 downto 0);
signal par3: STD_LOGIC_VECTOR(31 downto 0);
signal par4: STD_LOGIC_VECTOR(31 downto 0);
signal par5: STD_LOGIC_VECTOR(31 downto 0);
signal par6: STD_LOGIC_VECTOR(31 downto 0);
signal par7: STD_LOGIC_VECTOR(31 downto 0);
signal twos: STD_LOGIC_VECTOR(31 downto 0);

signal symSum: STD_LOGIC_VECTOR(31 downto 0);
signal symCarry: STD_LOGIC_VECTOR(31 downto 0);

begin

u0 : boothMultiplier port map(multiplicand, multiplier, par0, par1, par2, par3, par4, par5, par6, par7, twos);
u1 : adderTree port map(par0, par1, par2, par3, par4, par5, par6, par7, twos, symSum, symCarry);
u2 : fastAdder32b port map(symSum, symCarry, product);

end structural;