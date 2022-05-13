--=====================================
--CIRCUITO PROCESOS 2
--=====================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CP2 is
	port(
	A,B,C,D: in std_logic;
	f: out std_logic
	);
end CP2;

architecture asig_arch of CP2 is
BEGIN

process(A,B,C,D)

variable P1,P2,P3,P4,P5: std_logic;

begin
P1:= A AND B;
P2:= NOT C;
P3:= P1 OR P2;
P4:= P3 AND D;
P5:= NOT P4;

f<=P5;

end process;

end asig_arch;