--=====================================
--SWITCH 2X2 CON ASIGNACION SIMPLE
--=====================================
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SWCS is
port (
    x0: in std_logic;
    x1: in std_logic;
    y0: out std_logic;
    y1: out std_logic;
    ctrl: in std_logic_vector(1 downto 0)
	);
end SWCS;

architecture Behavioral of SWCS is

begin
with ctrl select
    y1 <=x1 when "00",
		 x0 when "01",
		 x0 when "10",
         	 x1 when others;
			 
with ctrl select
			
    y0 <= x0 when "00",
		 x1 when "01",
		 x0 when "10",
         	 x1 when others;

end Behavioral;