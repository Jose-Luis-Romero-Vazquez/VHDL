--=====================================
----Carry ripple adder (TESTBENCH)
--=====================================
library ieee;
use ieee.std_logic_1164.ALL;
 
entity SCF_TB IS
end SCF_TB;
 
architecture tb_arch OF SCF_TB IS 
 
 
    component SCF --MISMO NOMBRE DE MI ENTIDAD (PERO DEL DE 4 BITS)
    port(
     a, b : in std_logic_vector( 15 downto 0);
c_in : in std_logic;
s : out std_logic_vector( 15 downto 0);
c_out : out std_logic
        );
    end component;
    
--DECALARAR LAS SENALES QUE VOY A UTILIZAR COMO PRUEBA
--VAN A SER LAS MISMAS DE ENTRADA
   signal test_a: std_logic_vector(15 downto 0) :=(others=>'0');
     signal test_b: std_logic_vector(15 downto 0) :=(others=>'0');
 signal test_c_in: std_logic:='0';
	  signal test_s: std_logic_vector(15 downto 0):=(others=>'0');
	  signal test_c_out: std_logic:='0';
	  
	    
	 
     
   
--AHORA DECLARAR EL COMPONENTE QUE VOY A PROBAR
 
begin
 
	
   uut: SCF port map (
          a => test_a,
          b => test_b,
		  c_in => test_c_in,
          s=> test_s,
		  c_out => test_c_out
          
        );

process
begin
--ASIGNARLE A LAS SENALES DE ENTRADA UN VALOR 

  	
	

	test_a<= (others=>'0');
	test_b<= (others=>'0');
	test_c_in<='0';
	
	
	
    	wait for 200 ns;

	test_a<= (2=>'1', others=>'0');
	test_b<= (2=>'1', others=>'0');
	test_c_in<='0';
	
   	
	
    	wait for 200 ns;
        
	test_a<= (others=>'0');
	test_b<= (others=>'0');
	test_c_in<='1';
	
	
    	wait for 200 ns;
		
test_a<= (others=>'1');
	test_b<= (others=>'0');
	test_c_in<='1';

	
	
    	wait for 200 ns;
		
test_a<= (others=>'1');
	test_b<= (others=>'1');
	test_c_in<='1';
	
	
	
    	wait for 200 ns;
   
   end process;
end tb_arch;