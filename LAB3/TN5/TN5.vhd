library ieee;
use ieee.std_logic_1164.all;
entity TN5 is
	port(	SW: in std_logic_vector (7 downto 0);
			LEDR: out std_logic_vector(3 downto 0));
end TN5;
architecture structural of TN5 is
signal nho: std_logic;
component adder4
	PORT ( Cin 	: IN STD_LOGIC;
			a, b 	: IN STD_LOGIC_VECTOR(3 downto 0);
			s 		: OUT STD_LOGIC_VECTOR(3 downto 0);
			Cout 	: OUT STD_LOGIC);
	END component;
begin
	subtract: adder4 port map ('1',SW(3 downto 0), not SW(7 downto 4), LEDR, nho );
end structural;