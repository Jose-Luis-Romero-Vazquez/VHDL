--=====================================
--CONVERSION CONDICIONAL->SELECCION
--=====================================
library ieee;
use ieee.std_logic_1164.all;

entity E1 is
	port(
	a, b, e, s,x,y: in std_logic;
	z: out std_logic
	);
end E1;

architecture asig_arch of E1 is
	signal f: std_logic_vector(1 downto 0);
	begin
	f(1) <= '1' when (e='1') else '0';
	f(0) <= '1' when (s='1') else '0';  
	
	with f select
	
	z <= ( a and not (b)) when "10",
		 (x or y) when "11",
		 '0' when others;
	
end asig_arch;
