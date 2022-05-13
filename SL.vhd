--=====================================
--CIRCUITO SHIFT-LEFT (CONDICIONAL)
--=====================================
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SL is
	port(
	a_in: in std_logic_vector(7 downto 0 );
	ctrl: in std_logic_vector(2 downto 0 );
	z: out std_logic_vector(7 downto 0)
	);
end SL;

architecture asig_arch of SL is
BEGIN

z<= a_in when ctrl="000" else
    a_in(6 downto 0)&'0' when ctrl="001" else
     a_in(5 downto 0)&"00" when ctrl="010" else
     a_in(4 downto 0)&"000" when ctrl="011" else
      a_in(3 downto 0)&"0000" when ctrl="100" else
       a_in(2 downto 0)&"00000" when ctrl="101" else
        a_in(1 downto 0)&"000000" when ctrl="110" else
	a_in(0)&"0000000";

end asig_arch;
