LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY TN5 IS
	PORT(	J,K, Clk, Pr, Cl : IN STD_LOGIC;
			Q, Qn : OUT STD_LOGIC);
END TN5;

ARCHITECTURE behavior OF TN5 IS
signal Qt, Qp: std_logic;
BEGIN
	process (Clk)
	begin			
		if ((not Pr and Cl) = '1') then 
			Qp <= '1';
		elsif ((Pr and not Cl) = '1') then
			Qp <= '0';
		else
			if falling_edge(Clk) then
				Qp <= (J and not Qt) or (not K and Qt);
				Qt <= Qp;
			end if;
		end if;		
			Q  <= Qp;
			Qn <= not Qp;
			
		if ((not Pr and not Cl) = '1') then
			Q <= '1';
			Qn <= '1';
			Qt <= '1';
		end if;	
	end process;
END behavior;