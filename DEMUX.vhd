--=====================================
--Carry ripple adder
--=====================================
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DEMUX is
	port(
	a: in std_logic_vector(23 downto 0);
	s0,s1: in std_logic;--_vector(23 downto 0);
	o1,o2,o3,o4: out std_logic_vector(23 downto 0)
	);
end DEMUX;

architecture asig_arch of DEMUX is
--signal x1:std_logic_vector(1 downto 0);
begin
process(a,s0,s1)

variable x1,x2: std_logic_vector(23 downto 0);
variable f1,f2,f3,f4: std_logic_vector(23  downto 0);

begin
x1:= not s0;
x2:= not s1;


--f1:= a and x1 and x2;
--f2:= a and s0 and s1;
--f3:= a and x1 and s1;
--f4:= a and s1 and s0;

for i in 24 downto 0 loop
o1(i)<= a(i) and x1(i) and x2(i);
o2(i)<=a(i) and s0(i) and s1(i);
o3(i)<=a(i) and x1(i) and s1(i);
o4(i)<=a(i) and s1(i) and s0(i);

end loop;


--o1<=f1;
--o2<=f2;
--o3<=f3;
--o4<=f4;

end process;
	
end asig_arch;