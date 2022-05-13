--=====================================
--CIRCUITO SHIFT-LEFT (POR SELECCION)
--=====================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SLS is
	port(
	a_in: in std_logic_vector(7 downto 0 );
	ctrl: in std_logic_vector(2 downto 0 );
	z: out std_logic_vector(7 downto 0)
	);
end SLS;

architecture asig_arch of SLS is
BEGIN
with ctrl select

z<= a_in when "000",
    a_in(6 downto 0)&'0' when "001",
     a_in(5 downto 0)&"00" when "010",
     a_in(4 downto 0)&"000" when "011",
      a_in(3 downto 0)&"0000" when "100",
       a_in(2 downto 0)&"00000" when "101",
        a_in(1 downto 0)&"000000" when "110",
	a_in(0)&"0000000" when others;

end asig_arch;
