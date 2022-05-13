library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_textio.all;
library STD;
use STD.textio.all;
entity rw is
end rw;
architecture test_bench of rw is
component adder
port(
a,b :in std_logic_vector(7 downto 0);
c :out std_logic_vector(7 downto 0)
);
end component;
signal a, b, c : std_logic_vector(7 downto 0);
begin
unit1:adder
port map(a => a, b => b, c => c );

process
variable rd_line, wr_line : line;
variable a_tmp, b_tmp: std_logic_vector(7 downto 0);
file vector_file : text open read_mode is "C:/Users/HP/Documents/5to Electronica Digital Avanzada/Unidad3/TAREA PROCESAMIENTO/suma.txt";
file out_file: text open write_mode is "C:/Users/HP/Documents/5to Electronica Digital Avanzada/Unidad3/TAREA PROCESAMIENTO/result.txt"; 
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
end test_bench;
