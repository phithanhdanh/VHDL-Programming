LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;
ENTITY adder4 IS
 PORT ( 	Cin 	: IN STD_LOGIC;
			a, b 	: IN STD_LOGIC_VECTOR(3 downto 0);
			s 		: OUT STD_LOGIC_VECTOR(3 downto 0);
			Cout 	: OUT STD_LOGIC);
END adder4;
ARCHITECTURE Arithmetic OF adder4 IS
 SIGNAL sum : STD_LOGIC_VECTOR(4 downto 0);
BEGIN
sum <= ('0' & a) + b + Cin;
s <= sum (3 downto 0);
Cout <= sum(4) ;
END Arithmetic;