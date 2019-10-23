-- Quartus Prime VHDL Template
-- Single port RAM with single read/write address 

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.ALL;

entity ram_1k is

	generic 
	(
		DATA_WIDTH : natural := 8;
		ADDR_WIDTH : natural := 10
	);

	port 
	(
		clk	: in std_logic;
		addr	: in std_logic_vector((ADDR_WIDTH-1) DOWNTO 0);
		data	: in std_logic_vector((DATA_WIDTH-1) downto 0);
		we		: in std_logic := '1';
		cs    : in std_logic;
		q		: out std_logic_vector((DATA_WIDTH -1) downto 0)
	);

end entity;

architecture arch_ram_1k of ram_1k is

subtype byte_t is std_logic_vector((DATA_WIDTH-1) DOWNTO 0);
type memory_t is array(0 TO 2**ADDR_WIDTH-1) of byte_t;

signal ram : memory_t;
signal addr_reg : memory_t;

begin

	process(clk)
	begin
	if(rising_edge(clk)) then
		if(cs = '1') then
			if(we = '1') then
				ram(to_integer(unsigned(addr))) <= data;
			end if;
		end if;
	end if;
	
	if(cs = '1') then
		q <= ram(to_integer(unsigned(addr)));
	else
		q <= (OTHERS => 'Z');
	end if;
	
	end process;

end arch_ram_1k;
