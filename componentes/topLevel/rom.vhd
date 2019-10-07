-- Quartus Prime VHDL Template
-- Single-Port ROM

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rom is

	generic 
	(
		DATA_WIDTH : natural := 16;
		ADDR_WIDTH : natural := 8
	);

	port 
	(
		addr	: in std_logic_vector (ADDR_WIDTH-1 DOWNTO 0);
		q		: out std_logic_vector((DATA_WIDTH -1) downto 0)
	);

end entity;

architecture arch_rom of rom is

type memory_t is array (2**ADDR_WIDTH -1 downto 0) of std_logic_vector (DATA_WIDTH-1 downto 0);
signal content: memory_t;
attribute ram_init_file : string;
attribute ram_init_file of content:
signal is "romtest.mif";

begin

		q <= content(to_integer(unsigned(addr)));

end arch_rom;
