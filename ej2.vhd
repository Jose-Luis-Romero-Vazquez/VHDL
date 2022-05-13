--=====================================
--ejercicio 2
--=====================================
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ej2 is
	port(
	a: in unsigned(1 downto 0);
	b: in unsigned(1 downto 0); 
	c: in unsigned(1 downto 0);
	x: out unsigned(1 downto 0)
	);
end ej2;

architecture asig_arch of ej2 is

signal y0,y1:unsigned(1 downto 0) ;
signal s: std_logic_vector(2 downto 0);
begin
s<="001" when a>b else
"010" when a>c else
"100"; 

proc1:
process(s)

begin

case s is

when "001" => 
y0 <=a;
y1<=b; 
when "010" =>
y0 <= b;
y1 <= c;
when others =>
y0<=a;
y1<=to_unsigned(1,2);


end case;
end process;
x<=y0+y1;
end asig_arch;