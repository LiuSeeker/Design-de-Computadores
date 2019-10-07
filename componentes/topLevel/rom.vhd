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
		clk	: in std_logic;
		addr	: in std_logic_vector (ADDR_WIDTH-1 DOWNTO 0);
		q		: out std_logic_vector((DATA_WIDTH -1) downto 0)
	);

end entity;

architecture arch_rom of rom is

	-- Build a 2-D array type for the ROM
	subtype word_t is std_logic_vector((DATA_WIDTH-1) downto 0);
	type memory_t is array(2**ADDR_WIDTH-1 downto 0) of word_t;

	signal content: memory_t;
	attribute ram_init_file : string;
	attribute ram_init_file of content:
		signal is "romteste.mif";

begin

	process(clk)
	begin
	if(rising_edge(clk)) then
		q <= content(to_integer(unsigned(addr)));
	end if;
	end process;

end arch_rom;
