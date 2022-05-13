--=============================
-- SUMADOR DE 1 BIT (ASIGNACION CONDICIONAL)
--=============================
library ieee;
use ieee.std_logic_1164.ALL;

--CIRCUITO VHD
entity SCC is
port(
		a,b,cin:in std_logic;
		cout:out std_logic;
		s:out std_logic --AQUI NO HAY PUNTO Y COMA
		);
end SCC;

architecture SCC_arch of SCC is
begin
s<= '1' when (a='0' and b='0' and cin='1') else
	'1' when (a='0' and b='1' and cin='0') else
	'1' when (a='1' and b='0' and cin='0') else
	'1' when (a='1' and b='1' and cin='1') else
	'0';
cout<= 
	'1' when (a='0' and b='1' and cin='1') else
	'1' when (a='1' and b='0' and cin='1') else
	'1' when (a='1' and b='1' and cin='0') else
	'1' when (a='1' and b='1' and cin='1') else
	'0';
		
end SCC_arch;