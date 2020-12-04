LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;
ENTITY decode38 IS
 PORT ( 	x : IN STD_LOGIC_VECTOR(2 downto 0);
			y : OUT STD_LOGIC_VECTOR(0 to 7));
END decode38;
ARCHITECTURE behavior OF decode38 IS
BEGIN
 PROCESS(x)
	VARIABLE j: integer;
	BEGIN
		j := CONV_INTEGER(x);
		FOR i IN 0 to 7 LOOP
			IF (i = j) THEN
				y(i) <= '0';
			ELSE y(i) <= '1';
			END IF;
		END LOOP;
 END PROCESS;
END architecture;