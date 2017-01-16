library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity partialProductGenerator is
	Port (multiplicand : in  STD_LOGIC_VECTOR (15 downto 0); 
			--multiplier : in  STD_LOGIC_VECTOR (15 downto 0);
         sel1 : in  STD_LOGIC_VECTOR (7 downto 0);
         sel2 : in  STD_LOGIC_VECTOR (7 downto 0);
         sign : in  STD_LOGIC_VECTOR (7 downto 0);
			PP0 : out  STD_LOGIC_VECTOR (16 downto 0);
			PP1 : out  STD_LOGIC_VECTOR (16 downto 0);
         PP2 : out  STD_LOGIC_VECTOR (16 downto 0);
         PP3 : out  STD_LOGIC_VECTOR (16 downto 0);
         PP4 : out  STD_LOGIC_VECTOR (16 downto 0);
         PP5 : out  STD_LOGIC_VECTOR (16 downto 0);
         PP6 : out  STD_LOGIC_VECTOR (16 downto 0);
         PP7 : out  STD_LOGIC_VECTOR (16 downto 0);
         signs : out  STD_LOGIC_VECTOR (7 downto 0)); --signPP--will be later mapped as addition 2's complement bit to proper locations in Carry Save Adder
end partialProductGenerator;

architecture behavioral of partialProductGenerator is

signal zero: std_logic_vector(15 downto 0) := "0000000000000000";

begin
ppGen: process (multiplicand, sel1, sel2, sign)
	variable i : integer;
	begin
	i := 0;
	PP0 <= "00000000000000000";
	PP1 <= "00000000000000000";
	PP2 <= "00000000000000000";
	PP3 <= "00000000000000000";
	PP4 <= "00000000000000000";
	PP5 <= "00000000000000000";
	PP6 <= "00000000000000000";
	PP7 <= "00000000000000000";
	signs <= "00000000";
	ppLoop: for ctr in 0 to 7 loop
			
			
			if (sign(i) = '0') then
			--case sel1=0 sel2=0 : zero TOTALLY REDUNDANT BRANCH
					if ((sel1(i) = '0') and ((sel2(i) = '0'))) then
							if (i = 0) then
								pp0(15 downto 0) <= zero(15 downto 0);
							elsif (i = 1) then
								pp1(15 downto 0) <= zero(15 downto 0);
							elsif (i = 2) then
								pp2(15 downto 0) <= zero(15 downto 0);
							elsif (i = 3) then
								pp3(15 downto 0) <= zero(15 downto 0);
							elsif (i = 4) then
								pp4(15 downto 0) <= zero(15 downto 0);
							elsif (i = 5) then
								pp5(15 downto 0) <= zero(15 downto 0);
							elsif (i = 6) then
								pp6(15 downto 0) <= zero(15 downto 0);
							elsif (i = 7) then
								pp7(15 downto 0) <= zero(15 downto 0);
							end if;
			--case sel1=1 sel2=0 : transfer
					elsif ((sel1(i) = '1') and ((sel2(i) = '0'))) then
							if (i = 0) then
								pp0(15 downto 0) <= multiplicand(15 downto 0);
							elsif (i = 1) then
								pp1(15 downto 0) <= multiplicand(15 downto 0);
							elsif (i = 2) then
								pp2(15 downto 0) <= multiplicand(15 downto 0);
							elsif (i = 3) then
								pp3(15 downto 0) <= multiplicand(15 downto 0);
							elsif (i = 4) then
								pp4(15 downto 0) <= multiplicand(15 downto 0);
							elsif (i = 5) then
								pp5(15 downto 0) <= multiplicand(15 downto 0);
							elsif (i = 6) then
								pp6(15 downto 0) <= multiplicand(15 downto 0);
							elsif (i = 7) then
								pp7(15 downto 0) <= multiplicand(15 downto 0);
							end if;
			--case sel1=0 sel2=1 : shift
					elsif ((sel1(i) = '0') and ((sel2(i) = '1'))) then
							if (i = 0) then
								pp0(16 downto 1) <= multiplicand(15 downto 0);
							elsif (i = 1) then
								pp1(16 downto 1) <= multiplicand(15 downto 0); --possible to use (others => '0');
							elsif (i = 2) then
								pp2(16 downto 1) <= multiplicand(15 downto 0);
							elsif (i = 3) then
								pp3(16 downto 1) <= multiplicand(15 downto 0);
							elsif (i = 4) then
								pp4(16 downto 1) <= multiplicand(15 downto 0);
							elsif (i = 5) then
								pp5(16 downto 1) <= multiplicand(15 downto 0);
							elsif (i = 6) then
								pp6(16 downto 1) <= multiplicand(15 downto 0);
							elsif (i = 7) then
								pp7(16 downto 1) <= multiplicand(15 downto 0);
							end if;
					end if;
					
			--case where sign is 1
			elsif (sign(i) = '1') then
					if ((sel1(i) = '0') and ((sel2(i) = '0'))) then
							if (i = 0) then
								pp0(15 downto 0) <= zero(15 downto 0);
							elsif (i = 1) then
								pp1(15 downto 0) <= zero(15 downto 0);
							elsif (i = 2) then
								pp2(15 downto 0) <= zero(15 downto 0);
							elsif (i = 3) then
								pp3(15 downto 0) <= zero(15 downto 0);
							elsif (i = 4) then
								pp4(15 downto 0) <= zero(15 downto 0);
							elsif (i = 5) then
								pp5(15 downto 0) <= zero(15 downto 0);
							elsif (i = 6) then
								pp6(15 downto 0) <= zero(15 downto 0);
							elsif (i = 7) then
								pp7(15 downto 0) <= zero(15 downto 0);
							end if;
			--case sel1=1 sel2=0 : transfer negative
					elsif ((sel1(i) = '1') and ((sel2(i) = '0'))) then
							if (i = 0) then
								pp0(15 downto 0) <= not multiplicand(15 downto 0);
								signs(i) <= '1';
							elsif (i = 1) then
								pp1(15 downto 0) <= not multiplicand(15 downto 0);
								signs(i) <= '1';
							elsif (i = 2) then
								pp2(15 downto 0) <= not multiplicand(15 downto 0);
								signs(i) <= '1';
							elsif (i = 3) then
								pp3(15 downto 0) <= not multiplicand(15 downto 0);
								signs(i) <= '1';
							elsif (i = 4) then
								pp4(15 downto 0) <= not multiplicand(15 downto 0);
								signs(i) <= '1';
							elsif (i = 5) then
								pp5(15 downto 0) <= not multiplicand(15 downto 0);
								signs(i) <= '1';
							elsif (i = 6) then
								pp6(15 downto 0) <= not multiplicand(15 downto 0);
								signs(i) <= '1';
							elsif (i = 7) then
								pp7(15 downto 0) <= not multiplicand(15 downto 0);
								signs(i) <= '1';
							end if;
			--case sel1=0 sel2=1 : shift negative
					elsif ((sel1(i) = '0') and ((sel2(i) = '1'))) then
							if (i = 0) then
								pp0(16 downto 1) <= not multiplicand(15 downto 0);
								pp0(0) <= '1';
							elsif (i = 1) then
								pp1(16 downto 1) <= not multiplicand(15 downto 0);
								pp1(0) <= '1';
							elsif (i = 2) then
								pp2(16 downto 1) <= not multiplicand(15 downto 0);
								pp2(0) <= '1';
							elsif (i = 3) then
								pp3(16 downto 1) <= not multiplicand(15 downto 0);
								pp3(0) <= '1';
							elsif (i = 4) then
								pp4(16 downto 1) <= not multiplicand(15 downto 0);
								pp4(0) <= '1';
							elsif (i = 5) then
								pp5(16 downto 1) <= not multiplicand(15 downto 0);
								pp5(0) <= '1';
							elsif (i = 6) then
								pp6(16 downto 1) <= not multiplicand(15 downto 0);
								pp6(0) <= '1';
							elsif (i = 7) then
								pp7(16 downto 1) <= not multiplicand(15 downto 0);
								pp7(0) <= '1';
							end if;
					end if;
			end if;
			i := i+1;
	end loop;
end process;
end behavioral;