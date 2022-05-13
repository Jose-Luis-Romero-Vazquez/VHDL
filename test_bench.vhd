library ieee;
use ieee.std_logic_1164.ALL;
 
entity  test_bench IS
end  test_bench;
 
architecture  tb_arch OF test_bench IS 
 
 
    component rw --MISMO NOMBRE DE MI ENTIDAD (PERO DEL DE 4 BITS)
    port(
        a,b :in std_logic_vector(7 downto 0);
c :out std_logic_vector(7 downto 0)
        );
    end component;
    
--DECALARAR LAS SENALES QUE VOY A UTILIZAR COMO PRUEBA
--VAN A SER LAS MISMAS DE ENTRADA
   signal a : std_logic_vector(7 downto 0) :=(others =>'0');
   signal b : std_logic_vector(7 downto 0) :=(others =>'0');
   signal c : std_logic_vector(7 downto 0) :=(others =>'0');

   
   
--AHORA DECLARAR EL COMPONENTE QUE VOY A PROBAR
 
begin
 
	
   uut: rw port map (
          a => a,
          b =>b,
          c => c
          
        );

process
variable rd_line, wr_line : line;
variable a_tmp, b_tmp: std_logic_vector(7 downto 0);
file vector_file : text open read_mode is "suma.txt";
file out_file: text open write_mode is "result.txt"; 
begin
while not endfile(vector_file) loop
readline(vector_file,rd_line);
read(rd_line, a_tmp);
a <= a_tmp;
read(rd_line, b_tmp);
b <= b_tmp;
wait for 20 ns;
write(wr_line,c);
writeline(out_file,wr_line);
end loop;
wait;
end process;
end tb_arch;
