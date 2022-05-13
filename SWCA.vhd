--=====================================
--SWITCH 2X2 CON CASE
--=====================================
library ieee;
use ieee.std_logic_1164.all;

-------------Entidad--------------
entity SWCA is
    port(
		x0,x1  	:in std_logic;
		y0,y1   :out std_logic;
		ctrl    :in std_logic_vector(1 downto 0)

	 );
end SWCA;
----------------------------------

---------------------Arquitectura--------------------------
architecture arch_SWCA of  SWCA is

begin

process (x0,x1,ctrl) 
	
begin
case ctrl is
when "00" =>
y0<=x0;
y1<=x1;

when "01" =>
y0<=x1;
y1<=x0;


when "10" =>
y0<=x0;
y1<=x0;

when others =>
y0<=x1;
y1<=x1;

end case;		
	end process;
end arch_SWCA;
----------------------------------------------------------