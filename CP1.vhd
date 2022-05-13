--=====================================
--CIRCUITO PROCESOS
--=====================================
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CP1 is
	port(
	x,y,z: in std_logic;
	f: out std_logic
	);
end CP1;

architecture asig_arch of CP1 is
BEGIN

process(x,y,z)

variable x2,y2,z2,z3,f1: std_logic;

begin
x2:= x or y;
y2:= y xor z;
z2:= not x;
z3:= y2 or z2;
f1:= z3 xor x2;

f<=f1;

end process;

end asig_arch;
