--==============================================
-- author: Misael Ortega Guillén
-- conversion
-- 18-octubre-2021
--==============================================

library ieee;
use ieee.std_logic_1164.all;

entity asig is
	port(
	a, b, e, s: in std_logic;
	z: out std_logic
	);
end asig;

architecture asig_arch of asig is
	signal f: std_logic_vector(1 downto 0);
	begin
	f(0) <= e and not(s);
	f(1) <= e and s;  
	
	with f select
	
	z <= ( not(a andb)) when '0',
		 (x or y) when '1',
		 '0' when others;
	
end asig_arch;