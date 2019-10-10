library IEEE;
use ieee.std_logic_1164.all;

entity buffer3state4bit is
	port
	(
		entrada : in std_logic_vector(3 downto 0);
		hab     : in std_logic := '1';
		
		output : out std_logic_vector(3 downto 0)
	);
end buffer3state4bit;

architecture arch_buffer3state of buffer3state4bit is

begin
	
		output <= entrada when (hab = '1') else "ZZZZ";
	
end arch_buffer3state;
