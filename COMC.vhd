--=====================================
--PRBLEMA 5.8 COMPARADOR (USANDO CONDICIONAL)
--=====================================
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity COMC is
port (
   a: in std_logic_vector(1 downto 0);
    b: in std_logic_vector(1 downto 0);
	c: in std_logic_vector(1 downto 0);
    y: out std_logic_vector(1 downto 0)
	);
end COMC;

architecture Behavioral of COMC is
signal t1:std_logic_vector(1 downto 0);
signal t2:std_logic_vector(1 downto 0);
signal t3:std_logic_vector(1 downto 0);
begin
t1<=std_logic_vector((signed(a))-(signed(b)));
t2<=std_logic_vector((signed(a))-(signed(c)));
t3<=std_logic_vector((unsigned(a))+1);

    y <=t1 when a>b else
		t2 when a>c else
		 t3;
			

end Behavioral;