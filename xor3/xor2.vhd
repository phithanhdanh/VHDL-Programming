LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY xor2 IS
 PORT ( i1, i2: IN STD_LOGIC;
 y : OUT STD_LOGIC);
END xor2;
ARCHITECTURE model OF xor2 IS
 BEGIN
	y <= i1 xor i2;
 END model;