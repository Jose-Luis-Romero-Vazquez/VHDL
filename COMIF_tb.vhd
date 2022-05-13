--=====================================
----EJERCICIO 10 CON WITH SELECT  (TESTBENCH)
--=====================================
library ieee;
use ieee.std_logic_1164.ALL;
 
entity COMIF_tb IS
end COMIF_tb;
 
architecture tb_arch OF COMIF_tb IS 
 
 
    component COMIF --MISMO NOMBRE DE MI ENTIDAD (PERO DEL DE 4 BITS)
    port(
       ctrl: in std_logic_vector(1 downto 0);
	a: in std_logic_vector(1 downto 0);
	b: in std_logic_vector(1 downto 0);
	c: in std_logic_vector(1 downto 0);
	y: out std_logic_vector(1 downto 0)
        );
    end component;
    
--DECALARAR LAS SENALES QUE VOY A UTILIZAR COMO PRUEBA
--VAN A SER LAS MISMAS DE ENTRADA
   signal test_ctrl: std_logic_vector(1 downto 0) :="00";
     signal test_a: std_logic_vector(1 downto 0):="00";
 signal test_b: std_logic_vector(1 downto 0):="00";
 signal test_C: std_logic_vector(1 downto 0):="00";
	  signal test_y: std_logic_vector(1 downto 0):="00";
	  
	    
	 
     
   
--AHORA DECLARAR EL COMPONENTE QUE VOY A PROBAR
 
begin
 
	
   uut: COMIF port map (
          a => test_a,
          b => test_b,
		  c => test_c,
	 ctrl => test_ctrl,
          y=> test_y
		  
          
        );

process
begin
--ASIGNARLE A LAS SENALES DE ENTRADA UN VALOR 

  	
	

	test_a<="00";
	test_b<="00";
	test_c<="00";
	test_ctrl<="00";
	
    	wait for 200 ns;

	
   	test_a<="01";
	test_b<="00";
	test_c<="00";
	test_ctrl<="00";
	
    	wait for 200 ns;

	test_a<="11";
	test_b<="01";
	test_c<="01";
	test_ctrl<="00";
	
    	wait for 200 ns;
        
	test_a<="01";
	test_b<="01";
	test_c<="00";
	test_ctrl<="01";
	
    	wait for 200 ns;

	test_a<="00";
	test_b<="01";
	test_c<="01";
	test_ctrl<="00";
	
    	wait for 200 ns;

	test_a<="00";
	test_b<="01";
	test_c<="11";
	test_ctrl<="00";
	
    	wait for 200 ns;
   
   end process;
end tb_arch;