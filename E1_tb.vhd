--=====================================
--CONVERSION CONDICIONAL->SELECCION (TESTBENCH)
--=====================================
library ieee;
use ieee.std_logic_1164.ALL;
 
entity E1_tb IS
end E1_tb;
 
architecture tb_arch OF E1_tb IS 
 
 
    component E1 --MISMO NOMBRE DE MI ENTIDAD (PERO DEL DE 4 BITS)
    port(
      a, b, e, s,x,y: in std_logic;
	z: out std_logic
        );
    end component;
    
--DECALARAR LAS SENALES QUE VOY A UTILIZAR COMO PRUEBA
--VAN A SER LAS MISMAS DE ENTRADA
   signal test_a: std_logic :='0';
     signal test_b: std_logic:='0';
	  signal test_e: std_logic:='0';
	   signal test_s: std_logic:='0';
	    signal test_z: std_logic:='0';
signal test_x: std_logic:='0';
signal test_y: std_logic:='0';
	 
     
   
--AHORA DECLARAR EL COMPONENTE QUE VOY A PROBAR
 
begin
 
	
   uut: E1 port map (
          a => test_a,
          b => test_b,
          e => test_e,
		  x=>test_x,
          y=>test_y,
		  s=>test_s,
		  z=>test_z
          
        );

process
begin
--ASIGNARLE A LAS SENALES DE ENTRADA UN VALOR 

  	
	test_a<= '0';
        test_b<='0';

	test_y<='0';
	test_x<='0';

	test_e<='0';
	test_s<='0';
    	wait for 200 ns;

	test_a<= '1';
        test_b<='0';
        
   	test_y<='0';
	test_x<='0';

	test_e<='1';
	test_s<='0';
    	wait for 200 ns;

	test_a<= '1';
        test_b<='0';
        
	test_y<='1';
	test_x<='1';

	test_e<='1';
	test_s<='1';
    	wait for 200 ns;


	test_a<= '0';
        test_b<='0';
        test_e<='0';
	test_y<='0';
	test_x<='0';
	test_s<='1';
    	wait for 200 ns;	

	test_a<= '0';
        test_b<='1';
        test_e<='1';
	test_y<='0';
	test_x<='0';
	test_s<='1';
    	wait for 200 ns;	
	 
   
   end process;
end tb_arch;