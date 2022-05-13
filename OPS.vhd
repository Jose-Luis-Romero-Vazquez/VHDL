--=====================================
--EJERCICIO 10 CON WITH SELECT 
--=====================================
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity OPS is
	port(
	op: in std_logic_vector(1 downto 0);
	a: in std_logic_vector(1 downto 0);
	b: in std_logic_vector(1 downto 0);
	y: out std_logic_vector(1 downto 0)
	);
end OPS;

architecture asig_arch of OPS is
signal t1:std_logic_vector(1 downto 0);
signal t2:std_logic_vector(1 downto 0);
signal t3:std_logic_vector(1 downto 0);
signal t4:std_logic_vector(1 downto 0);
signal s:std_logic_vector(1 downto 0);

	begin
t1<=std_logic_vector((signed(a))-1);
t2<=std_logic_vector((signed(a))+1);
t3<=std_logic_vector((signed(a))+signed(b));
t4<="00";
s(0)<='1' when a>t4 else '0';
s(1)<='1' when op="00" else '0';  
	
	with s select
	
	y <= "00" when "10"|"11",
		 t1 when "01",
		 t2 when "00",
		 t3 when others;
	
end asig_arch;