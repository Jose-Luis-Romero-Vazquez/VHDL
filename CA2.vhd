library ieee;
use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;

entity CA2 is
	port(
	a,b: in std_logic_vector(15 downto 0);
	cin: in std_logic;
	s: out std_logic_vector(15 downto 0);
	cout: out std_logic
	);
end CA2;

architecture asig_arch of CA2 is

begin
Process(a,b,cin)
variable c: std_logic_vector(16 downto 0);
begin
c(0):=cin;
for i in 0 to 15 loop
s(i)<=a(i) xor b(i) xor c(i);
c(i+1):=(a(i) and b(i)) or (a(i) and c(i) ) or (b(i) and c(i));

end loop;

cout<=c(16);
end process;
	
end asig_arch;