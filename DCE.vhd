--=====================================
--DECODIFICADOR 2-4
--=====================================
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DCE is
port (
    s: in std_logic_vector(1 downto 0);
	x: out std_logic_vector(3 downto 0);
	enable: in std_logic
	
	);
end DCE;

architecture Behavioral of DCE is

begin

	x<="0001" when (s="00") and enable ='1' else
		"0010" when (s="01") and enable='1' else
		"0100" when (s="10") and enable='1' else
		"1000" when (s="11") and enable ='1' else
		"0000";
    
end Behavioral;

