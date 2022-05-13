--=====================================
--SWITCH 2X2 CON ASIGNACION CONDICIONAL
--=====================================
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SWC is
port (
    x0: in std_logic;
    x1: in std_logic;
    y0: out std_logic;
    y1: out std_logic;
    ctrl: in std_logic_vector(1 downto 0)
	);
end SWC;

architecture Behavioral of SWC is

begin
    y1 <=x1 when ctrl ="00" else
		 x0 when ctrl= "01" else
		 x0 when ctrl= "10" else
         	 x1;
			
    y0 <= x0 when ctrl ="00" else
		 x1 when ctrl= "01" else
		 x0 when ctrl= "10" else
         	 x1;

end Behavioral;