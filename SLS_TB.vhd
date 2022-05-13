 --=====================================
--CIRCUITO SHIFT-LEFT (SELECCION)
--=====================================
library ieee;
use ieee.std_logic_1164.ALL;
 
entity SLS_TB IS
end SLS_TB;
 
architecture tb_arch OF SLS_TB IS 
 
 
    component SLS --MISMO NOMBRE DE MI ENTIDAD (PERO DEL DE 4 BITS)
    port(
      a_in: in std_logic_vector(7 downto 0 );
	ctrl: in std_logic_vector(2 downto 0 );
	z: out std_logic_vector(7 downto 0)
        );
    end component;
    
--DECALARAR LAS SENALES QUE VOY A UTILIZAR COMO PRUEBA
--VAN A SER LAS MISMAS DE ENTRADA
   signal test_a_in: std_logic_vector(7 downto 0) :="00000000";
    signal test_ctrl: std_logic_vector(2 downto 0):="000";
	signal test_z: std_logic_vector(7 downto 0):="00000000";

	 
     
   
--AHORA DECLARAR EL COMPONENTE QUE VOY A PROBAR
 
begin
 
	
   uut: SLS port map (
          a_in => test_a_in,
          ctrl => test_ctrl,
		  z=>test_z
          
        );

process
begin
--ASIGNARLE A LAS SENALES DE ENTRADA UN VALOR 

  	
	test_a_in<= "00000001";
        test_ctrl<="001";

	
    	wait for 200 ns;

	test_a_in<= "00000010";
     test_ctrl<="010";
    	wait for 200 ns;

	test_a_in<= "00000010";
     test_ctrl<="001";
	
    	wait for 200 ns;
	 
   
   end process;
end tb_arch;