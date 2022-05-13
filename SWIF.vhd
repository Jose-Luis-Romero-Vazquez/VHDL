--=====================================
--SWITCH 2X2 CON IF
--=====================================
library ieee;
use ieee.std_logic_1164.all;

-------------Entidad--------------
entity SWIF is
    port(
		x0,x1  	:in std_logic;
		y0,y1   :out std_logic;
		ctrl    :in std_logic_vector(1 downto 0)

	 );
end SWIF;
----------------------------------

---------------------Arquitectura--------------------------
architecture arch_SWIF of  SWIF is

begin

process (x0,x1,ctrl) 
	
begin
	if (ctrl="00") then 
		y0<=x0;
		y1<=x1;
	
	elsif (ctrl="01") then 
		y0<=x1;
		y1<=x0;
	
	elsif (ctrl="10") then 
		y0<=x0;
		y1<=x0;
	else 
		y0<=x1;
		y1<=x1;
end if;
		
		
	end process;
end arch_sw;
----------------------------------------------------------