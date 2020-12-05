LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY TN4 IS
	PORT(	D, Clk, Pr, Cl : IN STD_LOGIC;
			Q, Qn : OUT STD_LOGIC);
END TN4;

ARCHITECTURE behavior OF TN4 IS
BEGIN
	process (Clk)
	begin
		if ((not Pr and Cl)='1') then
			Q <= '1';
			Qn <= '0';
		elsif ((Pr and not Cl)='1') then
			Q <= '0';
			Qn <= '1';
		elsif rising_edge(Clk) then
			Q <= D;
			Qn <= not D;
		end if;
		
		if (Pr = '0' and Cl = '0') then
			Q <= '1';
			Qn <= '1';
		end if;
	end process;
END behavior;