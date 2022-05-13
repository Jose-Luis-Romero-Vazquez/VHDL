--=====================================
----CIRCUITO PROCESOS (TESTBENCH)
--=====================================
library ieee;
use ieee.std_logic_1164.ALL;
 
entity CP2_tb IS
end CP2_tb;
 
architecture tb_arch OF CP2_tb IS 
 
 
    component CP2 --MISMO NOMBRE DE MI ENTIDAD (PERO DEL DE 4 BITS)
    port(
      A,B,C,D: in std_logic;
	f: out std_logic
        );
    end component;
    
--DECALARAR LAS SENALES QUE VOY A UTILIZAR COMO PRUEBA
--VAN A SER LAS MISMAS DE ENTRADA
   signal test_A: std_logic :='0';
     signal test_B: std_logic:='0';
	  signal test_C: std_logic:='0';
	   signal test_D: std_logic:='0';
	    signal test_F: std_logic:='0';
	    
	 
     
   
--AHORA DECLARAR EL COMPONENTE QUE VOY A PROBAR
 
begin
 
	
   uut: CP2 port map (
          A => test_A,
          B => test_B,
          C => test_C,
	 D=>test_D,
	 F=>test_F
          
        );

process
begin
--ASIGNARLE A LAS SENALES DE ENTRADA UN VALOR 

  	
	

	test_A<='0';
	test_B<='0';
	test_C<='0';
	test_D<='0';
	
    	wait for 200 ns;

	test_A<='0';
	test_B<='0';
	test_C<='0';
	test_D<='1';
   	
	
    	wait for 200 ns;
        
	test_A<='1';
	test_B<='1';
	test_C<='1';
	test_D<='1';
	
    	wait for 200 ns;
		
	test_A<='0';
	test_B<='0';
	test_C<='0';
	test_D<='1';
    	wait for 200 ns;	
   
   end process;
end tb_arch;