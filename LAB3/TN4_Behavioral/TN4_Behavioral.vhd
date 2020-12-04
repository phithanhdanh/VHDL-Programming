library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity TN4_Behavioral is
	port (	SW: in std_logic_vector (0 to 2);
				LEDR: out std_logic_vector (0 to 0));	
end entity;

architecture behavior of TN4_Behavioral is
signal y: std_logic_vector (0 to 7);
begin	
	process(SW)
		variable k: integer;
	begin
		k := conv_integer(SW);
		for i in 0 to 7 loop
			if (i = k) then
				y(i) <= '0';
			else 
				y(i) <='1';
			end if;
		end loop;
		LEDR(0) <= not (y(0) and y(3) and y(4) and y(7));
	end process;
end behavior;
