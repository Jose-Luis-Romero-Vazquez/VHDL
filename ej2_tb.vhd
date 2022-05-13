--=====================================
----EJERCICIO 10 CON WITH SELECT  (TESTBENCH)
--=====================================
library ieee;
use ieee.std_logic_1164.ALL;
 use ieee.numeric_std.all;

entity ej2_tb IS
end ej2_tb;
 
architecture tb_arch OF ej2_tb IS 
 
 
    component ej2 --MISMO NOMBRE DE MI ENTIDAD (PERO DEL DE 4 BITS)
    port(
       a: in unsigned(1 downto 0);--std_logic;
	b: in unsigned(1 downto 0); --std_logic;
	c: in unsigned(1 downto 0);--std_logic;
	--s: in std_logic_vector(2 downto 0);
	x: out unsigned(1 downto 0)--std_logic_vector(1 downto 0)
	--y: out std_logic_vector(1 downto 0);
        );
    end component;
    
--DECALARAR LAS SENALES QUE VOY A UTILIZAR COMO PRUEBA
--VAN A SER LAS MISMAS DE ENTRADA
   signal test_a: unsigned(1 downto 0) :="00";
     signal test_b: unsigned(1 downto 0):="00";
 signal test_c: unsigned(1 downto 0):="00";
 --signal test_s: unsigned(1 downto 0):="000";
	  signal test_x: unsigned(1 downto 0):="00";
	  
	    
	 
     
   
--AHORA DECLARAR EL COMPONENTE QUE VOY A PROBAR
 
begin
 
	
   uut: ej2 port map (
          a => test_a,
          b => test_b,
		c => test_c,
          x=> test_x
		  
          
        );

process
begin
--ASIGNARLE A LAS SENALES DE ENTRADA UN VALOR 

  	
	

	test_a<="01";
	test_b<="00";
	test_c<="01";
	
	
    	wait for 200 ns;

	
   	test_a<="11";
	test_b<="10";
	test_c<="11";
	
    	wait for 200 ns;
        
	test_a<="01";
	test_b<="01";
	test_c<="10";
	
    	wait for 200 ns;

	test_a<="00";
	test_b<="01";
	test_c<="00";
	
    	wait for 200 ns;

   
   end process;
end tb_arch;