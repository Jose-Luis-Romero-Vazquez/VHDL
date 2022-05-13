--=====================================
--Carry ripple adder
--=====================================
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity DEMUX1 is
	port(
	a: in std_logic_vector(23 downto 0);
	s: in std_logic_vector(1 downto 0);
	o1,o2,o3,o4: out std_logic_vector(23 downto 0)
	);
end DEMUX1;

architecture asig_arch of DEMUX1 is
begin
process(a,s)
begin

o1<=(others=>'0');
o2<=(others=>'0');
o3<=(others=>'0');
o4<=(others=>'0');

if(s="00") then
o1<=a;
end if;

if (s="01") then
o2<=a;
end if;

if (s="10") then
o3<=a;
end if; 

if(s="11") then
o4<= a;
end if;

end process;
	
end asig_arch;