library IEEE;
use ieee.std_logic_1164.all;

entity buffer3state is
	port
	(
		entrada : in std_logic;
		hab     : in std_logic := '1';
		
		output : out std_logic
	);
end buffer3state;

architecture arch_buffer3state of buffer3state is

begin
	
		output <= entrada when (hab = '1');
	
end arch_buffer3state;
