LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
ENTITY TN4 IS
 PORT ( SW : IN STD_LOGIC_VECTOR(0 to 2);
			F : OUT STD_LOGIC);
END TN4;
ARCHITECTURE structural of TN4 is
	SIGNAL maxterm : STD_LOGIC_VECTOR (0 to 7);
	COMPONENT decode38
		PORT ( 	x : IN STD_LOGIC_VECTOR(2 downto 0);
					y : OUT STD_LOGIC_VECTOR(0 to 7));
	END COMPONENT;
	COMPONENT nand_4
		PORT (a,b,c,d: IN STD_lOGIC;
			o: OUT STD_lOGIC);
	END COMPONENT;
BEGIN
	Maxterms : decode38 PORT MAP (SW,maxterm);
	Output   : nand_4 PORT MAP (maxterm(0),maxterm(3),maxterm(4),maxterm(7),F);
END structural;