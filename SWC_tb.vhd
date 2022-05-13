--=====================================
--SWITCH 2X2 CON ASIGNACION CONDICIONAL(TESTBENCH)
--=====================================
library ieee;
use ieee.std_logic_1164.ALL;
 
entity SWC_tb IS
end SWC_tb;
 
architecture tb_arch OF SWC_tb IS 
 
 
    component SWC --MISMO NOMBRE DE MI ENTIDAD (PERO DEL DE 4 BITS)
    port(
         x0: in std_logic;
    x1: in std_logic;
    y0: out std_logic;
    y1: out std_logic;
    ctrl: in std_logic_vector(1 downto 0)
        );
    end component;
    
--DECALARAR LAS SENALES QUE VOY A UTILIZAR COMO PRUEBA
--VAN A SER LAS MISMAS DE ENTRADA
   signal test_x0: std_logic :='0';
     signal test_x1: std_logic :='0';
	 signal test_y0: std_logic :='0';
     signal test_y1: std_logic :='0' ;
	 signal test_ctrl : std_logic_vector(1 downto 0):= (others => '0');
   
--AHORA DECLARAR EL COMPONENTE QUE VOY A PROBAR
 
begin
 
	
   uut: SWC port map (
          x0 => test_x0,
          x1 => test_x1,
          y0 => test_y0,
          y1 => test_y1,
          ctrl => test_ctrl
        );

process
begin
--ASIGNARLE A LAS SENALES DE ENTRADA UN VALOR 

  	
     test_x0<='1';
     wait for 200 ns;	
     test_x1<='0';
     wait for 200 ns;
     test_ctrl<="00";
     wait for 200 ns;
    
     test_x0<='1';
     wait for 200 ns;	
     test_x1<='0';
     wait for 200 ns;
     test_ctrl<="01";
     wait for 200 ns;
	 
     test_x0<='1';
     wait for 200 ns;	
     test_x1<='0';
     wait for 200 ns;
     test_ctrl<="10";
     wait for 200 ns;
	 
     test_x0<='1';
     wait for 200 ns;	
     test_x1<='0';
     wait for 200 ns;
     test_ctrl<="11";
     wait for 200 ns;


   
   end process;
end tb_arch;