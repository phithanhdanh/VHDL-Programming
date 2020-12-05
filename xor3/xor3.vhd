LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY xor3 IS
 PORT ( a, b, c : IN STD_LOGIC;
 result : OUT STD_LOGIC);
END xor3;
ARCHITECTURE structural OF xor3 IS
 SIGNAL u1_out: STD_LOGIC;
 COMPONENT xor2
 PORT ( i1, i2 : IN STD_LOGIC;
 y : OUT STD_LOGIC );
 END COMPONENT;
BEGIN
u1: xor2 PORT MAP ( a, b, u1_out);
u2: xor2 PORT MAP ( u1_out, c,result);
END structural;