--=====================================
----CIRCUITO PROCESOS (TESTBENCH)
--=====================================
library ieee;
use ieee.std_logic_1164.ALL;
 
entity CP1_tb IS
end CP1_tb;
 
architecture tb_arch OF CP1_tb IS 
 
 
    component CP1 --MISMO NOMBRE DE MI ENTIDAD (PERO DEL DE 4 BITS)
    port(
      x,y,z: in std_logic;
	f: out std_logic
        );
    end component;
    
--DECALARAR LAS SENALES QUE VOY A UTILIZAR COMO PRUEBA
--VAN A SER LAS MISMAS DE ENTRADA
   signal test_x: std_logic :='0';
     signal test_y: std_logic:='0';
	  signal test_z: std_logic:='0';
	   signal test_f: std_logic:='0';
	    
	 
     
   
--AHORA DECLARAR EL COMPONENTE QUE VOY A PROBAR
 
begin
 
	
   uut: CP1 port map (
          x => test_x,
          y => test_y,
          z => test_z,
		  f=>test_f
          
        );

process
begin
--ASIGNARLE A LAS SENALES DE ENTRADA UN VALOR 

  	
	

	test_y<='0';
	test_x<='0';
	test_z<='0';
	
    	wait for 200 ns;

	
   	test_y<='0';
	test_x<='0';
	test_z<='1';
	
    	wait for 200 ns;
        
	test_y<='1';
	test_x<='1';
	test_z<='1';
	
    	wait for 200 ns;
		
	test_y<='0';
	test_x<='0';
	test_z<='1';
    	wait for 200 ns;	
   
   end process;
end tb_arch;