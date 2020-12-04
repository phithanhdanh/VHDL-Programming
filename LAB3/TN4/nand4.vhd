LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY nand4 IS 
	PORT (a,b,c,d: IN STD_lOGIC;
			o: OUT STD_lOGIC);
END nand4;
ARCHITECTURE dataflow OF nand4 IS
BEGIN
	o <= not(a and b and c and d);
END dataflow;