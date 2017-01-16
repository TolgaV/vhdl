----------------------------------------------------------------------------------
--THIS MODULE IS FOR SIGN EXTENSION, SHIFTING, AND ADDING THE 2S COMPLEMENT 1 BITS FOR PREPARING
--THE PARTIAL PRODUCTS FOR CARRY SAVE ADDER NETWORK
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ppGeneratorManip is
    Port ( pp0 : in  	STD_LOGIC_VECTOR (16 downto 0);
           pp1 : in  	STD_LOGIC_VECTOR (16 downto 0);
           pp2 : in  	STD_LOGIC_VECTOR (16 downto 0);
           pp3 : in  	STD_LOGIC_VECTOR (16 downto 0);
           pp4 : in  	STD_LOGIC_VECTOR (16 downto 0);
           pp5 : in  	STD_LOGIC_VECTOR (16 downto 0);
           pp6 : in 	 	STD_LOGIC_VECTOR (16 downto 0);
           pp7 : in  	STD_LOGIC_VECTOR (16 downto 0);
           signs : in  	STD_LOGIC_VECTOR (7 downto 0);	--SIGN(i) belongs to PP(i) and also we can use this for SE
			  shiftFLAG : in STD_LOGIC_VECTOR (7 downto 0);
			  P0 : out 		STD_LOGIC_VECTOR (31 downto 0);
			  P1 : out 		STD_LOGIC_VECTOR (31 downto 0);
			  P2 : out 		STD_LOGIC_VECTOR (31 downto 0);
			  P3 : out 		STD_LOGIC_VECTOR (31 downto 0);
			  P4 : out 		STD_LOGIC_VECTOR (31 downto 0);
			  P5 : out 		STD_LOGIC_VECTOR (31 downto 0);
			  P6 : out 		STD_LOGIC_VECTOR (31 downto 0);
			  P7 : out 		STD_LOGIC_VECTOR (31 downto 0);
			  twosCompOnes : out	STD_LOGIC_VECTOR (31 downto 0));
end ppGeneratorManip;

architecture hybrid of ppGeneratorManip is

signal SP0,SP1,SP2,SP3,SP4,SP5,SP6,SP7: STD_LOGIC_VECTOR(31 downto 0) := "00000000000000000000000000000000";
signal SE0 : STD_LOGIC_VECTOR(14 downto 0);
signal SE1 : STD_LOGIC_VECTOR(12 downto 0);
signal SE2 : STD_LOGIC_VECTOR(10 downto 0);
signal SE3 : STD_LOGIC_VECTOR(8 downto 0);
signal SE4 : STD_LOGIC_VECTOR(6 downto 0);
signal SE5 : STD_LOGIC_VECTOR(4 downto 0);
signal SE6 : STD_LOGIC_VECTOR(2 downto 0);
signal SE7 : STD_LOGIC;
begin

signExtension: process (shiftFLAG)
		variable i : integer;
		variable k : integer;
		begin
		i:= 0;
		k:= 0;
				seLoop: for ctr in 0 to 7 loop
						if (shiftFLAG(i)) = '0' then
								if (signs(i)) = '0' then
										if (i = 0) then
												SE0(14 downto 0) <= "000000000000000";
												SP0(31 downto 17) <= SE0(14 downto 0);
												SP0(16) <= shiftFLAG(i);
										elsif (i = 1) then
												SE1(12 downto 0) <= "0000000000000";
												SP1(31 downto 19) <= SE1(12 downto 0);
												SP1(18) <= shiftFLAG(i);
										elsif (i = 2) then
												SE2(10 downto 0) <= "00000000000";
												SP2(31 downto 21) <= SE2(10 downto 0);
												SP2(20) <= shiftFLAG(i);
										elsif (i = 3) then
												SE3(8 downto 0) <= "000000000";
												SP3(31 downto 23) <= SE3(8 downto 0);
												SP3(22) <= shiftFLAG(i);
										elsif (i = 4) then
												SE4(6 downto 0) <= "0000000";
												SP4(31 downto 25) <= SE4(6 downto 0);
												SP4(24) <= shiftFLAG(i);
										elsif (i = 5) then
												SE5(4 downto 0) <= "00000";
												SP5(31 downto 27) <= SE5(4 downto 0);
												SP5(26) <= shiftFLAG(i);
										elsif (i = 6) then
												SE6(2 downto 0) <= "000";
												SP6(31 downto 29) <= SE6(2 downto 0);
												SP6(28) <= shiftFLAG(i);
										elsif (i = 7) then
												SE7 <= '0';
												SP7(31) <= SE7;
												SP7(30) <= shiftFLAG(i);
										end if;
								elsif (signs(i)) = '1' then
										if (i = 0) then
												SE0(14 downto 0) <= "111111111111111";
												SP0(31 downto 17) <= SE0(14 downto 0);
												SP0(16) <= '1';
										elsif (i = 1) then
												SE1(12 downto 0) <= "1111111111111";
												SP1(31 downto 19) <= SE1(12 downto 0);
												SP1(18) <= '1';
										elsif (i = 2) then
												SE2(10 downto 0) <= "11111111111";
												SP2(31 downto 21) <= SE2(10 downto 0);
												SP2(20) <= '1';
										elsif (i = 3) then
												SE3(8 downto 0) <= "111111111";
												SP3(31 downto 23) <= SE3(8 downto 0);
												SP3(22) <= '1';
										elsif (i = 4) then
												SE4(6 downto 0) <= "1111111";
												SP4(31 downto 25) <= SE4(6 downto 0);
												SP4(24) <= '1';
										elsif (i = 5) then
												SE5(4 downto 0) <= "11111";
												SP5(31 downto 27) <= SE5(4 downto 0);
												SP5(26) <= '1';
										elsif (i = 6) then
												SE6(2 downto 0) <= "111";
												SP6(31 downto 29) <= SE6(2 downto 0);
												SP6(28) <= '1';
										elsif (i = 7) then
												SE7 <= '1';
												SP7(31) <= SE7;
												SP7(30) <= '1';
										end if;
								end if;
								----This tells us if the partial product was shifted (i.e. a_i+1 a_i a_i-1 are one of these 2 sequences 011 or 100
								
						elsif (shiftFLAG(i)) = '1' then
								if (signs(i)) = '0' then
										if (i = 0) then
												SE0(14 downto 0) <= "000000000000000";
												SP0(31 downto 17) <= SE0(14 downto 0);
										elsif (i = 1) then
												SE1(12 downto 0) <= "0000000000000";
												SP1(31 downto 19) <= SE1(12 downto 0);
										elsif (i = 2) then
												SE2(10 downto 0) <= "00000000000";
												SP2(31 downto 21) <= SE2(10 downto 0);
										elsif (i = 3) then
												SE3(8 downto 0) <= "000000000";
												SP3(31 downto 23) <= SE3(8 downto 0);
										elsif (i = 4) then
												SE4(6 downto 0) <= "0000000";
												SP4(31 downto 25) <= SE4(6 downto 0);
										elsif (i = 5) then
												SE5(4 downto 0) <= "00000";
												SP5(31 downto 27) <= SE5(4 downto 0);
										elsif (i = 6) then
												SE6(2 downto 0) <= "000";
												SP6(31 downto 29) <= SE6(2 downto 0);
										elsif (i = 7) then
												SE7 <= '0';
												SP7(31) <= SE7;
										end if;
								elsif (signs(i)) = '1' then
										if (i = 0) then
												SE0(14 downto 0) <= "111111111111111";
												SP0(31 downto 17) <= SE0(14 downto 0);
										elsif (i = 1) then
												SE1(12 downto 0) <= "1111111111111";
												SP1(31 downto 19) <= SE1(12 downto 0);
										elsif (i = 2) then
												SE2(10 downto 0) <= "11111111111";
												SP2(31 downto 21) <= SE2(10 downto 0);
										elsif (i = 3) then
												SE3(8 downto 0) <= "111111111";
												SP3(31 downto 23) <= SE3(8 downto 0);
										elsif (i = 4) then
												SE4(6 downto 0) <= "1111111";
												SP4(31 downto 25) <= SE4(6 downto 0);
										elsif (i = 5) then
												SE5(4 downto 0) <= "11111";
												SP5(31 downto 27) <= SE5(4 downto 0);
										elsif (i = 6) then
												SE6(2 downto 0) <= "111";
												SP6(31 downto 29) <= SE6(2 downto 0);
										elsif (i = 7) then
												SE7 <= '1';
												SP7(31) <= SE7;
										end if;
								end if;
						end if;
		i := i+1;
				
		twosCompOnes(14) <= shiftFLAG(7);
		end loop;
		twosCompOnes(31 downto 0) <= "00000000000000000000000000000000";
		twosComplements: for j in 0 to 7 loop
				twosCompOnes(2*k) <= signs(k);
				k := k+1;
		end loop;

SP0(16 downto 0) <= pp0(16 downto 0);
SP1(18 downto 2) <= pp1(16 downto 0);
SP1(1 downto 0) <= "00";
SP2(20 downto 4) <= pp2(16 downto 0);
SP2(3 downto 0) <= "0000";
SP3(22 downto 6) <= pp3(16 downto 0);
SP3(5 downto 0) <= "000000";
SP4(24 downto 8) <= pp4(16 downto 0);
SP4(7 downto 0) <= "00000000";
SP5(26 downto 10) <= pp5(16 downto 0);
SP5(9 downto 0) <= "0000000000";
SP6(28 downto 12) <= pp6(16 downto 0);
SP6(11 downto 0) <= "000000000000";
SP7(30 downto 14) <= pp7(16 downto 0);
SP7(13 downto 0) <= "00000000000000";




end process;

--SP0(16 downto 0) <= pp0(16 downto 0);
--SP0(31 downto 17) <= signs(0);
--SP1(18 downto 2) <= pp1(16 downto 0);
--SP2(20 downto 4) <= pp2(16 downto 0);
--SP3(22 downto 6) <= pp3(16 downto 0);
--SP4(24 downto 8) <= pp4(16 downto 0);
--SP5(26 downto 10) <= pp5(16 downto 0);
--SP6(28 downto 12) <= pp6(16 downto 0);
--SP7(30 downto 14) <= pp7(16 downto 0);
P0(31 DOWNTO 0) <= SP0(31 DOWNTO 0);
P1(31 DOWNTO 0) <= SP1(31 DOWNTO 0);
P2(31 DOWNTO 0) <= SP2(31 DOWNTO 0);
P3(31 DOWNTO 0) <= SP3(31 DOWNTO 0);
P4(31 DOWNTO 0) <= SP4(31 DOWNTO 0);
P5(31 DOWNTO 0) <= SP5(31 DOWNTO 0);
P6(31 DOWNTO 0) <= SP6(31 DOWNTO 0);
P7(31 DOWNTO 0) <= SP7(31 DOWNTO 0);
end hybrid;

