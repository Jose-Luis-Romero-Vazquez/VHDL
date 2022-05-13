library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;
entity adder is
port (a, b : in std_logic_vector(7 downto 0);
c : out std_logic_vector(7 downto 0)
);
end adder;
architecture rtl of adder is
begin
c <= std_logic_vector( signed(a) + signed(b) );
end rtl;
