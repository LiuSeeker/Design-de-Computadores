library IEEE;
use ieee.std_logic_1164.all;

entity buffer3state is
	generic
	(
		DATA_WIDTH : natural := 4
	);
	port
	(
		entrada : in std_logic_vector((DATA_WIDTH-1) downto 0);
		hab : in std_logic := '1';
		
		output : out std_logic_vector((DATA_WIDTH-1) downto 0)
	);
end buffer3state;

architecture arch_buffer3state of buffer3state is

begin
	
		output <= entrada when (hab = '1');
	
end arch_buffer3state;
