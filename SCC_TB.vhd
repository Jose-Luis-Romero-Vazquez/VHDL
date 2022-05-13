--=============================
-- SUMADOR CON ASIGNACION CONDICIONAL (TESTBENCH)
--=============================
library ieee;
use ieee.std_logic_1164.ALL;
 
entity SCC_TB IS
end SCC_TB;
 
architecture tb_arch OF SCC_TB IS 
 
 
    component SCC --MISMO NOMBRE DE MI ENTIDAD (PERO DEL DE 4 BITS)
    port(
         a : IN  std_logic;
         b : IN  std_logic;
         cin : IN  std_logic;
         s : OUT  std_logic;
         cout : OUT  std_logic --AQUI NO HAY PUNTO Y COMA
        );
    end component;
    
--DECALARAR LAS SENALES QUE VOY A UTILIZAR COMO PRUEBA
--VAN A SER LAS MISMAS DE ENTRADA
   signal a : std_logic :='0';
   signal b : std_logic :='0';
   signal cin : std_logic := '0';

   signal s : std_logic :='0';
   signal cout : std_logic :='0';
   
--AHORA DECLARAR EL COMPONENTE QUE VOY A PROBAR
 
begin
 
	
   uut: SCC port map (
          a => A,
          b => B,
          cin => Cin,
          s => S,
          cout => cout
        );

process
begin
--ASIGNARLE A LAS SENALES DE ENTRADA UN VALOR 

  	
     --ASIGNARLE A LAS SENALES DE ENTRADA UN VALOR 
	  a <= '0';
	  b <= '0';
	  cin <= '0';
	  
	--COMO ES CONCURRENTE TODAS SE ASIGNAN AL MISMO TIEMPO
	  wait for 200 ns;
	--VAN A ESTAR DISPONIBLES POR 200 NANOSEGUNDOS
	--LUEGO LAS VUELVO A REPETIR
	  a <= '0';
	  b <= '0';
	  cin <= '1';
	  wait for 200 ns;

	  a <= '0';
	  b <= '1';
	  cin <= '0';
	  wait for 200 ns;
 
         a <= '0';
	  b <= '1';
	  cin <= '1';
	  wait for 200 ns;
	  
	  a <= '1';
	  b <= '0';
	  cin <= '0';
	  wait for 200 ns;
	  
	  a <= '1';
	  b <= '0';
	  cin <= '1';
	  wait for 200 ns;
	  
	  a <= '1';
	  b <= '1';
	  cin <= '0';
	  wait for 200 ns;
	  
	  a <= '1';
	  b <= '1';
	  cin <= '1';
	  wait for 200 ns;


   
   end process;
end tb_arch;