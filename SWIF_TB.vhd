--=====================================
--SWITCH 2X2 CON IF(TESTBENCH)
--=====================================
library ieee;
use ieee.std_logic_1164.all;


----------------------Entidad------------------------------
entity SWIF_TB is  
end SWIF_TB;
-----------------------------------------------------------


---------------------Arquitectura--------------------------
architecture arch_SWIF_TB of SWIF_TB is
   component SWIF               
      port(
		x0,x1  	:in std_logic;
		y0,y1   :out std_logic;
		ctrl    :in std_logic_vector(1 downto 0)

	 );

   end component;
   
   signal TX0: std_logic:='0';
   signal TY0: std_logic:='0';
   signal TX1: std_logic:='0';
   signal TY1: std_logic:='0';
   signal TC: std_logic_vector(1 downto 0);
  
   
   
begin
   
   uut : SWIF					 	
      port map( x0=>TX0, y0=>TY0, x1=>TX1, y1=>TY1,ctrl=>TC);	
   
   process   
   
   begin
      
	 
	  TX0 <= '1';
	  TX1 <= '0';
	  TC  <= "00";
	  
	  
	  wait for 200 ns;
	  
	  TX0 <= '0';
	  TX1 <= '1';
	  TC  <= "00";
	  
	  
	  wait for 200 ns;
	  
	  
	  TX0 <= '1';
	  TX1 <= '0';
	  TC  <= "01";
	  
	  
	  wait for 200 ns;
	  
	  
	  TX0 <= '0';
	  TX1 <= '1';
	  TC  <= "01";
	  
	  
	  wait for 200 ns;
	  
   end process;
   
end arch_SWIF_TB;
--------------------------------------------------------------------
--------------------------------------------------------------------