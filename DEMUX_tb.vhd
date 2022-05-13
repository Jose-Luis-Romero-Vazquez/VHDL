--=====================================
----EJERCICIO 10 CON WITH SELECT  (TESTBENCH)
--=====================================
library ieee;
use ieee.std_logic_1164.ALL;
 
entity DEMUX_tb IS
end DEMUX_tb;
 
architecture tb_arch OF DEMUX_tb IS 
 
 
    component DEMUX --MISMO NOMBRE DE MI ENTIDAD (PERO DEL DE 4 BITS)
    port(
       a: in std_logic_vector(23 downto 0);
	s0,s1: in std_logic;
	o1,o2,o3,o4: out std_logic_vector(23 downto 0)
        );
    end component;
    
--DECALARAR LAS SENALES QUE VOY A UTILIZAR COMO PRUEBA
--VAN A SER LAS MISMAS DE ENTRADA
   signal test_a: std_logic_vector(23 downto 0) :=(others=>'0');
     signal test_s0: std_logic:='0';
 signal test_s1: std_logic:='0';
	  signal test_o1: std_logic_vector(1 downto 0):=(others=>'0');
	  signal test_o2: std_logic_vector(1 downto 0):=(others=>'0');
	  signal test_o3: std_logic_vector(1 downto 0):=(others=>'0');
	  signal test_o4: std_logic_vector(1 downto 0):=(others=>'0');
	  
	    
	 
     
   
--AHORA DECLARAR EL COMPONENTE QUE VOY A PROBAR
 
begin
 
	
   uut: DEMUX port map (
          a => test_a,
          s0 => test_s0,
		  s1 => test_s1,
          o1=> test_o1,
		  o2=> test_o2,
		  o3=> test_o3,
		  o4=> test_o4
		  
          
        );

process
begin
--ASIGNARLE A LAS SENALES DE ENTRADA UN VALOR 

  	
	

	test_a<=(2=>'1', others=>'0');
	test_s0<='0';
	test_s1<='0';
	
	
    	wait for 200 ns;

	
   	test_a<=(others=>'1');
	test_s0<='0';
	test_s1<='1';
	
    	wait for 200 ns;
        
	test_a<=(2|1=>0, others=>'1');
	test_s0<='1';
	test_s1<='0';
	
    	wait for 200 ns;

	test_a<=(2|1=>0, others=>'1');
	test_s0<='1';
	test_s1<='1';
	
    	wait for 200 ns;

	test_a<=(2|1=>0, others=>'1');
	test_s0<='0';
	test_s1<='0';
	
    	wait for 200 ns;
   
   end process;
end tb_arch;