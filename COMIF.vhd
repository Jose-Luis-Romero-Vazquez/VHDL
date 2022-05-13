--=====================================
--EJERCICIO 9 CON SOLO 1 IF 
--=====================================
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity COMIF is
	port(
	ctrl: in std_logic_vector(1 downto 0);
	a: in std_logic_vector(1 downto 0);
	b: in std_logic_vector(1 downto 0);
	c: in std_logic_vector(1 downto 0);
	y: out std_logic_vector(1 downto 0)
	);
end COMIF;

architecture asig_arch of COMIF is
signal t3:std_logic_vector(1 downto 0);
signal s: std_logic;
begin
s<= '1' when (a>b) else '0';
t3<=std_logic_vector((signed(a))-(signed(b)));
proc1:
process(ctrl,a,b,c,s)
begin
if(s='1') then
y<=t3;
elsif(ctrl="01") then
y<=c;
else
y<="00";
end if;
end process;
end asig_arch;