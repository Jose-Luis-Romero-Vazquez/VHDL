--=====================================
--PRBLEMA 5.8 COMPARADOR (USANDO CASE)
--=====================================
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity COMCA is
port (
    a: in std_logic_vector(1 downto 0);
    b: in std_logic_vector(1 downto 0);
	c: in std_logic_vector(1 downto 0);
    y: out std_logic_vector(1 downto 0)
	);
end COMCA;


architecture Behavioral of COMCA is
signal s: std_logic_vector(1 downto 0);
signal t1:std_logic_vector(1 downto 0);
signal t2:std_logic_vector(1 downto 0);
signal t3:std_logic_vector(1 downto 0);
begin

s(0)<= '1' when (a>b) else '0';
s(1)<='0' when (a>c) else '0';
t1<=std_logic_vector((signed(a))-(signed(b)));
t2<=std_logic_vector((signed(a))-(signed(c)));
t3<=std_logic_vector((unsigned(a))+1);
proc1:
process(s)
begin
case s is
   when "10" =>y<=t1;
when "01"=>y<=t2;
when others=>y<=t3;
end case;
end process;
end Behavioral;