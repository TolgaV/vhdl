library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity encoder is
    Port ( multiplier : in  STD_LOGIC_VECTOR (15 downto 0);
           sel1 : out  STD_LOGIC_VECTOR (7 downto 0);
           sel2 : out  STD_LOGIC_VECTOR (7 downto 0);
           sign : out  STD_LOGIC_VECTOR (7 downto 0));
end encoder;

architecture structural of encoder is

component multiplierWindow is
    Port ( multiplier: in  STD_LOGIC_VECTOR (15 downto 0);
           window0, window1, window2, window3,
			  window4, window5, window6, window7 
							: out STD_LOGIC_VECTOR (2 downto 0));
end component;

component boothEncoder is
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
end component;

signal mul: std_logic_vector(7 downto 0);
signal win0: std_logic_vector(2 downto 0);
signal win1: std_logic_vector(2 downto 0);
signal win2: std_logic_vector(2 downto 0);
signal win3: std_logic_vector(2 downto 0);
signal win4: std_logic_vector(2 downto 0);
signal win5: std_logic_vector(2 downto 0);
signal win6: std_logic_vector(2 downto 0);
signal win7: std_logic_vector(2 downto 0);

begin

u0: multiplierWindow port map (multiplier, win0, win1, win2, win3, win4, win5, win6, win7);
u1: boothEncoder		port map (win0, win1, win2, win3, win4, win5, win6, win7, sel1, sel2, sign);

end structural;