library IEEE;
use ieee.std_logic_1164.all;

entity SCF is

port( 
a, b : in std_logic_vector( 15 downto 0);
c_in : in std_logic;
s : out std_logic_vector( 15 downto 0);
c_out : out std_logic
);

end SCF;

architecture asig_arch of SCF is

begin

process(a, b, c_in)

variable c : std_logic_vector( 16 downto 0 );
variable t1 : std_logic_vector( 15 downto 0 );
variable t2 : std_logic_vector( 15 downto 0 );

begin
c(0) := c_in;

for i in 0 to 15 loop

t1(i):=a(i) xor b(i);
t2(i):=a(i) and b(i);
s(i)<= t1(i) xor c(i);
c(i+1):=t2(i) or (c(i) and t1(i));
end loop;
c_out <= c(16);
end process;
end asig_arch;