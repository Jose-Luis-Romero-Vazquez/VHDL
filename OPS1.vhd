--=====================================
--EJERCICIO 10 CON WITH SELECT 
--=====================================
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity OPS1 is
	port(
	op: in std_logic_vector(1 downto 0);
	a: in std_logic_vector(1 downto 0);
	b: in std_logic_vector(1 downto 0);
	y: out std_logic_vector(1 downto 0)
	);
end OPS1;

architecture asig_arch of OPS1 is
signal t1:std_logic_vector(1 downto 0);
signal t2:std_logic_vector(1 downto 0);
signal t3:std_logic_vector(1 downto 0);
signal t4:std_logic_vector(1 downto 0);
signal s1:std_logic;
signal s:std_logic_vector(2 downto 0);

	begin
t1<=std_logic_vector((signed(a))-1);
t2<=std_logic_vector((signed(a))+1);
t3<=std_logic_vector((signed(a))+signed(b));
t4<="00";


s1<='1' when a>t4 else '0';
s<= op&s1;  
	
	with s select
	
	y <= "00" when "001"|"000",
		 t1 when "011",
		 t2 when "010",
		 t3 when others;
	
end asig_arch;