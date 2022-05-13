--=====================================
----Carry ripple adder (TESTBENCH)
--=====================================
library ieee;
use ieee.std_logic_1164.ALL;
 
entity CA_TB IS
end CA_TB;
 
architecture tb_arch OF CA_TB IS 
 
 
    component CA --MISMO NOMBRE DE MI ENTIDAD (PERO DEL DE 4 BITS)
    port(
      a,b: in std_logic_vector(15 downto 0);
	cin: in std_logic;
	s: out std_logic_vector(15 downto 0);
	cout: out std_logic
        );
    end component;
    
--DECALARAR LAS SENALES QUE VOY A UTILIZAR COMO PRUEBA
--VAN A SER LAS MISMAS DE ENTRADA
   signal test_a: std_logic_vector(15 downto 0) :=(others=>'0');
     signal test_b: std_logic_vector(15 downto 0) :=(others=>'0');
 signal test_cin: std_logic:='0';
	  signal test_s: std_logic_vector(15 downto 0):=(others=>'0');
	  signal test_cout: std_logic:='0';
	  
	    
	 
     
   
--AHORA DECLARAR EL COMPONENTE QUE VOY A PROBAR
 
begin
 
	
   uut: CA port map (
          a => test_a,
          b => test_b,
		  cin => test_cin,
          s=> test_s,
		  cout => test_cout
          
        );

process
begin
--ASIGNARLE A LAS SENALES DE ENTRADA UN VALOR 

  	
	

	test_a<= (others=>'0');
	test_b<= (others=>'0');
	test_cin<='0';
	
	
	
    	wait for 200 ns;

	test_a<= (7=>'1', others=>'0');
	test_b<= (others=>'1');
	test_cin<='0';
	
   	
	
    	wait for 200 ns;
        
	test_a<= (others=>'0');
	test_b<= (others=>'0');
	test_cin<='1';
	
	
    	wait for 200 ns;
		
test_a<= (others=>'1');
	test_b<= (others=>'0');
	test_cin<='1';

	
	
    	wait for 200 ns;
		
test_a<= (others=>'1');
	test_b<= (others=>'1');
	test_cin<='1';
	
	
	
    	wait for 200 ns;
   
   end process;
end tb_arch;