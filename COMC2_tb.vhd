--=====================================
--PRBLEMA 5.8 COMPARADOR (USANDO CONDICIONAL) (TESTBENCH)
--=====================================
library ieee;
use ieee.std_logic_1164.ALL;
 
entity COMC2_tb IS
end COMC2_tb;
 
architecture tb_arch OF COMC2_tb IS 
 
 
    component COMC2 --MISMO NOMBRE DE MI ENTIDAD (PERO DEL DE 4 BITS)
    port(
       a: in std_logic_vector(1 downto 0);
    b: in std_logic_vector(1 downto 0);
	c: in std_logic_vector(1 downto 0);
    y: out std_logic_vector(1 downto 0)
        );
    end component;
    
--DECALARAR LAS SENALES QUE VOY A UTILIZAR COMO PRUEBA
--VAN A SER LAS MISMAS DE ENTRADA
   signal test_a: std_logic_vector(1 downto 0) :="00";
     signal test_b: std_logic_vector(1 downto 0):="00";
 signal test_c: std_logic_vector(1 downto 0):="00";
	  signal test_y: std_logic_vector(1 downto 0):="00";
	  
	    
	 
     
   
--AHORA DECLARAR EL COMPONENTE QUE VOY A PROBAR
 
begin
 
	
   uut: COMC2 port map (
          a => test_a,
          b => test_b,
	 c => test_c,
          y=> test_y
		  
          
        );

process
begin
--ASIGNARLE A LAS SENALES DE ENTRADA UN VALOR 

  	
	

	test_a<="00";
	test_b<="00";
	test_c<="00";
	
	
    	wait for 200 ns;

	
   	test_a<="01";
	test_b<="00";
	test_c<="00";
	
    	wait for 200 ns;
        
	test_a<="01";
	test_b<="01";
	test_c<="01";
	
    	wait for 200 ns;
   
   end process;
end tb_arch;