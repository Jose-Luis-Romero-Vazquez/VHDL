--=====================================
--DECODIFICADOR CON ASIGNAION SIMPLE ENABLE(TESTBENCH)
--=====================================
library ieee;
use ieee.std_logic_1164.ALL;
 
entity DCES_tb IS
end DCES_tb;
 
architecture tb_arch OF DCES_tb IS 
 
 
    component DCES --MISMO NOMBRE DE MI ENTIDAD (PERO DEL DE 4 BITS)
    port(
      s: in std_logic_vector(1 downto 0);
	x: out std_logic_vector(3 downto 0);
	enable: in std_logic
        );
    end component;
    
--DECALARAR LAS SENALES QUE VOY A UTILIZAR COMO PRUEBA
--VAN A SER LAS MISMAS DE ENTRADA
   signal test_s: std_logic_vector(1 downto 0) :="00";
     signal test_x: std_logic_vector (3 downto 0) :="0000";
	 signal test_enable: std_logic :='0';
     
   
--AHORA DECLARAR EL COMPONENTE QUE VOY A PROBAR
 
begin
 
	
   uut: DCES port map (
          s => test_s,
          x => test_x,
          enable => test_enable
          
        );

process
begin
--ASIGNARLE A LAS SENALES DE ENTRADA UN VALOR 

  	
	 test_s<= "00";
     	test_enable<='0';
    	wait for 200 ns;	
	 
	 test_s<= "00";
    	 test_enable<='1';
	 wait for 200 ns;
     
	 test_s<= "01";
     	 test_enable<='1';
	 wait for 200 ns;

	 test_s<= "10";
     	 test_enable<='1';
	 wait for 200 ns;

	 test_s<= "11";
     	 test_enable<='1';
	 wait for 200 ns;

   
   end process;
end tb_arch;